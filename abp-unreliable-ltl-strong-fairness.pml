#define	N	2 /* dimension of channels */
#define	MAX	2 /* Send integers modulo MAX */

mtype = { MSG, ACK, ERROR };

chan fromS = [N] of { mtype, byte, bit };	/* From S to unreliable channel */
chan toR = [N] of { mtype, byte, bit };   	/* From unreliable channel to R */
chan fromR = [N] of { mtype, bit };       	/* From R to unreliable channel */
chan toS = [N] of { mtype, bit };		/* From unreliable channel to s */

byte last_m = MAX-1;		/* data of last error-free message, for verification */
/* Local variables of receiver. Made global for LTL verification */
bit r_recvbit;	/* alternation bit received */
bit last_recvbit = 1;		/* receive bit of last error-free message */
bit s_sendbit; 	/* alternation bit transmitted */
bit s_recvbit;	/* alternation bit received */


ltl msg_zero { ([]<>(s_sendbit == 0) && []<>(s_sendbit == 1)) -> <>(last_m == 0) };
//ltl msg_one { ([]<>(s_sendbit == 0) && []<>(s_sendbit == 1)) -> <>(last_m == 1) };
//ltl infinitelyoftenone { ([]<>(s_sendbit == 0) && []<>(s_sendbit == 1)) -> []<>(last_m == 1) };

proctype Sender(chan in,out) {
  byte m;      	/* message data */

  out ! MSG(m,s_sendbit) ->	/* Send current message */
  do
  :: in ? ACK(s_recvbit);		/* Await response */
     if
     :: s_recvbit == s_sendbit ->	/* Successful transmission */
	    s_sendbit = 1-s_sendbit;	/* Toggle bit */
        m = (m+1)%MAX		/* Get new message */
     :: else ->
        skip		       	/* Transmission error, don't get new msg */
     fi;
     out ! MSG(m,s_sendbit) ->	/* Send message (either old or new) */
  :: in ? ERROR(s_recvbit) ->	/* Receive error */
     out ! MSG(m,s_sendbit)	/* Send again */
  od;
}

proctype Receiver(chan in,out) {
  byte m;			/* message data received */

  do
  :: in ? MSG(m, r_recvbit) -> 	       	/* Message received successfully */
     out ! ACK(r_recvbit);			/* Send acknowledgement with received bit */
     if
     :: (r_recvbit == last_recvbit) ->	/* bit is not alternating, old message */
        skip				/* don't accept message */
     :: (r_recvbit != last_recvbit) -> 	/* bit is alternating; accept message */
        printf("ACCEPT %d\n", m);
	    assert(m == (last_m+1)%MAX);	/* check that we accept only correct messages */
        last_recvbit = r_recvbit;		/* store alternating bit */
        last_m = m			/* store m */
     fi
  :: in ? ERROR(m, r_recvbit) ->		/* Receive error */
     out ! ACK(last_recvbit)		/* Send ack with old bit */
  od;
}

proctype unreliable_channel_bit(chan in, out) {
  bit b;  /* Bit received from input */

  do
  :: in ? ACK(b) ->  	/* Receive ack along input channel */
     if
     ::out ! ACK(b); 	/* Correct transmission */
     ::out ! ERROR(0);	/* Corrupted */
     fi
  od
}

proctype unreliable_channel_data(chan in, out) {
  byte d;		/* Data received from input */
  bit b;		/* Bit received from input */

  do
  :: in ? MSG(d,b) -> 	/* Receive transmission along input channel */
     if
     ::out ! MSG(d,b); 	/* Correct transmission */
     ::out ! ERROR(0,0);	/* Corrupted */
     fi
  od
}

init {
  run Sender(toS, fromS);
  run Receiver(toR, fromR);
  run unreliable_channel_bit(fromR, toS);
  run unreliable_channel_data(fromS, toR);
}
/*
In the msg_one LTL property, it simply states that eventually last_m becomes 1. However, without additional constraints, this property might not hold in cases where there's a lack of fairness or some other loop/cycle preventing last_m from becoming 1. This could lead to counterexamples that do not satisfy the property.

On the other hand, in the msg_zero LTL property with the additional constraint ([]<>(s_sendbit == 0) && []<>(s_sendbit == 1)), it ensures that s_sendbit alternates between 0 and 1 infinitely often. This introduces fairness, making sure that each possible value of s_sendbit is eventually encountered. With this fairness constraint, it's more likely that the property <>(last_m == 0) will eventually hold, as the fairness ensures that s_sendbit oscillates between 0 and 1, allowing the system to progress and eventually satisfy the property.

So, in essence, by introducing fairness into the property specification, you're mitigating potential unfairness-related counterexamples and ensuring that the property is more robust and realistic.

If the property does not hold, the tool will report, e.g., pan:1: acceptance cyle (at depth 24).
It also indicates that a counterexample has been stored.
*/
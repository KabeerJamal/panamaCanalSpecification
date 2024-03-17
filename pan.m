#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* PROC :init: */
	case 3: // STATE 1 - lock_env.pml:277 - [(run main_control())] (0:0:0 - 1)
		IfNotBlocked
		reached[4][1] = 1;
		if (!(addproc(II, 1, 2, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - lock_env.pml:281 - [proc = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[4][2] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->proc);
		((P4 *)_this)->proc = 0;
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P4 *)_this)->proc));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - lock_env.pml:283 - [((proc<1))] (10:0:6 - 1)
		IfNotBlocked
		reached[4][3] = 1;
		if (!((((int)((P4 *)_this)->proc)<1)))
			continue;
		/* merge: doors_status.west = 2(10, 4, 10) */
		reached[4][4] = 1;
		(trpt+1)->bup.ovals = grab_ints(6);
		(trpt+1)->bup.ovals[0] = now.doors_status.west;
		now.doors_status.west = 2;
#ifdef VAR_RANGES
		logval("doors_status.west", now.doors_status.west);
#endif
		;
		/* merge: doors_status.east = 2(10, 5, 10) */
		reached[4][5] = 1;
		(trpt+1)->bup.ovals[1] = now.doors_status.east;
		now.doors_status.east = 2;
#ifdef VAR_RANGES
		logval("doors_status.east", now.doors_status.east);
#endif
		;
		/* merge: valve_status.lower = 2(10, 6, 10) */
		reached[4][6] = 1;
		(trpt+1)->bup.ovals[2] = now.valve_status.lower;
		now.valve_status.lower = 2;
#ifdef VAR_RANGES
		logval("valve_status.lower", now.valve_status.lower);
#endif
		;
		/* merge: valve_status.higher = 2(10, 7, 10) */
		reached[4][7] = 1;
		(trpt+1)->bup.ovals[3] = now.valve_status.higher;
		now.valve_status.higher = 2;
#ifdef VAR_RANGES
		logval("valve_status.higher", now.valve_status.higher);
#endif
		;
		/* merge: lock_water_level = 1(10, 8, 10) */
		reached[4][8] = 1;
		(trpt+1)->bup.ovals[4] = lock_water_level;
		lock_water_level = 1;
#ifdef VAR_RANGES
		logval("lock_water_level", lock_water_level);
#endif
		;
		/* merge: lock_is_occupied = 0(10, 9, 10) */
		reached[4][9] = 1;
		(trpt+1)->bup.ovals[5] = ((int)now.lock_is_occupied);
		now.lock_is_occupied = 0;
#ifdef VAR_RANGES
		logval("lock_is_occupied", ((int)now.lock_is_occupied));
#endif
		;
		_m = 3; goto P999; /* 6 */
	case 6: // STATE 10 - lock_env.pml:290 - [(run lock(proc))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][10] = 1;
		if (!(addproc(II, 1, 0, ((int)((P4 *)_this)->proc))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 11 - lock_env.pml:291 - [proc = (proc+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[4][11] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->proc);
		((P4 *)_this)->proc = (((int)((P4 *)_this)->proc)+1);
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P4 *)_this)->proc));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 12 - lock_env.pml:292 - [((proc==1))] (27:0:2 - 1)
		IfNotBlocked
		reached[4][12] = 1;
		if (!((((int)((P4 *)_this)->proc)==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: proc */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P4 *)_this)->proc;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P4 *)_this)->proc = 0;
		/* merge: goto :b7(27, 13, 27) */
		reached[4][13] = 1;
		;
		/* merge: proc = 0(27, 17, 27) */
		reached[4][17] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P4 *)_this)->proc);
		((P4 *)_this)->proc = 0;
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P4 *)_this)->proc));
#endif
		;
		/* merge: .(goto)(0, 28, 27) */
		reached[4][28] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 9: // STATE 17 - lock_env.pml:296 - [proc = 0] (0:27:1 - 3)
		IfNotBlocked
		reached[4][17] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->proc);
		((P4 *)_this)->proc = 0;
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P4 *)_this)->proc));
#endif
		;
		/* merge: .(goto)(0, 28, 27) */
		reached[4][28] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 10: // STATE 18 - lock_env.pml:298 - [((proc==0))] (21:0:2 - 1)
		IfNotBlocked
		reached[4][18] = 1;
		if (!((((int)((P4 *)_this)->proc)==0)))
			continue;
		/* merge: ship_status[proc] = 5(21, 19, 21) */
		reached[4][19] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P4 *)_this)->proc), 1) ];
		now.ship_status[ Index(((P4 *)_this)->proc, 1) ] = 5;
#ifdef VAR_RANGES
		logval("ship_status[:init::proc]", now.ship_status[ Index(((int)((P4 *)_this)->proc), 1) ]);
#endif
		;
		/* merge: ship_pos[proc] = 0(21, 20, 21) */
		reached[4][20] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.ship_pos[ Index(((int)((P4 *)_this)->proc), 1) ]);
		now.ship_pos[ Index(((P4 *)_this)->proc, 1) ] = 0;
#ifdef VAR_RANGES
		logval("ship_pos[:init::proc]", ((int)now.ship_pos[ Index(((int)((P4 *)_this)->proc), 1) ]));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 11: // STATE 21 - lock_env.pml:299 - [(run ship(proc))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][21] = 1;
		if (!(addproc(II, 1, 1, ((int)((P4 *)_this)->proc))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 22 - lock_env.pml:299 - [proc = (proc+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[4][22] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->proc);
		((P4 *)_this)->proc = (((int)((P4 *)_this)->proc)+1);
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P4 *)_this)->proc));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 23 - lock_env.pml:300 - [(((proc>0)&&(proc<1)))] (27:0:1 - 1)
		IfNotBlocked
		reached[4][23] = 1;
		if (!(((((int)((P4 *)_this)->proc)>0)&&(((int)((P4 *)_this)->proc)<1))))
			continue;
		/* merge: proc = (proc+1)(0, 24, 27) */
		reached[4][24] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->proc);
		((P4 *)_this)->proc = (((int)((P4 *)_this)->proc)+1);
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P4 *)_this)->proc));
#endif
		;
		/* merge: .(goto)(0, 28, 27) */
		reached[4][28] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 14: // STATE 25 - lock_env.pml:301 - [((proc==1))] (36:0:2 - 1)
		IfNotBlocked
		reached[4][25] = 1;
		if (!((((int)((P4 *)_this)->proc)==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: proc */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P4 *)_this)->proc;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P4 *)_this)->proc = 0;
		/* merge: goto :b8(36, 26, 36) */
		reached[4][26] = 1;
		;
		/* merge: proc = 0(36, 30, 36) */
		reached[4][30] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P4 *)_this)->proc);
		((P4 *)_this)->proc = 0;
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P4 *)_this)->proc));
#endif
		;
		/* merge: .(goto)(0, 37, 36) */
		reached[4][37] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 15: // STATE 30 - lock_env.pml:305 - [proc = 0] (0:36:1 - 3)
		IfNotBlocked
		reached[4][30] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->proc);
		((P4 *)_this)->proc = 0;
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P4 *)_this)->proc));
#endif
		;
		/* merge: .(goto)(0, 37, 36) */
		reached[4][37] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 16: // STATE 31 - lock_env.pml:307 - [((proc<1))] (36:0:2 - 1)
		IfNotBlocked
		reached[4][31] = 1;
		if (!((((int)((P4 *)_this)->proc)<1)))
			continue;
		/* merge: nr_of_ships_at_pos[ship_pos[proc]] = (nr_of_ships_at_pos[ship_pos[proc]]+1)(36, 32, 36) */
		reached[4][32] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P4 *)_this)->proc), 1) ]), 2) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P4 *)_this)->proc, 1) ], 2) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P4 *)_this)->proc), 1) ]), 2) ])+1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[:init::proc]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P4 *)_this)->proc), 1) ]), 2) ]));
#endif
		;
		/* merge: proc = (proc+1)(36, 33, 36) */
		reached[4][33] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P4 *)_this)->proc);
		((P4 *)_this)->proc = (((int)((P4 *)_this)->proc)+1);
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P4 *)_this)->proc));
#endif
		;
		/* merge: .(goto)(0, 37, 36) */
		reached[4][37] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 17: // STATE 40 - lock_env.pml:311 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[4][40] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC monitor */
	case 18: // STATE 1 - lock_env.pml:268 - [assert(((0<=ship_pos[0])&&(ship_pos[0]<=1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		spin_assert(((0<=((int)now.ship_pos[0]))&&(((int)now.ship_pos[0])<=1)), "((0<=ship_pos[0])&&(ship_pos[0]<=1))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 2 - lock_env.pml:269 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][2] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC main_control */
	case 20: // STATE 1 - lock_env.pml:249 - [request_west?1] (0:0:0 - 1)
		reached[2][1] = 1;
		if (q_zero(now.request_west))
		{	if (boq != now.request_west) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.request_west) == 0) continue;

		XX=1;
		if (1 != qrecv(now.request_west, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.request_west-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.request_west, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.request_west);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.request_west))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 21: // STATE 2 - lock_env.pml:251 - [((doors_status.west==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (!((now.doors_status.west==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 3 - lock_env.pml:252 - [change_doors_pos!2] (0:0:0 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		if (q_full(now.change_doors_pos))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_doors_pos);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_doors_pos, 0, 2, 1);
		if (q_zero(now.change_doors_pos)) { boq = now.change_doors_pos; };
		_m = 2; goto P999; /* 0 */
	case 23: // STATE 4 - lock_env.pml:252 - [doors_pos_changed?1] (0:0:0 - 1)
		reached[2][4] = 1;
		if (q_zero(now.doors_pos_changed))
		{	if (boq != now.doors_pos_changed) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.doors_pos_changed) == 0) continue;

		XX=1;
		if (1 != qrecv(now.doors_pos_changed, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.doors_pos_changed-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.doors_pos_changed, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.doors_pos_changed);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.doors_pos_changed))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 24: // STATE 5 - lock_env.pml:253 - [((doors_status.west==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][5] = 1;
		if (!((now.doors_status.west==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 9 - lock_env.pml:255 - [observed_west[0]?1] (0:0:0 - 3)
		reached[2][9] = 1;
		if (q_zero(now.observed_west[0]))
		{	if (boq != now.observed_west[0]) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.observed_west[0]) == 0) continue;

		XX=1;
		if (1 != qrecv(now.observed_west[0], 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.observed_west[0]-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.observed_west[0], XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.observed_west[0]);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.observed_west[0]))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 26: // STATE 10 - lock_env.pml:256 - [request_east?1] (0:0:0 - 1)
		reached[2][10] = 1;
		if (q_zero(now.request_east))
		{	if (boq != now.request_east) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.request_east) == 0) continue;

		XX=1;
		if (1 != qrecv(now.request_east, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.request_east-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.request_east, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.request_east);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.request_east))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 27: // STATE 11 - lock_env.pml:258 - [((doors_status.east==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][11] = 1;
		if (!((now.doors_status.east==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 12 - lock_env.pml:259 - [change_doors_pos!1] (0:0:0 - 1)
		IfNotBlocked
		reached[2][12] = 1;
		if (q_full(now.change_doors_pos))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_doors_pos);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_doors_pos, 0, 1, 1);
		if (q_zero(now.change_doors_pos)) { boq = now.change_doors_pos; };
		_m = 2; goto P999; /* 0 */
	case 29: // STATE 13 - lock_env.pml:259 - [doors_pos_changed?1] (0:0:0 - 1)
		reached[2][13] = 1;
		if (q_zero(now.doors_pos_changed))
		{	if (boq != now.doors_pos_changed) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.doors_pos_changed) == 0) continue;

		XX=1;
		if (1 != qrecv(now.doors_pos_changed, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.doors_pos_changed-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.doors_pos_changed, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.doors_pos_changed);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.doors_pos_changed))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 30: // STATE 14 - lock_env.pml:260 - [((doors_status.east==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][14] = 1;
		if (!((now.doors_status.east==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 18 - lock_env.pml:262 - [observed_east[0]?1] (0:0:0 - 3)
		reached[2][18] = 1;
		if (q_zero(now.observed_east[0]))
		{	if (boq != now.observed_east[0]) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.observed_east[0]) == 0) continue;

		XX=1;
		if (1 != qrecv(now.observed_east[0], 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.observed_east[0]-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.observed_east[0], XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.observed_east[0]);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.observed_east[0]))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 32: // STATE 22 - lock_env.pml:264 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][22] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC ship */
	case 33: // STATE 1 - lock_env.pml:140 - [(((ship_status[shipid]==3)&&(ship_pos[shipid]!=0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (!(((now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]==3)&&(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])!=0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 2 - lock_env.pml:142 - [((doors_status.east==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((now.doors_status.east==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 3 - lock_env.pml:143 - [request_east!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (q_full(now.request_east))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.request_east);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.request_east, 0, 1, 1);
		if (q_zero(now.request_east)) { boq = now.request_east; };
		_m = 2; goto P999; /* 0 */
	case 36: // STATE 4 - lock_env.pml:144 - [((doors_status.east==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (!((now.doors_status.east==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 5 - lock_env.pml:146 - [(!(lock_is_occupied))] (9:0:3 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		if (!( !(((int)now.lock_is_occupied))))
			continue;
		/* merge: ship_status[shipid] = 2(9, 6, 9) */
		reached[1][6] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = 2;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]);
#endif
		;
		/* merge: lock_is_occupied = 1(9, 7, 9) */
		reached[1][7] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied);
		now.lock_is_occupied = 1;
#ifdef VAR_RANGES
		logval("lock_is_occupied", ((int)now.lock_is_occupied));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]-1)(9, 8, 9) */
		reached[1][8] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ])-1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 38: // STATE 9 - lock_env.pml:150 - [observed_east[0]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][9] = 1;
		if (q_full(now.observed_east[0]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.observed_east[0]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.observed_east[0], 0, 1, 1);
		if (q_zero(now.observed_east[0])) { boq = now.observed_east[0]; };
		_m = 2; goto P999; /* 0 */
	case 39: // STATE 11 - lock_env.pml:152 - [(lock_is_occupied)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][11] = 1;
		if (!(((int)now.lock_is_occupied)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 12 - lock_env.pml:153 - [observed_east[0]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][12] = 1;
		if (q_full(now.observed_east[0]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.observed_east[0]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.observed_east[0], 0, 1, 1);
		if (q_zero(now.observed_east[0])) { boq = now.observed_east[0]; };
		_m = 2; goto P999; /* 0 */
	case 41: // STATE 16 - lock_env.pml:156 - [(((doors_status.east==1)&&!(lock_is_occupied)))] (107:0:3 - 1)
		IfNotBlocked
		reached[1][16] = 1;
		if (!(((now.doors_status.east==1)&& !(((int)now.lock_is_occupied)))))
			continue;
		/* merge: ship_status[shipid] = 2(107, 17, 107) */
		reached[1][17] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = 2;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]);
#endif
		;
		/* merge: lock_is_occupied = 1(107, 18, 107) */
		reached[1][18] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied);
		now.lock_is_occupied = 1;
#ifdef VAR_RANGES
		logval("lock_is_occupied", ((int)now.lock_is_occupied));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]-1)(107, 19, 107) */
		reached[1][19] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ])-1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]));
#endif
		;
		/* merge: goto :b2(107, 20, 107) */
		reached[1][20] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 42: // STATE 25 - lock_env.pml:162 - [((ship_status[shipid]==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][25] = 1;
		if (!((now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 26 - lock_env.pml:164 - [((doors_status.west==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][26] = 1;
		if (!((now.doors_status.west==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 27 - lock_env.pml:165 - [request_west!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][27] = 1;
		if (q_full(now.request_west))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.request_west);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.request_west, 0, 1, 1);
		if (q_zero(now.request_west)) { boq = now.request_west; };
		_m = 2; goto P999; /* 0 */
	case 45: // STATE 28 - lock_env.pml:166 - [((doors_status.west==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][28] = 1;
		if (!((now.doors_status.west==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 29 - lock_env.pml:169 - [(((nr_of_ships_at_pos[(ship_pos[shipid]-1)]<2)||((ship_pos[shipid]-1)==0)))] (34:0:4 - 1)
		IfNotBlocked
		reached[1][29] = 1;
		if (!(((((int)now.nr_of_ships_at_pos[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])-1), 2) ])<2)||((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])-1)==0))))
			continue;
		/* merge: ship_status[shipid] = 3(34, 30, 34) */
		reached[1][30] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = 3;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]);
#endif
		;
		/* merge: lock_is_occupied = 0(34, 31, 34) */
		reached[1][31] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied);
		now.lock_is_occupied = 0;
#ifdef VAR_RANGES
		logval("lock_is_occupied", ((int)now.lock_is_occupied));
#endif
		;
		/* merge: ship_pos[shipid] = (ship_pos[shipid]-1)(34, 32, 34) */
		reached[1][32] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]);
		now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ] = (((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])-1);
#ifdef VAR_RANGES
		logval("ship_pos[ship:shipid]", ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]+1)(34, 33, 34) */
		reached[1][33] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ])+1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]));
#endif
		;
		_m = 3; goto P999; /* 4 */
	case 47: // STATE 34 - lock_env.pml:174 - [observed_west[0]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][34] = 1;
		if (q_full(now.observed_west[0]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.observed_west[0]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.observed_west[0], 0, 1, 1);
		if (q_zero(now.observed_west[0])) { boq = now.observed_west[0]; };
		_m = 2; goto P999; /* 0 */
	case 48: // STATE 36 - lock_env.pml:177 - [(((nr_of_ships_at_pos[(ship_pos[shipid]-1)]==2)&&((ship_pos[shipid]-1)!=0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][36] = 1;
		if (!(((((int)now.nr_of_ships_at_pos[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])-1), 2) ])==2)&&((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])-1)!=0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 37 - lock_env.pml:178 - [observed_west[0]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][37] = 1;
		if (q_full(now.observed_west[0]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.observed_west[0]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.observed_west[0], 0, 1, 1);
		if (q_zero(now.observed_west[0])) { boq = now.observed_west[0]; };
		_m = 2; goto P999; /* 0 */
	case 50: // STATE 41 - lock_env.pml:182 - [(((doors_status.west==1)&&((nr_of_ships_at_pos[(ship_pos[shipid]-1)]<2)||((ship_pos[shipid]-1)==0))))] (107:0:4 - 1)
		IfNotBlocked
		reached[1][41] = 1;
		if (!(((now.doors_status.west==1)&&((((int)now.nr_of_ships_at_pos[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])-1), 2) ])<2)||((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])-1)==0)))))
			continue;
		/* merge: ship_status[shipid] = 3(107, 42, 107) */
		reached[1][42] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = 3;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]);
#endif
		;
		/* merge: lock_is_occupied = 0(107, 43, 107) */
		reached[1][43] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied);
		now.lock_is_occupied = 0;
#ifdef VAR_RANGES
		logval("lock_is_occupied", ((int)now.lock_is_occupied));
#endif
		;
		/* merge: ship_pos[shipid] = (ship_pos[shipid]-1)(107, 44, 107) */
		reached[1][44] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]);
		now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ] = (((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])-1);
#ifdef VAR_RANGES
		logval("ship_pos[ship:shipid]", ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]+1)(107, 45, 107) */
		reached[1][45] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ])+1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]));
#endif
		;
		/* merge: goto :b3(107, 46, 107) */
		reached[1][46] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 51: // STATE 51 - lock_env.pml:189 - [(((ship_status[shipid]==5)&&(ship_pos[shipid]!=1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][51] = 1;
		if (!(((now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]==5)&&(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])!=1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 52 - lock_env.pml:191 - [((doors_status.west==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][52] = 1;
		if (!((now.doors_status.west==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 53 - lock_env.pml:192 - [request_west!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][53] = 1;
		if (q_full(now.request_west))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.request_west);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.request_west, 0, 1, 1);
		if (q_zero(now.request_west)) { boq = now.request_west; };
		_m = 2; goto P999; /* 0 */
	case 54: // STATE 54 - lock_env.pml:193 - [((doors_status.west==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][54] = 1;
		if (!((now.doors_status.west==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 55 - lock_env.pml:195 - [(!(lock_is_occupied))] (59:0:3 - 1)
		IfNotBlocked
		reached[1][55] = 1;
		if (!( !(((int)now.lock_is_occupied))))
			continue;
		/* merge: ship_status[shipid] = 4(59, 56, 59) */
		reached[1][56] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = 4;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]);
#endif
		;
		/* merge: lock_is_occupied = 1(59, 57, 59) */
		reached[1][57] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied);
		now.lock_is_occupied = 1;
#ifdef VAR_RANGES
		logval("lock_is_occupied", ((int)now.lock_is_occupied));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]-1)(59, 58, 59) */
		reached[1][58] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ])-1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 56: // STATE 59 - lock_env.pml:199 - [observed_west[0]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][59] = 1;
		if (q_full(now.observed_west[0]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.observed_west[0]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.observed_west[0], 0, 1, 1);
		if (q_zero(now.observed_west[0])) { boq = now.observed_west[0]; };
		_m = 2; goto P999; /* 0 */
	case 57: // STATE 61 - lock_env.pml:201 - [(lock_is_occupied)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][61] = 1;
		if (!(((int)now.lock_is_occupied)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 62 - lock_env.pml:202 - [observed_west[0]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][62] = 1;
		if (q_full(now.observed_west[0]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.observed_west[0]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.observed_west[0], 0, 1, 1);
		if (q_zero(now.observed_west[0])) { boq = now.observed_west[0]; };
		_m = 2; goto P999; /* 0 */
	case 59: // STATE 66 - lock_env.pml:205 - [(((doors_status.west==1)&&!(lock_is_occupied)))] (107:0:3 - 1)
		IfNotBlocked
		reached[1][66] = 1;
		if (!(((now.doors_status.west==1)&& !(((int)now.lock_is_occupied)))))
			continue;
		/* merge: ship_status[shipid] = 4(107, 67, 107) */
		reached[1][67] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = 4;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]);
#endif
		;
		/* merge: lock_is_occupied = 1(107, 68, 107) */
		reached[1][68] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied);
		now.lock_is_occupied = 1;
#ifdef VAR_RANGES
		logval("lock_is_occupied", ((int)now.lock_is_occupied));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]-1)(107, 69, 107) */
		reached[1][69] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ])-1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]));
#endif
		;
		/* merge: goto :b4(107, 70, 107) */
		reached[1][70] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 60: // STATE 75 - lock_env.pml:211 - [((ship_status[shipid]==4))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][75] = 1;
		if (!((now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 76 - lock_env.pml:213 - [((doors_status.east==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][76] = 1;
		if (!((now.doors_status.east==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 62: // STATE 77 - lock_env.pml:214 - [request_east!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][77] = 1;
		if (q_full(now.request_east))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.request_east);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.request_east, 0, 1, 1);
		if (q_zero(now.request_east)) { boq = now.request_east; };
		_m = 2; goto P999; /* 0 */
	case 63: // STATE 78 - lock_env.pml:215 - [((doors_status.east==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][78] = 1;
		if (!((now.doors_status.east==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 64: // STATE 79 - lock_env.pml:218 - [(((nr_of_ships_at_pos[(ship_pos[shipid]+1)]<2)||((ship_pos[shipid]+1)==1)))] (84:0:4 - 1)
		IfNotBlocked
		reached[1][79] = 1;
		if (!(((((int)now.nr_of_ships_at_pos[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])+1), 2) ])<2)||((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])+1)==1))))
			continue;
		/* merge: ship_status[shipid] = 5(84, 80, 84) */
		reached[1][80] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = 5;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]);
#endif
		;
		/* merge: lock_is_occupied = 0(84, 81, 84) */
		reached[1][81] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied);
		now.lock_is_occupied = 0;
#ifdef VAR_RANGES
		logval("lock_is_occupied", ((int)now.lock_is_occupied));
#endif
		;
		/* merge: ship_pos[shipid] = (ship_pos[shipid]+1)(84, 82, 84) */
		reached[1][82] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]);
		now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ] = (((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])+1);
#ifdef VAR_RANGES
		logval("ship_pos[ship:shipid]", ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]+1)(84, 83, 84) */
		reached[1][83] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ])+1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]));
#endif
		;
		_m = 3; goto P999; /* 4 */
	case 65: // STATE 84 - lock_env.pml:223 - [observed_east[0]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][84] = 1;
		if (q_full(now.observed_east[0]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.observed_east[0]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.observed_east[0], 0, 1, 1);
		if (q_zero(now.observed_east[0])) { boq = now.observed_east[0]; };
		_m = 2; goto P999; /* 0 */
	case 66: // STATE 86 - lock_env.pml:226 - [(((nr_of_ships_at_pos[(ship_pos[shipid]+1)]==2)&&((ship_pos[shipid]+1)!=1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][86] = 1;
		if (!(((((int)now.nr_of_ships_at_pos[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])+1), 2) ])==2)&&((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])+1)!=1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 87 - lock_env.pml:227 - [observed_east[0]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][87] = 1;
		if (q_full(now.observed_east[0]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.observed_east[0]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.observed_east[0], 0, 1, 1);
		if (q_zero(now.observed_east[0])) { boq = now.observed_east[0]; };
		_m = 2; goto P999; /* 0 */
	case 68: // STATE 91 - lock_env.pml:231 - [(((doors_status.east==1)&&((nr_of_ships_at_pos[(ship_pos[shipid]+1)]<2)||((ship_pos[shipid]+1)==1))))] (107:0:4 - 1)
		IfNotBlocked
		reached[1][91] = 1;
		if (!(((now.doors_status.east==1)&&((((int)now.nr_of_ships_at_pos[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])+1), 2) ])<2)||((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])+1)==1)))))
			continue;
		/* merge: ship_status[shipid] = 5(107, 92, 107) */
		reached[1][92] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = 5;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]);
#endif
		;
		/* merge: lock_is_occupied = 0(107, 93, 107) */
		reached[1][93] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied);
		now.lock_is_occupied = 0;
#ifdef VAR_RANGES
		logval("lock_is_occupied", ((int)now.lock_is_occupied));
#endif
		;
		/* merge: ship_pos[shipid] = (ship_pos[shipid]+1)(107, 94, 107) */
		reached[1][94] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]);
		now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ] = (((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])+1);
#ifdef VAR_RANGES
		logval("ship_pos[ship:shipid]", ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]+1)(107, 95, 107) */
		reached[1][95] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ])+1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]));
#endif
		;
		/* merge: goto :b5(107, 96, 107) */
		reached[1][96] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 69: // STATE 101 - lock_env.pml:238 - [(((ship_status[shipid]==3)&&(ship_pos[shipid]==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][101] = 1;
		if (!(((now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]==3)&&(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 70: // STATE 102 - lock_env.pml:239 - [ship_status[shipid] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][102] = 1;
		(trpt+1)->bup.oval = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = 1;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 71: // STATE 103 - lock_env.pml:239 - [ship_status[shipid] = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[1][103] = 1;
		(trpt+1)->bup.oval = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = 5;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 72: // STATE 104 - lock_env.pml:240 - [(((ship_status[shipid]==5)&&(ship_pos[shipid]==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][104] = 1;
		if (!(((now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]==5)&&(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 73: // STATE 105 - lock_env.pml:241 - [ship_status[shipid] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][105] = 1;
		(trpt+1)->bup.oval = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = 1;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 74: // STATE 106 - lock_env.pml:241 - [ship_status[shipid] = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[1][106] = 1;
		(trpt+1)->bup.oval = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = 3;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 75: // STATE 110 - lock_env.pml:243 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][110] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC lock */
	case 76: // STATE 1 - lock_env.pml:87 - [change_doors_pos?2] (0:0:0 - 1)
		reached[0][1] = 1;
		if (q_zero(now.change_doors_pos))
		{	if (boq != now.change_doors_pos) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.change_doors_pos) == 0) continue;

		XX=1;
		if (2 != qrecv(now.change_doors_pos, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.change_doors_pos-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.change_doors_pos, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.change_doors_pos);
			sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.change_doors_pos))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 77: // STATE 2 - lock_env.pml:89 - [((doors_status.west==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((now.doors_status.west==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 78: // STATE 3 - lock_env.pml:90 - [doors_status.west = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = now.doors_status.west;
		now.doors_status.west = 1;
#ifdef VAR_RANGES
		logval("doors_status.west", now.doors_status.west);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 79: // STATE 4 - lock_env.pml:92 - [((LOCK_ORIENTATION==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		if (!((now.LOCK_ORIENTATION==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 80: // STATE 5 - lock_env.pml:92 - [lock_water_level = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		(trpt+1)->bup.oval = lock_water_level;
		lock_water_level = 2;
#ifdef VAR_RANGES
		logval("lock_water_level", lock_water_level);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 81: // STATE 6 - lock_env.pml:93 - [((((LOCK_ORIENTATION==1)&&(doors_status.east==2))&&(valve_status.lower==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		if (!((((now.LOCK_ORIENTATION==1)&&(now.doors_status.east==2))&&(now.valve_status.lower==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 82: // STATE 7 - lock_env.pml:94 - [lock_water_level = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][7] = 1;
		(trpt+1)->bup.oval = lock_water_level;
		lock_water_level = 1;
#ifdef VAR_RANGES
		logval("lock_water_level", lock_water_level);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 83: // STATE 12 - lock_env.pml:97 - [((doors_status.west==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][12] = 1;
		if (!((now.doors_status.west==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 84: // STATE 13 - lock_env.pml:97 - [doors_status.west = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		(trpt+1)->bup.oval = now.doors_status.west;
		now.doors_status.west = 2;
#ifdef VAR_RANGES
		logval("doors_status.west", now.doors_status.west);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 85: // STATE 16 - lock_env.pml:99 - [doors_pos_changed!1] (0:0:0 - 6)
		IfNotBlocked
		reached[0][16] = 1;
		if (q_full(now.doors_pos_changed))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.doors_pos_changed);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.doors_pos_changed, 0, 1, 1);
		if (q_zero(now.doors_pos_changed)) { boq = now.doors_pos_changed; };
		_m = 2; goto P999; /* 0 */
	case 86: // STATE 17 - lock_env.pml:100 - [change_doors_pos?1] (0:0:0 - 1)
		reached[0][17] = 1;
		if (q_zero(now.change_doors_pos))
		{	if (boq != now.change_doors_pos) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.change_doors_pos) == 0) continue;

		XX=1;
		if (1 != qrecv(now.change_doors_pos, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.change_doors_pos-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.change_doors_pos, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.change_doors_pos);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.change_doors_pos))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 87: // STATE 18 - lock_env.pml:102 - [((doors_status.east==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][18] = 1;
		if (!((now.doors_status.east==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 88: // STATE 19 - lock_env.pml:103 - [doors_status.east = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		(trpt+1)->bup.oval = now.doors_status.east;
		now.doors_status.east = 1;
#ifdef VAR_RANGES
		logval("doors_status.east", now.doors_status.east);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 89: // STATE 20 - lock_env.pml:105 - [((LOCK_ORIENTATION==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][20] = 1;
		if (!((now.LOCK_ORIENTATION==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 90: // STATE 21 - lock_env.pml:105 - [lock_water_level = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][21] = 1;
		(trpt+1)->bup.oval = lock_water_level;
		lock_water_level = 2;
#ifdef VAR_RANGES
		logval("lock_water_level", lock_water_level);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 91: // STATE 22 - lock_env.pml:106 - [((((LOCK_ORIENTATION==2)&&(doors_status.west==2))&&(valve_status.lower==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][22] = 1;
		if (!((((now.LOCK_ORIENTATION==2)&&(now.doors_status.west==2))&&(now.valve_status.lower==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 92: // STATE 23 - lock_env.pml:107 - [lock_water_level = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][23] = 1;
		(trpt+1)->bup.oval = lock_water_level;
		lock_water_level = 1;
#ifdef VAR_RANGES
		logval("lock_water_level", lock_water_level);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 93: // STATE 28 - lock_env.pml:110 - [((doors_status.east==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][28] = 1;
		if (!((now.doors_status.east==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 94: // STATE 29 - lock_env.pml:110 - [doors_status.east = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][29] = 1;
		(trpt+1)->bup.oval = now.doors_status.east;
		now.doors_status.east = 2;
#ifdef VAR_RANGES
		logval("doors_status.east", now.doors_status.east);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 95: // STATE 32 - lock_env.pml:112 - [doors_pos_changed!1] (0:0:0 - 6)
		IfNotBlocked
		reached[0][32] = 1;
		if (q_full(now.doors_pos_changed))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.doors_pos_changed);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.doors_pos_changed, 0, 1, 1);
		if (q_zero(now.doors_pos_changed)) { boq = now.doors_pos_changed; };
		_m = 2; goto P999; /* 0 */
	case 96: // STATE 33 - lock_env.pml:113 - [change_valve_pos?2] (0:0:0 - 1)
		reached[0][33] = 1;
		if (q_zero(now.change_valve_pos))
		{	if (boq != now.change_valve_pos) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.change_valve_pos) == 0) continue;

		XX=1;
		if (2 != qrecv(now.change_valve_pos, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.change_valve_pos-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.change_valve_pos, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.change_valve_pos);
			sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.change_valve_pos))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 97: // STATE 34 - lock_env.pml:115 - [((valve_status.lower==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][34] = 1;
		if (!((now.valve_status.lower==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 98: // STATE 35 - lock_env.pml:115 - [valve_status.lower = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][35] = 1;
		(trpt+1)->bup.oval = now.valve_status.lower;
		now.valve_status.lower = 1;
#ifdef VAR_RANGES
		logval("valve_status.lower", now.valve_status.lower);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 99: // STATE 36 - lock_env.pml:116 - [lock_water_level = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][36] = 1;
		(trpt+1)->bup.oval = lock_water_level;
		lock_water_level = 2;
#ifdef VAR_RANGES
		logval("lock_water_level", lock_water_level);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 100: // STATE 37 - lock_env.pml:117 - [((valve_status.lower==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][37] = 1;
		if (!((now.valve_status.lower==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 101: // STATE 38 - lock_env.pml:117 - [valve_status.lower = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][38] = 1;
		(trpt+1)->bup.oval = now.valve_status.lower;
		now.valve_status.lower = 2;
#ifdef VAR_RANGES
		logval("valve_status.lower", now.valve_status.lower);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 102: // STATE 41 - lock_env.pml:119 - [valve_pos_changed!1] (0:0:0 - 3)
		IfNotBlocked
		reached[0][41] = 1;
		if (q_full(now.valve_pos_changed))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.valve_pos_changed);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.valve_pos_changed, 0, 1, 1);
		if (q_zero(now.valve_pos_changed)) { boq = now.valve_pos_changed; };
		_m = 2; goto P999; /* 0 */
	case 103: // STATE 42 - lock_env.pml:120 - [change_valve_pos?1] (0:0:0 - 1)
		reached[0][42] = 1;
		if (q_zero(now.change_valve_pos))
		{	if (boq != now.change_valve_pos) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.change_valve_pos) == 0) continue;

		XX=1;
		if (1 != qrecv(now.change_valve_pos, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.change_valve_pos-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.change_valve_pos, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.change_valve_pos);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.change_valve_pos))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 104: // STATE 43 - lock_env.pml:122 - [((valve_status.higher==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][43] = 1;
		if (!((now.valve_status.higher==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 105: // STATE 44 - lock_env.pml:122 - [valve_status.higher = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][44] = 1;
		(trpt+1)->bup.oval = now.valve_status.higher;
		now.valve_status.higher = 1;
#ifdef VAR_RANGES
		logval("valve_status.higher", now.valve_status.higher);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 106: // STATE 45 - lock_env.pml:124 - [((((LOCK_ORIENTATION==2)&&(doors_status.west==2))&&(valve_status.lower==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][45] = 1;
		if (!((((now.LOCK_ORIENTATION==2)&&(now.doors_status.west==2))&&(now.valve_status.lower==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 107: // STATE 46 - lock_env.pml:125 - [lock_water_level = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][46] = 1;
		(trpt+1)->bup.oval = lock_water_level;
		lock_water_level = 1;
#ifdef VAR_RANGES
		logval("lock_water_level", lock_water_level);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 108: // STATE 47 - lock_env.pml:126 - [((((LOCK_ORIENTATION==1)&&(doors_status.east==2))&&(valve_status.lower==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][47] = 1;
		if (!((((now.LOCK_ORIENTATION==1)&&(now.doors_status.east==2))&&(now.valve_status.lower==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 109: // STATE 48 - lock_env.pml:127 - [lock_water_level = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][48] = 1;
		(trpt+1)->bup.oval = lock_water_level;
		lock_water_level = 1;
#ifdef VAR_RANGES
		logval("lock_water_level", lock_water_level);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 110: // STATE 53 - lock_env.pml:130 - [((valve_status.higher==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][53] = 1;
		if (!((now.valve_status.higher==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 111: // STATE 54 - lock_env.pml:130 - [valve_status.higher = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][54] = 1;
		(trpt+1)->bup.oval = now.valve_status.higher;
		now.valve_status.higher = 2;
#ifdef VAR_RANGES
		logval("valve_status.higher", now.valve_status.higher);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 112: // STATE 57 - lock_env.pml:132 - [valve_pos_changed!1] (0:0:0 - 6)
		IfNotBlocked
		reached[0][57] = 1;
		if (q_full(now.valve_pos_changed))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.valve_pos_changed);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.valve_pos_changed, 0, 1, 1);
		if (q_zero(now.valve_pos_changed)) { boq = now.valve_pos_changed; };
		_m = 2; goto P999; /* 0 */
	case 113: // STATE 61 - lock_env.pml:134 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][61] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}


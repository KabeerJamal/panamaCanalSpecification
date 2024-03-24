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
	case 3: // STATE 1 - lock_env2.pml:361 - [(run main_control())] (0:0:0 - 1)
		IfNotBlocked
		reached[4][1] = 1;
		if (!(addproc(II, 1, 2, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - lock_env2.pml:365 - [proc = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[4][2] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->proc);
		((P4 *)_this)->proc = 0;
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P4 *)_this)->proc));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - lock_env2.pml:367 - [((proc<3))] (11:0:7 - 1)
		IfNotBlocked
		reached[4][3] = 1;
		if (!((((int)((P4 *)_this)->proc)<3)))
			continue;
		/* merge: LOCK_ORIENTATION[proc] = 1(11, 4, 11) */
		reached[4][4] = 1;
		(trpt+1)->bup.ovals = grab_ints(7);
		(trpt+1)->bup.ovals[0] = now.LOCK_ORIENTATION[ Index(((int)((P4 *)_this)->proc), 3) ];
		now.LOCK_ORIENTATION[ Index(((P4 *)_this)->proc, 3) ] = 1;
#ifdef VAR_RANGES
		logval("LOCK_ORIENTATION[:init::proc]", now.LOCK_ORIENTATION[ Index(((int)((P4 *)_this)->proc), 3) ]);
#endif
		;
		/* merge: doors_status[proc].west = 2(11, 5, 11) */
		reached[4][5] = 1;
		(trpt+1)->bup.ovals[1] = now.doors_status[ Index(((int)((P4 *)_this)->proc), 3) ].west;
		now.doors_status[ Index(((P4 *)_this)->proc, 3) ].west = 2;
#ifdef VAR_RANGES
		logval("doors_status[:init::proc].west", now.doors_status[ Index(((int)((P4 *)_this)->proc), 3) ].west);
#endif
		;
		/* merge: doors_status[proc].east = 2(11, 6, 11) */
		reached[4][6] = 1;
		(trpt+1)->bup.ovals[2] = now.doors_status[ Index(((int)((P4 *)_this)->proc), 3) ].east;
		now.doors_status[ Index(((P4 *)_this)->proc, 3) ].east = 2;
#ifdef VAR_RANGES
		logval("doors_status[:init::proc].east", now.doors_status[ Index(((int)((P4 *)_this)->proc), 3) ].east);
#endif
		;
		/* merge: valve_status[proc].lower = 2(11, 7, 11) */
		reached[4][7] = 1;
		(trpt+1)->bup.ovals[3] = now.valve_status[ Index(((int)((P4 *)_this)->proc), 3) ].lower;
		now.valve_status[ Index(((P4 *)_this)->proc, 3) ].lower = 2;
#ifdef VAR_RANGES
		logval("valve_status[:init::proc].lower", now.valve_status[ Index(((int)((P4 *)_this)->proc), 3) ].lower);
#endif
		;
		/* merge: valve_status[proc].higher = 2(11, 8, 11) */
		reached[4][8] = 1;
		(trpt+1)->bup.ovals[4] = now.valve_status[ Index(((int)((P4 *)_this)->proc), 3) ].higher;
		now.valve_status[ Index(((P4 *)_this)->proc, 3) ].higher = 2;
#ifdef VAR_RANGES
		logval("valve_status[:init::proc].higher", now.valve_status[ Index(((int)((P4 *)_this)->proc), 3) ].higher);
#endif
		;
		/* merge: lock_water_level[proc] = 1(11, 9, 11) */
		reached[4][9] = 1;
		(trpt+1)->bup.ovals[5] = lock_water_level[ Index(((int)((P4 *)_this)->proc), 3) ];
		lock_water_level[ Index(((P4 *)_this)->proc, 3) ] = 1;
#ifdef VAR_RANGES
		logval("lock_water_level[:init::proc]", lock_water_level[ Index(((int)((P4 *)_this)->proc), 3) ]);
#endif
		;
		/* merge: lock_is_occupied[proc] = 0(11, 10, 11) */
		reached[4][10] = 1;
		(trpt+1)->bup.ovals[6] = ((int)now.lock_is_occupied[ Index(((int)((P4 *)_this)->proc), 3) ]);
		now.lock_is_occupied[ Index(((P4 *)_this)->proc, 3) ] = 0;
#ifdef VAR_RANGES
		logval("lock_is_occupied[:init::proc]", ((int)now.lock_is_occupied[ Index(((int)((P4 *)_this)->proc), 3) ]));
#endif
		;
		_m = 3; goto P999; /* 7 */
	case 6: // STATE 11 - lock_env2.pml:375 - [(run lock(proc))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][11] = 1;
		if (!(addproc(II, 1, 0, ((int)((P4 *)_this)->proc))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 12 - lock_env2.pml:376 - [proc = (proc+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[4][12] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->proc);
		((P4 *)_this)->proc = (((int)((P4 *)_this)->proc)+1);
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P4 *)_this)->proc));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 13 - lock_env2.pml:377 - [((proc==3))] (28:0:2 - 1)
		IfNotBlocked
		reached[4][13] = 1;
		if (!((((int)((P4 *)_this)->proc)==3)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: proc */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P4 *)_this)->proc;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P4 *)_this)->proc = 0;
		/* merge: goto :b7(28, 14, 28) */
		reached[4][14] = 1;
		;
		/* merge: proc = 0(28, 18, 28) */
		reached[4][18] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P4 *)_this)->proc);
		((P4 *)_this)->proc = 0;
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P4 *)_this)->proc));
#endif
		;
		/* merge: .(goto)(0, 29, 28) */
		reached[4][29] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 9: // STATE 18 - lock_env2.pml:381 - [proc = 0] (0:28:1 - 3)
		IfNotBlocked
		reached[4][18] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->proc);
		((P4 *)_this)->proc = 0;
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P4 *)_this)->proc));
#endif
		;
		/* merge: .(goto)(0, 29, 28) */
		reached[4][29] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 10: // STATE 19 - lock_env2.pml:383 - [((proc==0))] (22:0:2 - 1)
		IfNotBlocked
		reached[4][19] = 1;
		if (!((((int)((P4 *)_this)->proc)==0)))
			continue;
		/* merge: ship_status[proc] = 5(22, 20, 22) */
		reached[4][20] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P4 *)_this)->proc), 2) ];
		now.ship_status[ Index(((P4 *)_this)->proc, 2) ] = 5;
#ifdef VAR_RANGES
		logval("ship_status[:init::proc]", now.ship_status[ Index(((int)((P4 *)_this)->proc), 2) ]);
#endif
		;
		/* merge: ship_pos[proc] = 0(22, 21, 22) */
		reached[4][21] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.ship_pos[ Index(((int)((P4 *)_this)->proc), 2) ]);
		now.ship_pos[ Index(((P4 *)_this)->proc, 2) ] = 0;
#ifdef VAR_RANGES
		logval("ship_pos[:init::proc]", ((int)now.ship_pos[ Index(((int)((P4 *)_this)->proc), 2) ]));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 11: // STATE 22 - lock_env2.pml:384 - [(run ship(proc))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][22] = 1;
		if (!(addproc(II, 1, 1, ((int)((P4 *)_this)->proc))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 23 - lock_env2.pml:384 - [proc = (proc+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[4][23] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->proc);
		((P4 *)_this)->proc = (((int)((P4 *)_this)->proc)+1);
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P4 *)_this)->proc));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 24 - lock_env2.pml:385 - [(((proc>0)&&(proc<2)))] (28:0:1 - 1)
		IfNotBlocked
		reached[4][24] = 1;
		if (!(((((int)((P4 *)_this)->proc)>0)&&(((int)((P4 *)_this)->proc)<2))))
			continue;
		/* merge: proc = (proc+1)(0, 25, 28) */
		reached[4][25] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->proc);
		((P4 *)_this)->proc = (((int)((P4 *)_this)->proc)+1);
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P4 *)_this)->proc));
#endif
		;
		/* merge: .(goto)(0, 29, 28) */
		reached[4][29] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 14: // STATE 26 - lock_env2.pml:386 - [((proc==2))] (37:0:2 - 1)
		IfNotBlocked
		reached[4][26] = 1;
		if (!((((int)((P4 *)_this)->proc)==2)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: proc */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P4 *)_this)->proc;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P4 *)_this)->proc = 0;
		/* merge: goto :b8(37, 27, 37) */
		reached[4][27] = 1;
		;
		/* merge: proc = 0(37, 31, 37) */
		reached[4][31] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P4 *)_this)->proc);
		((P4 *)_this)->proc = 0;
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P4 *)_this)->proc));
#endif
		;
		/* merge: .(goto)(0, 38, 37) */
		reached[4][38] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 15: // STATE 31 - lock_env2.pml:390 - [proc = 0] (0:37:1 - 3)
		IfNotBlocked
		reached[4][31] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->proc);
		((P4 *)_this)->proc = 0;
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P4 *)_this)->proc));
#endif
		;
		/* merge: .(goto)(0, 38, 37) */
		reached[4][38] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 16: // STATE 32 - lock_env2.pml:392 - [((proc<2))] (37:0:2 - 1)
		IfNotBlocked
		reached[4][32] = 1;
		if (!((((int)((P4 *)_this)->proc)<2)))
			continue;
		/* merge: nr_of_ships_at_pos[ship_pos[proc]] = (nr_of_ships_at_pos[ship_pos[proc]]+1)(37, 33, 37) */
		reached[4][33] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P4 *)_this)->proc), 2) ]), 4) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P4 *)_this)->proc, 2) ], 4) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P4 *)_this)->proc), 2) ]), 4) ])+1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[:init::proc]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P4 *)_this)->proc), 2) ]), 4) ]));
#endif
		;
		/* merge: proc = (proc+1)(37, 34, 37) */
		reached[4][34] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P4 *)_this)->proc);
		((P4 *)_this)->proc = (((int)((P4 *)_this)->proc)+1);
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P4 *)_this)->proc));
#endif
		;
		/* merge: .(goto)(0, 38, 37) */
		reached[4][38] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 17: // STATE 41 - lock_env2.pml:396 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[4][41] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC monitor */
	case 18: // STATE 1 - lock_env2.pml:352 - [assert(((0<=ship_pos[0])&&(ship_pos[0]<=3)))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		spin_assert(((0<=((int)now.ship_pos[0]))&&(((int)now.ship_pos[0])<=3)), "((0<=ship_pos[0])&&(ship_pos[0]<=3))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 2 - lock_env2.pml:353 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][2] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC main_control */
	case 20: // STATE 1 - lock_env2.pml:305 - [request_west?1,lockid] (0:0:1 - 1)
		reached[2][1] = 1;
		if (q_zero(now.request_west))
		{	if (boq != now.request_west) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.request_west) == 0) continue;

		XX=1;
		if (1 != qrecv(now.request_west, 0, 0, 0)) continue;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->lockid);
		;
		((P2 *)_this)->lockid = qrecv(now.request_west, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("main_control:lockid", ((int)((P2 *)_this)->lockid));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.request_west);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
			strcat(simvals, ",");
			sprintf(simtmp, "%d", ((int)((P2 *)_this)->lockid)); strcat(simvals, simtmp);
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
	case 21: // STATE 2 - lock_env2.pml:307 - [((doors_status[lockid].west==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (!((now.doors_status[ Index(((int)((P2 *)_this)->lockid), 3) ].west==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 3 - lock_env2.pml:310 - [((LOCK_ORIENTATION[lockid]==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		if (!((now.LOCK_ORIENTATION[ Index(((int)((P2 *)_this)->lockid), 3) ]==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 4 - lock_env2.pml:310 - [change_valve_pos!lockid,1] (0:0:0 - 1)
		IfNotBlocked
		reached[2][4] = 1;
		if (q_full(now.change_valve_pos))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_valve_pos);
		sprintf(simtmp, "%d", ((int)((P2 *)_this)->lockid)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_valve_pos, 0, ((int)((P2 *)_this)->lockid), 1, 2);
		if (q_zero(now.change_valve_pos)) { boq = now.change_valve_pos; };
		_m = 2; goto P999; /* 0 */
	case 24: // STATE 5 - lock_env2.pml:311 - [valve_pos_changed?1] (0:0:0 - 1)
		reached[2][5] = 1;
		if (q_zero(now.valve_pos_changed))
		{	if (boq != now.valve_pos_changed) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.valve_pos_changed) == 0) continue;

		XX=1;
		if (1 != qrecv(now.valve_pos_changed, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.valve_pos_changed-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.valve_pos_changed, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.valve_pos_changed);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.valve_pos_changed))
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
	case 25: // STATE 6 - lock_env2.pml:312 - [change_valve_pos!lockid,1] (0:0:0 - 1)
		IfNotBlocked
		reached[2][6] = 1;
		if (q_full(now.change_valve_pos))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_valve_pos);
		sprintf(simtmp, "%d", ((int)((P2 *)_this)->lockid)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_valve_pos, 0, ((int)((P2 *)_this)->lockid), 1, 2);
		if (q_zero(now.change_valve_pos)) { boq = now.change_valve_pos; };
		_m = 2; goto P999; /* 0 */
	case 26: // STATE 7 - lock_env2.pml:313 - [valve_pos_changed?1] (0:0:0 - 1)
		reached[2][7] = 1;
		if (q_zero(now.valve_pos_changed))
		{	if (boq != now.valve_pos_changed) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.valve_pos_changed) == 0) continue;

		XX=1;
		if (1 != qrecv(now.valve_pos_changed, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.valve_pos_changed-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.valve_pos_changed, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.valve_pos_changed);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.valve_pos_changed))
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
	case 27: // STATE 8 - lock_env2.pml:314 - [((LOCK_ORIENTATION[lockid]==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][8] = 1;
		if (!((now.LOCK_ORIENTATION[ Index(((int)((P2 *)_this)->lockid), 3) ]==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 9 - lock_env2.pml:314 - [change_valve_pos!lockid,2] (0:0:0 - 1)
		IfNotBlocked
		reached[2][9] = 1;
		if (q_full(now.change_valve_pos))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_valve_pos);
		sprintf(simtmp, "%d", ((int)((P2 *)_this)->lockid)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_valve_pos, 0, ((int)((P2 *)_this)->lockid), 2, 2);
		if (q_zero(now.change_valve_pos)) { boq = now.change_valve_pos; };
		_m = 2; goto P999; /* 0 */
	case 29: // STATE 10 - lock_env2.pml:315 - [valve_pos_changed?1] (0:0:0 - 1)
		reached[2][10] = 1;
		if (q_zero(now.valve_pos_changed))
		{	if (boq != now.valve_pos_changed) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.valve_pos_changed) == 0) continue;

		XX=1;
		if (1 != qrecv(now.valve_pos_changed, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.valve_pos_changed-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.valve_pos_changed, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.valve_pos_changed);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.valve_pos_changed))
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
	case 30: // STATE 11 - lock_env2.pml:316 - [change_valve_pos!lockid,2] (0:0:0 - 1)
		IfNotBlocked
		reached[2][11] = 1;
		if (q_full(now.change_valve_pos))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_valve_pos);
		sprintf(simtmp, "%d", ((int)((P2 *)_this)->lockid)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_valve_pos, 0, ((int)((P2 *)_this)->lockid), 2, 2);
		if (q_zero(now.change_valve_pos)) { boq = now.change_valve_pos; };
		_m = 2; goto P999; /* 0 */
	case 31: // STATE 12 - lock_env2.pml:317 - [valve_pos_changed?1] (0:0:0 - 1)
		reached[2][12] = 1;
		if (q_zero(now.valve_pos_changed))
		{	if (boq != now.valve_pos_changed) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.valve_pos_changed) == 0) continue;

		XX=1;
		if (1 != qrecv(now.valve_pos_changed, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.valve_pos_changed-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.valve_pos_changed, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.valve_pos_changed);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.valve_pos_changed))
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
	case 32: // STATE 15 - lock_env2.pml:319 - [change_doors_pos!lockid,2] (0:0:0 - 3)
		IfNotBlocked
		reached[2][15] = 1;
		if (q_full(now.change_doors_pos))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_doors_pos);
		sprintf(simtmp, "%d", ((int)((P2 *)_this)->lockid)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_doors_pos, 0, ((int)((P2 *)_this)->lockid), 2, 2);
		if (q_zero(now.change_doors_pos)) { boq = now.change_doors_pos; };
		_m = 2; goto P999; /* 0 */
	case 33: // STATE 16 - lock_env2.pml:319 - [doors_pos_changed?1] (0:0:0 - 1)
		reached[2][16] = 1;
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
	case 34: // STATE 17 - lock_env2.pml:322 - [((doors_status[lockid].west==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][17] = 1;
		if (!((now.doors_status[ Index(((int)((P2 *)_this)->lockid), 3) ].west==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 21 - lock_env2.pml:324 - [observed_west[0]?1] (0:0:0 - 1)
		reached[2][21] = 1;
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
	case 36: // STATE 22 - lock_env2.pml:324 - [change_doors_pos!lockid,2] (0:0:0 - 1)
		IfNotBlocked
		reached[2][22] = 1;
		if (q_full(now.change_doors_pos))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_doors_pos);
		sprintf(simtmp, "%d", ((int)((P2 *)_this)->lockid)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_doors_pos, 0, ((int)((P2 *)_this)->lockid), 2, 2);
		if (q_zero(now.change_doors_pos)) { boq = now.change_doors_pos; };
		_m = 2; goto P999; /* 0 */
	case 37: // STATE 23 - lock_env2.pml:324 - [doors_pos_changed?1] (0:0:0 - 1)
		reached[2][23] = 1;
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
	case 38: // STATE 25 - lock_env2.pml:327 - [request_east?1,lockid] (0:0:1 - 1)
		reached[2][25] = 1;
		if (q_zero(now.request_east))
		{	if (boq != now.request_east) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.request_east) == 0) continue;

		XX=1;
		if (1 != qrecv(now.request_east, 0, 0, 0)) continue;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->lockid);
		;
		((P2 *)_this)->lockid = qrecv(now.request_east, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("main_control:lockid", ((int)((P2 *)_this)->lockid));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.request_east);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
			strcat(simvals, ",");
			sprintf(simtmp, "%d", ((int)((P2 *)_this)->lockid)); strcat(simvals, simtmp);
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
	case 39: // STATE 26 - lock_env2.pml:329 - [((doors_status[lockid].east==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][26] = 1;
		if (!((now.doors_status[ Index(((int)((P2 *)_this)->lockid), 3) ].east==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 27 - lock_env2.pml:332 - [((LOCK_ORIENTATION[lockid]==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][27] = 1;
		if (!((now.LOCK_ORIENTATION[ Index(((int)((P2 *)_this)->lockid), 3) ]==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 28 - lock_env2.pml:332 - [change_valve_pos!lockid,2] (0:0:0 - 1)
		IfNotBlocked
		reached[2][28] = 1;
		if (q_full(now.change_valve_pos))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_valve_pos);
		sprintf(simtmp, "%d", ((int)((P2 *)_this)->lockid)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_valve_pos, 0, ((int)((P2 *)_this)->lockid), 2, 2);
		if (q_zero(now.change_valve_pos)) { boq = now.change_valve_pos; };
		_m = 2; goto P999; /* 0 */
	case 42: // STATE 29 - lock_env2.pml:333 - [valve_pos_changed?1] (0:0:0 - 1)
		reached[2][29] = 1;
		if (q_zero(now.valve_pos_changed))
		{	if (boq != now.valve_pos_changed) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.valve_pos_changed) == 0) continue;

		XX=1;
		if (1 != qrecv(now.valve_pos_changed, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.valve_pos_changed-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.valve_pos_changed, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.valve_pos_changed);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.valve_pos_changed))
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
	case 43: // STATE 30 - lock_env2.pml:334 - [change_valve_pos!lockid,2] (0:0:0 - 1)
		IfNotBlocked
		reached[2][30] = 1;
		if (q_full(now.change_valve_pos))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_valve_pos);
		sprintf(simtmp, "%d", ((int)((P2 *)_this)->lockid)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_valve_pos, 0, ((int)((P2 *)_this)->lockid), 2, 2);
		if (q_zero(now.change_valve_pos)) { boq = now.change_valve_pos; };
		_m = 2; goto P999; /* 0 */
	case 44: // STATE 31 - lock_env2.pml:335 - [valve_pos_changed?1] (0:0:0 - 1)
		reached[2][31] = 1;
		if (q_zero(now.valve_pos_changed))
		{	if (boq != now.valve_pos_changed) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.valve_pos_changed) == 0) continue;

		XX=1;
		if (1 != qrecv(now.valve_pos_changed, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.valve_pos_changed-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.valve_pos_changed, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.valve_pos_changed);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.valve_pos_changed))
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
	case 45: // STATE 32 - lock_env2.pml:336 - [((LOCK_ORIENTATION[lockid]==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][32] = 1;
		if (!((now.LOCK_ORIENTATION[ Index(((int)((P2 *)_this)->lockid), 3) ]==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 33 - lock_env2.pml:336 - [change_valve_pos!lockid,1] (0:0:0 - 1)
		IfNotBlocked
		reached[2][33] = 1;
		if (q_full(now.change_valve_pos))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_valve_pos);
		sprintf(simtmp, "%d", ((int)((P2 *)_this)->lockid)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_valve_pos, 0, ((int)((P2 *)_this)->lockid), 1, 2);
		if (q_zero(now.change_valve_pos)) { boq = now.change_valve_pos; };
		_m = 2; goto P999; /* 0 */
	case 47: // STATE 34 - lock_env2.pml:337 - [valve_pos_changed?1] (0:0:0 - 1)
		reached[2][34] = 1;
		if (q_zero(now.valve_pos_changed))
		{	if (boq != now.valve_pos_changed) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.valve_pos_changed) == 0) continue;

		XX=1;
		if (1 != qrecv(now.valve_pos_changed, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.valve_pos_changed-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.valve_pos_changed, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.valve_pos_changed);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.valve_pos_changed))
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
	case 48: // STATE 35 - lock_env2.pml:338 - [change_valve_pos!lockid,1] (0:0:0 - 1)
		IfNotBlocked
		reached[2][35] = 1;
		if (q_full(now.change_valve_pos))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_valve_pos);
		sprintf(simtmp, "%d", ((int)((P2 *)_this)->lockid)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_valve_pos, 0, ((int)((P2 *)_this)->lockid), 1, 2);
		if (q_zero(now.change_valve_pos)) { boq = now.change_valve_pos; };
		_m = 2; goto P999; /* 0 */
	case 49: // STATE 36 - lock_env2.pml:339 - [valve_pos_changed?1] (0:0:0 - 1)
		reached[2][36] = 1;
		if (q_zero(now.valve_pos_changed))
		{	if (boq != now.valve_pos_changed) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.valve_pos_changed) == 0) continue;

		XX=1;
		if (1 != qrecv(now.valve_pos_changed, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.valve_pos_changed-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.valve_pos_changed, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.valve_pos_changed);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.valve_pos_changed))
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
	case 50: // STATE 39 - lock_env2.pml:341 - [change_doors_pos!lockid,1] (0:0:0 - 3)
		IfNotBlocked
		reached[2][39] = 1;
		if (q_full(now.change_doors_pos))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_doors_pos);
		sprintf(simtmp, "%d", ((int)((P2 *)_this)->lockid)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_doors_pos, 0, ((int)((P2 *)_this)->lockid), 1, 2);
		if (q_zero(now.change_doors_pos)) { boq = now.change_doors_pos; };
		_m = 2; goto P999; /* 0 */
	case 51: // STATE 40 - lock_env2.pml:341 - [doors_pos_changed?1] (0:0:0 - 1)
		reached[2][40] = 1;
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
	case 52: // STATE 41 - lock_env2.pml:342 - [((doors_status[lockid].east==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][41] = 1;
		if (!((now.doors_status[ Index(((int)((P2 *)_this)->lockid), 3) ].east==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 45 - lock_env2.pml:344 - [observed_east[0]?1] (0:0:0 - 1)
		reached[2][45] = 1;
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
	case 54: // STATE 46 - lock_env2.pml:344 - [change_doors_pos!lockid,1] (0:0:0 - 1)
		IfNotBlocked
		reached[2][46] = 1;
		if (q_full(now.change_doors_pos))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_doors_pos);
		sprintf(simtmp, "%d", ((int)((P2 *)_this)->lockid)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_doors_pos, 0, ((int)((P2 *)_this)->lockid), 1, 2);
		if (q_zero(now.change_doors_pos)) { boq = now.change_doors_pos; };
		_m = 2; goto P999; /* 0 */
	case 55: // STATE 47 - lock_env2.pml:344 - [doors_pos_changed?1] (0:0:0 - 1)
		reached[2][47] = 1;
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
	case 56: // STATE 52 - lock_env2.pml:348 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][52] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC ship */
	case 57: // STATE 1 - lock_env2.pml:182 - [(((ship_status[shipid]==3)&&(ship_pos[shipid]!=0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (!(((now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]==3)&&(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])!=0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 2 - lock_env2.pml:184 - [((doors_status[(ship_pos[shipid]-1)].east==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((now.doors_status[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 3) ].east==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 3 - lock_env2.pml:185 - [request_east!1,(ship_pos[shipid]-1)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (q_full(now.request_east))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.request_east);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", (((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.request_east, 0, 1, (((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 2);
		if (q_zero(now.request_east)) { boq = now.request_east; };
		_m = 2; goto P999; /* 0 */
	case 60: // STATE 4 - lock_env2.pml:186 - [((doors_status[(ship_pos[shipid]-1)].east==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (!((now.doors_status[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 3) ].east==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 5 - lock_env2.pml:188 - [(!(lock_is_occupied[(ship_pos[shipid]-1)]))] (9:0:3 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		if (!( !(((int)now.lock_is_occupied[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 3) ]))))
			continue;
		/* merge: ship_status[shipid] = 2(9, 6, 9) */
		reached[1][6] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = 2;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]);
#endif
		;
		/* merge: lock_is_occupied[(ship_pos[shipid]-1)] = 1(9, 7, 9) */
		reached[1][7] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 3) ]);
		now.lock_is_occupied[ Index((now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ]-1), 3) ] = 1;
#ifdef VAR_RANGES
		logval("lock_is_occupied[(ship_pos[ship:shipid]-1)]", ((int)now.lock_is_occupied[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 3) ]));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]-1)(9, 8, 9) */
		reached[1][8] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ])-1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 62: // STATE 9 - lock_env2.pml:192 - [observed_east[0]!1] (0:0:0 - 1)
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
		
		qsend(now.observed_east[0], 0, 1, 0, 1);
		if (q_zero(now.observed_east[0])) { boq = now.observed_east[0]; };
		_m = 2; goto P999; /* 0 */
	case 63: // STATE 11 - lock_env2.pml:195 - [(lock_is_occupied[(ship_pos[shipid]-1)])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][11] = 1;
		if (!(((int)now.lock_is_occupied[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 3) ])))
			continue;
		_m = 3; goto P999; /* 0 */
	case 64: // STATE 12 - lock_env2.pml:196 - [observed_east[0]!1] (0:0:0 - 1)
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
		
		qsend(now.observed_east[0], 0, 1, 0, 1);
		if (q_zero(now.observed_east[0])) { boq = now.observed_east[0]; };
		_m = 2; goto P999; /* 0 */
	case 65: // STATE 16 - lock_env2.pml:199 - [(((doors_status[(ship_pos[shipid]-1)].east==1)&&!(lock_is_occupied[(ship_pos[shipid]-1)])))] (107:0:3 - 1)
		IfNotBlocked
		reached[1][16] = 1;
		if (!(((now.doors_status[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 3) ].east==1)&& !(((int)now.lock_is_occupied[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 3) ])))))
			continue;
		/* merge: ship_status[shipid] = 2(107, 17, 107) */
		reached[1][17] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = 2;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]);
#endif
		;
		/* merge: lock_is_occupied[(ship_pos[shipid]-1)] = 1(107, 18, 107) */
		reached[1][18] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 3) ]);
		now.lock_is_occupied[ Index((now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ]-1), 3) ] = 1;
#ifdef VAR_RANGES
		logval("lock_is_occupied[(ship_pos[ship:shipid]-1)]", ((int)now.lock_is_occupied[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 3) ]));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]-1)(107, 19, 107) */
		reached[1][19] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ])-1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]));
#endif
		;
		/* merge: goto :b2(107, 20, 107) */
		reached[1][20] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 66: // STATE 25 - lock_env2.pml:210 - [((ship_status[shipid]==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][25] = 1;
		if (!((now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 26 - lock_env2.pml:212 - [((doors_status[(ship_pos[shipid]-1)].west==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][26] = 1;
		if (!((now.doors_status[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 3) ].west==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 68: // STATE 27 - lock_env2.pml:213 - [request_west!1,(ship_pos[shipid]-1)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][27] = 1;
		if (q_full(now.request_west))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.request_west);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", (((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.request_west, 0, 1, (((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 2);
		if (q_zero(now.request_west)) { boq = now.request_west; };
		_m = 2; goto P999; /* 0 */
	case 69: // STATE 28 - lock_env2.pml:214 - [((doors_status[(ship_pos[shipid]-1)].west==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][28] = 1;
		if (!((now.doors_status[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 3) ].west==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 70: // STATE 29 - lock_env2.pml:217 - [(((nr_of_ships_at_pos[(ship_pos[shipid]-1)]<2)||((ship_pos[shipid]-1)==0)))] (34:0:4 - 1)
		IfNotBlocked
		reached[1][29] = 1;
		if (!(((((int)now.nr_of_ships_at_pos[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ])<2)||((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1)==0))))
			continue;
		/* merge: ship_status[shipid] = 3(34, 30, 34) */
		reached[1][30] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = 3;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]);
#endif
		;
		/* merge: lock_is_occupied[(ship_pos[shipid]-1)] = 0(34, 31, 34) */
		reached[1][31] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 3) ]);
		now.lock_is_occupied[ Index((now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ]-1), 3) ] = 0;
#ifdef VAR_RANGES
		logval("lock_is_occupied[(ship_pos[ship:shipid]-1)]", ((int)now.lock_is_occupied[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 3) ]));
#endif
		;
		/* merge: ship_pos[shipid] = (ship_pos[shipid]-1)(34, 32, 34) */
		reached[1][32] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]);
		now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ] = (((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1);
#ifdef VAR_RANGES
		logval("ship_pos[ship:shipid]", ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]+1)(34, 33, 34) */
		reached[1][33] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ])+1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]));
#endif
		;
		_m = 3; goto P999; /* 4 */
	case 71: // STATE 34 - lock_env2.pml:222 - [observed_west[0]!1] (0:0:0 - 1)
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
		
		qsend(now.observed_west[0], 0, 1, 0, 1);
		if (q_zero(now.observed_west[0])) { boq = now.observed_west[0]; };
		_m = 2; goto P999; /* 0 */
	case 72: // STATE 36 - lock_env2.pml:225 - [(((nr_of_ships_at_pos[(ship_pos[shipid]-1)]==2)&&((ship_pos[shipid]-1)!=0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][36] = 1;
		if (!(((((int)now.nr_of_ships_at_pos[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ])==2)&&((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1)!=0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 73: // STATE 37 - lock_env2.pml:226 - [observed_west[0]!1] (0:0:0 - 1)
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
		
		qsend(now.observed_west[0], 0, 1, 0, 1);
		if (q_zero(now.observed_west[0])) { boq = now.observed_west[0]; };
		_m = 2; goto P999; /* 0 */
	case 74: // STATE 41 - lock_env2.pml:230 - [(((doors_status[(ship_pos[shipid]-1)].west==1)&&((nr_of_ships_at_pos[(ship_pos[shipid]-1)]<2)||((ship_pos[shipid]-1)==0))))] (107:0:4 - 1)
		IfNotBlocked
		reached[1][41] = 1;
		if (!(((now.doors_status[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 3) ].west==1)&&((((int)now.nr_of_ships_at_pos[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ])<2)||((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1)==0)))))
			continue;
		/* merge: ship_status[shipid] = 3(107, 42, 107) */
		reached[1][42] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = 3;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]);
#endif
		;
		/* merge: lock_is_occupied[(ship_pos[shipid]-1)] = 0(107, 43, 107) */
		reached[1][43] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 3) ]);
		now.lock_is_occupied[ Index((now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ]-1), 3) ] = 0;
#ifdef VAR_RANGES
		logval("lock_is_occupied[(ship_pos[ship:shipid]-1)]", ((int)now.lock_is_occupied[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 3) ]));
#endif
		;
		/* merge: ship_pos[shipid] = (ship_pos[shipid]-1)(107, 44, 107) */
		reached[1][44] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]);
		now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ] = (((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1);
#ifdef VAR_RANGES
		logval("ship_pos[ship:shipid]", ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]+1)(107, 45, 107) */
		reached[1][45] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ])+1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]));
#endif
		;
		/* merge: goto :b3(107, 46, 107) */
		reached[1][46] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 75: // STATE 51 - lock_env2.pml:242 - [(((ship_status[shipid]==5)&&(ship_pos[shipid]!=3)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][51] = 1;
		if (!(((now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]==5)&&(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])!=3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 76: // STATE 52 - lock_env2.pml:244 - [((doors_status[ship_pos[shipid]].west==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][52] = 1;
		if (!((now.doors_status[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 3) ].west==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 77: // STATE 53 - lock_env2.pml:245 - [request_west!1,ship_pos[shipid]] (0:0:0 - 1)
		IfNotBlocked
		reached[1][53] = 1;
		if (q_full(now.request_west))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.request_west);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.request_west, 0, 1, ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 2);
		if (q_zero(now.request_west)) { boq = now.request_west; };
		_m = 2; goto P999; /* 0 */
	case 78: // STATE 54 - lock_env2.pml:246 - [((doors_status[ship_pos[shipid]].west==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][54] = 1;
		if (!((now.doors_status[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 3) ].west==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 79: // STATE 55 - lock_env2.pml:248 - [(!(lock_is_occupied[ship_pos[shipid]]))] (59:0:3 - 1)
		IfNotBlocked
		reached[1][55] = 1;
		if (!( !(((int)now.lock_is_occupied[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 3) ]))))
			continue;
		/* merge: ship_status[shipid] = 4(59, 56, 59) */
		reached[1][56] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = 4;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]);
#endif
		;
		/* merge: lock_is_occupied[ship_pos[shipid]] = 1(59, 57, 59) */
		reached[1][57] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 3) ]);
		now.lock_is_occupied[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 3) ] = 1;
#ifdef VAR_RANGES
		logval("lock_is_occupied[ship_pos[ship:shipid]]", ((int)now.lock_is_occupied[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 3) ]));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]-1)(59, 58, 59) */
		reached[1][58] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ])-1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 80: // STATE 59 - lock_env2.pml:252 - [observed_west[0]!1] (0:0:0 - 1)
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
		
		qsend(now.observed_west[0], 0, 1, 0, 1);
		if (q_zero(now.observed_west[0])) { boq = now.observed_west[0]; };
		_m = 2; goto P999; /* 0 */
	case 81: // STATE 61 - lock_env2.pml:254 - [(lock_is_occupied[ship_pos[shipid]])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][61] = 1;
		if (!(((int)now.lock_is_occupied[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 3) ])))
			continue;
		_m = 3; goto P999; /* 0 */
	case 82: // STATE 62 - lock_env2.pml:255 - [observed_west[0]!1] (0:0:0 - 1)
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
		
		qsend(now.observed_west[0], 0, 1, 0, 1);
		if (q_zero(now.observed_west[0])) { boq = now.observed_west[0]; };
		_m = 2; goto P999; /* 0 */
	case 83: // STATE 66 - lock_env2.pml:258 - [(((doors_status[ship_pos[shipid]].west==1)&&!(lock_is_occupied[ship_pos[shipid]])))] (107:0:3 - 1)
		IfNotBlocked
		reached[1][66] = 1;
		if (!(((now.doors_status[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 3) ].west==1)&& !(((int)now.lock_is_occupied[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 3) ])))))
			continue;
		/* merge: ship_status[shipid] = 4(107, 67, 107) */
		reached[1][67] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = 4;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]);
#endif
		;
		/* merge: lock_is_occupied[ship_pos[shipid]] = 1(107, 68, 107) */
		reached[1][68] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 3) ]);
		now.lock_is_occupied[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 3) ] = 1;
#ifdef VAR_RANGES
		logval("lock_is_occupied[ship_pos[ship:shipid]]", ((int)now.lock_is_occupied[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 3) ]));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]-1)(107, 69, 107) */
		reached[1][69] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ])-1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]));
#endif
		;
		/* merge: goto :b4(107, 70, 107) */
		reached[1][70] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 84: // STATE 75 - lock_env2.pml:266 - [((ship_status[shipid]==4))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][75] = 1;
		if (!((now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 85: // STATE 76 - lock_env2.pml:268 - [((doors_status[ship_pos[shipid]].east==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][76] = 1;
		if (!((now.doors_status[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 3) ].east==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 86: // STATE 77 - lock_env2.pml:269 - [request_east!1,ship_pos[shipid]] (0:0:0 - 1)
		IfNotBlocked
		reached[1][77] = 1;
		if (q_full(now.request_east))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.request_east);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.request_east, 0, 1, ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 2);
		if (q_zero(now.request_east)) { boq = now.request_east; };
		_m = 2; goto P999; /* 0 */
	case 87: // STATE 78 - lock_env2.pml:270 - [((doors_status[ship_pos[shipid]].east==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][78] = 1;
		if (!((now.doors_status[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 3) ].east==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 88: // STATE 79 - lock_env2.pml:273 - [(((nr_of_ships_at_pos[(ship_pos[shipid]+1)]<2)||((ship_pos[shipid]+1)==3)))] (84:0:4 - 1)
		IfNotBlocked
		reached[1][79] = 1;
		if (!(((((int)now.nr_of_ships_at_pos[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])+1), 4) ])<2)||((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])+1)==3))))
			continue;
		/* merge: ship_status[shipid] = 5(84, 80, 84) */
		reached[1][80] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = 5;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]);
#endif
		;
		/* merge: lock_is_occupied[ship_pos[shipid]] = 0(84, 81, 84) */
		reached[1][81] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 3) ]);
		now.lock_is_occupied[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 3) ] = 0;
#ifdef VAR_RANGES
		logval("lock_is_occupied[ship_pos[ship:shipid]]", ((int)now.lock_is_occupied[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 3) ]));
#endif
		;
		/* merge: ship_pos[shipid] = (ship_pos[shipid]+1)(84, 82, 84) */
		reached[1][82] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]);
		now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ] = (((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])+1);
#ifdef VAR_RANGES
		logval("ship_pos[ship:shipid]", ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]+1)(84, 83, 84) */
		reached[1][83] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ])+1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]));
#endif
		;
		_m = 3; goto P999; /* 4 */
	case 89: // STATE 84 - lock_env2.pml:278 - [observed_east[0]!1] (0:0:0 - 1)
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
		
		qsend(now.observed_east[0], 0, 1, 0, 1);
		if (q_zero(now.observed_east[0])) { boq = now.observed_east[0]; };
		_m = 2; goto P999; /* 0 */
	case 90: // STATE 86 - lock_env2.pml:281 - [(((nr_of_ships_at_pos[(ship_pos[shipid]+1)]==2)&&((ship_pos[shipid]+1)!=3)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][86] = 1;
		if (!(((((int)now.nr_of_ships_at_pos[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])+1), 4) ])==2)&&((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])+1)!=3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 91: // STATE 87 - lock_env2.pml:282 - [observed_east[0]!1] (0:0:0 - 1)
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
		
		qsend(now.observed_east[0], 0, 1, 0, 1);
		if (q_zero(now.observed_east[0])) { boq = now.observed_east[0]; };
		_m = 2; goto P999; /* 0 */
	case 92: // STATE 91 - lock_env2.pml:286 - [(((doors_status[ship_pos[shipid]].east==1)&&((nr_of_ships_at_pos[(ship_pos[shipid]+1)]<2)||((ship_pos[shipid]+1)==3))))] (107:0:4 - 1)
		IfNotBlocked
		reached[1][91] = 1;
		if (!(((now.doors_status[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 3) ].east==1)&&((((int)now.nr_of_ships_at_pos[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])+1), 4) ])<2)||((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])+1)==3)))))
			continue;
		/* merge: ship_status[shipid] = 5(107, 92, 107) */
		reached[1][92] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = 5;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]);
#endif
		;
		/* merge: lock_is_occupied[ship_pos[shipid]] = 0(107, 93, 107) */
		reached[1][93] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 3) ]);
		now.lock_is_occupied[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 3) ] = 0;
#ifdef VAR_RANGES
		logval("lock_is_occupied[ship_pos[ship:shipid]]", ((int)now.lock_is_occupied[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 3) ]));
#endif
		;
		/* merge: ship_pos[shipid] = (ship_pos[shipid]+1)(107, 94, 107) */
		reached[1][94] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]);
		now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ] = (((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])+1);
#ifdef VAR_RANGES
		logval("ship_pos[ship:shipid]", ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]+1)(107, 95, 107) */
		reached[1][95] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ])+1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]));
#endif
		;
		/* merge: goto :b5(107, 96, 107) */
		reached[1][96] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 93: // STATE 101 - lock_env2.pml:293 - [(((ship_status[shipid]==3)&&(ship_pos[shipid]==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][101] = 1;
		if (!(((now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]==3)&&(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 94: // STATE 102 - lock_env2.pml:294 - [ship_status[shipid] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][102] = 1;
		(trpt+1)->bup.oval = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = 1;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 95: // STATE 103 - lock_env2.pml:294 - [ship_status[shipid] = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[1][103] = 1;
		(trpt+1)->bup.oval = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = 5;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 96: // STATE 104 - lock_env2.pml:295 - [(((ship_status[shipid]==5)&&(ship_pos[shipid]==3)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][104] = 1;
		if (!(((now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]==5)&&(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 97: // STATE 105 - lock_env2.pml:296 - [ship_status[shipid] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][105] = 1;
		(trpt+1)->bup.oval = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = 1;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 98: // STATE 106 - lock_env2.pml:296 - [ship_status[shipid] = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[1][106] = 1;
		(trpt+1)->bup.oval = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = 3;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 99: // STATE 110 - lock_env2.pml:298 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][110] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC lock */
	case 100: // STATE 1 - lock_env2.pml:106 - [change_doors_pos?lockid2,2] (0:0:1 - 1)
		reached[0][1] = 1;
		if (q_zero(now.change_doors_pos))
		{	if (boq != now.change_doors_pos) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.change_doors_pos) == 0) continue;

		XX=1;
		if (2 != qrecv(now.change_doors_pos, 0, 1, 0)) continue;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->lockid2);
		;
		((P0 *)_this)->lockid2 = qrecv(now.change_doors_pos, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("lock:lockid2", ((int)((P0 *)_this)->lockid2));
#endif
		;
		qrecv(now.change_doors_pos, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.change_doors_pos);
			sprintf(simtmp, "%d", ((int)((P0 *)_this)->lockid2)); strcat(simvals, simtmp);
			strcat(simvals, ",");
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
	case 101: // STATE 2 - lock_env2.pml:108 - [((doors_status[lockid2].west==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((now.doors_status[ Index(((int)((P0 *)_this)->lockid2), 3) ].west==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 102: // STATE 3 - lock_env2.pml:109 - [doors_status[lockid2].west = 1] (0:7:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = now.doors_status[ Index(((int)((P0 *)_this)->lockid2), 3) ].west;
		now.doors_status[ Index(((P0 *)_this)->lockid2, 3) ].west = 1;
#ifdef VAR_RANGES
		logval("doors_status[lock:lockid2].west", now.doors_status[ Index(((int)((P0 *)_this)->lockid2), 3) ].west);
#endif
		;
		/* merge: assert((doors_status[lockid2].east==2))(7, 4, 7) */
		reached[0][4] = 1;
		spin_assert((now.doors_status[ Index(((int)((P0 *)_this)->lockid2), 3) ].east==2), "(doors_status[lockid2].east==2)", II, tt, t);
		/* merge: assert((!((LOCK_ORIENTATION[lockid2]==2))||(valve_status[lockid2].higher==2)))(7, 5, 7) */
		reached[0][5] = 1;
		spin_assert(( !((now.LOCK_ORIENTATION[ Index(((int)((P0 *)_this)->lockid2), 3) ]==2))||(now.valve_status[ Index(((int)((P0 *)_this)->lockid2), 3) ].higher==2)), "( !((LOCK_ORIENTATION[lockid2]==2))||(valve_status[lockid2].higher==2))", II, tt, t);
		/* merge: assert((!((LOCK_ORIENTATION[lockid2]==1))||(valve_status[lockid2].lower==2)))(7, 6, 7) */
		reached[0][6] = 1;
		spin_assert(( !((now.LOCK_ORIENTATION[ Index(((int)((P0 *)_this)->lockid2), 3) ]==1))||(now.valve_status[ Index(((int)((P0 *)_this)->lockid2), 3) ].lower==2)), "( !((LOCK_ORIENTATION[lockid2]==1))||(valve_status[lockid2].lower==2))", II, tt, t);
		_m = 3; goto P999; /* 3 */
	case 103: // STATE 7 - lock_env2.pml:113 - [doors_pos_changed!1] (0:0:0 - 1)
		IfNotBlocked
		reached[0][7] = 1;
		if (q_full(now.doors_pos_changed))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.doors_pos_changed);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.doors_pos_changed, 0, 1, 0, 1);
		if (q_zero(now.doors_pos_changed)) { boq = now.doors_pos_changed; };
		_m = 2; goto P999; /* 0 */
	case 104: // STATE 9 - lock_env2.pml:123 - [((doors_status[lockid2].west==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		if (!((now.doors_status[ Index(((int)((P0 *)_this)->lockid2), 3) ].west==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 105: // STATE 10 - lock_env2.pml:123 - [doors_status[lockid2].west = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		(trpt+1)->bup.oval = now.doors_status[ Index(((int)((P0 *)_this)->lockid2), 3) ].west;
		now.doors_status[ Index(((P0 *)_this)->lockid2, 3) ].west = 2;
#ifdef VAR_RANGES
		logval("doors_status[lock:lockid2].west", now.doors_status[ Index(((int)((P0 *)_this)->lockid2), 3) ].west);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 106: // STATE 11 - lock_env2.pml:123 - [doors_pos_changed!1] (0:0:0 - 1)
		IfNotBlocked
		reached[0][11] = 1;
		if (q_full(now.doors_pos_changed))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.doors_pos_changed);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.doors_pos_changed, 0, 1, 0, 1);
		if (q_zero(now.doors_pos_changed)) { boq = now.doors_pos_changed; };
		_m = 2; goto P999; /* 0 */
	case 107: // STATE 15 - lock_env2.pml:126 - [change_doors_pos?lockid2,1] (0:0:1 - 1)
		reached[0][15] = 1;
		if (q_zero(now.change_doors_pos))
		{	if (boq != now.change_doors_pos) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.change_doors_pos) == 0) continue;

		XX=1;
		if (1 != qrecv(now.change_doors_pos, 0, 1, 0)) continue;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->lockid2);
		;
		((P0 *)_this)->lockid2 = qrecv(now.change_doors_pos, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("lock:lockid2", ((int)((P0 *)_this)->lockid2));
#endif
		;
		qrecv(now.change_doors_pos, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.change_doors_pos);
			sprintf(simtmp, "%d", ((int)((P0 *)_this)->lockid2)); strcat(simvals, simtmp);
			strcat(simvals, ",");
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
	case 108: // STATE 16 - lock_env2.pml:128 - [((doors_status[lockid2].east==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][16] = 1;
		if (!((now.doors_status[ Index(((int)((P0 *)_this)->lockid2), 3) ].east==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 109: // STATE 17 - lock_env2.pml:129 - [doors_status[lockid2].east = 1] (0:21:1 - 1)
		IfNotBlocked
		reached[0][17] = 1;
		(trpt+1)->bup.oval = now.doors_status[ Index(((int)((P0 *)_this)->lockid2), 3) ].east;
		now.doors_status[ Index(((P0 *)_this)->lockid2, 3) ].east = 1;
#ifdef VAR_RANGES
		logval("doors_status[lock:lockid2].east", now.doors_status[ Index(((int)((P0 *)_this)->lockid2), 3) ].east);
#endif
		;
		/* merge: assert((doors_status[lockid2].west==2))(21, 18, 21) */
		reached[0][18] = 1;
		spin_assert((now.doors_status[ Index(((int)((P0 *)_this)->lockid2), 3) ].west==2), "(doors_status[lockid2].west==2)", II, tt, t);
		/* merge: assert((!((LOCK_ORIENTATION[lockid2]==1))||(valve_status[lockid2].higher==2)))(21, 19, 21) */
		reached[0][19] = 1;
		spin_assert(( !((now.LOCK_ORIENTATION[ Index(((int)((P0 *)_this)->lockid2), 3) ]==1))||(now.valve_status[ Index(((int)((P0 *)_this)->lockid2), 3) ].higher==2)), "( !((LOCK_ORIENTATION[lockid2]==1))||(valve_status[lockid2].higher==2))", II, tt, t);
		/* merge: assert((!((LOCK_ORIENTATION[lockid2]==2))||(valve_status[lockid2].lower==2)))(21, 20, 21) */
		reached[0][20] = 1;
		spin_assert(( !((now.LOCK_ORIENTATION[ Index(((int)((P0 *)_this)->lockid2), 3) ]==2))||(now.valve_status[ Index(((int)((P0 *)_this)->lockid2), 3) ].lower==2)), "( !((LOCK_ORIENTATION[lockid2]==2))||(valve_status[lockid2].lower==2))", II, tt, t);
		_m = 3; goto P999; /* 3 */
	case 110: // STATE 21 - lock_env2.pml:133 - [doors_pos_changed!1] (0:0:0 - 1)
		IfNotBlocked
		reached[0][21] = 1;
		if (q_full(now.doors_pos_changed))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.doors_pos_changed);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.doors_pos_changed, 0, 1, 0, 1);
		if (q_zero(now.doors_pos_changed)) { boq = now.doors_pos_changed; };
		_m = 2; goto P999; /* 0 */
	case 111: // STATE 23 - lock_env2.pml:143 - [((doors_status[lockid2].east==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][23] = 1;
		if (!((now.doors_status[ Index(((int)((P0 *)_this)->lockid2), 3) ].east==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 112: // STATE 24 - lock_env2.pml:143 - [doors_status[lockid2].east = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][24] = 1;
		(trpt+1)->bup.oval = now.doors_status[ Index(((int)((P0 *)_this)->lockid2), 3) ].east;
		now.doors_status[ Index(((P0 *)_this)->lockid2, 3) ].east = 2;
#ifdef VAR_RANGES
		logval("doors_status[lock:lockid2].east", now.doors_status[ Index(((int)((P0 *)_this)->lockid2), 3) ].east);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 113: // STATE 25 - lock_env2.pml:143 - [doors_pos_changed!1] (0:0:0 - 1)
		IfNotBlocked
		reached[0][25] = 1;
		if (q_full(now.doors_pos_changed))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.doors_pos_changed);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.doors_pos_changed, 0, 1, 0, 1);
		if (q_zero(now.doors_pos_changed)) { boq = now.doors_pos_changed; };
		_m = 2; goto P999; /* 0 */
	case 114: // STATE 29 - lock_env2.pml:146 - [change_valve_pos?lockid2,2] (0:0:1 - 1)
		reached[0][29] = 1;
		if (q_zero(now.change_valve_pos))
		{	if (boq != now.change_valve_pos) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.change_valve_pos) == 0) continue;

		XX=1;
		if (2 != qrecv(now.change_valve_pos, 0, 1, 0)) continue;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->lockid2);
		;
		((P0 *)_this)->lockid2 = qrecv(now.change_valve_pos, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("lock:lockid2", ((int)((P0 *)_this)->lockid2));
#endif
		;
		qrecv(now.change_valve_pos, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.change_valve_pos);
			sprintf(simtmp, "%d", ((int)((P0 *)_this)->lockid2)); strcat(simvals, simtmp);
			strcat(simvals, ",");
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
	case 115: // STATE 30 - lock_env2.pml:147 - [assert((!((LOCK_ORIENTATION[lockid2]==2))||(doors_status[lockid2].east==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][30] = 1;
		spin_assert(( !((now.LOCK_ORIENTATION[ Index(((int)((P0 *)_this)->lockid2), 3) ]==2))||(now.doors_status[ Index(((int)((P0 *)_this)->lockid2), 3) ].east==2)), "( !((LOCK_ORIENTATION[lockid2]==2))||(doors_status[lockid2].east==2))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 116: // STATE 31 - lock_env2.pml:148 - [assert((!((LOCK_ORIENTATION[lockid2]==1))||(doors_status[lockid2].west==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][31] = 1;
		spin_assert(( !((now.LOCK_ORIENTATION[ Index(((int)((P0 *)_this)->lockid2), 3) ]==1))||(now.doors_status[ Index(((int)((P0 *)_this)->lockid2), 3) ].west==2)), "( !((LOCK_ORIENTATION[lockid2]==1))||(doors_status[lockid2].west==2))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 117: // STATE 32 - lock_env2.pml:150 - [((valve_status[lockid2].lower==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][32] = 1;
		if (!((now.valve_status[ Index(((int)((P0 *)_this)->lockid2), 3) ].lower==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 118: // STATE 33 - lock_env2.pml:150 - [valve_status[lockid2].lower = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][33] = 1;
		(trpt+1)->bup.oval = now.valve_status[ Index(((int)((P0 *)_this)->lockid2), 3) ].lower;
		now.valve_status[ Index(((P0 *)_this)->lockid2, 3) ].lower = 1;
#ifdef VAR_RANGES
		logval("valve_status[lock:lockid2].lower", now.valve_status[ Index(((int)((P0 *)_this)->lockid2), 3) ].lower);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 119: // STATE 34 - lock_env2.pml:151 - [assert((!((LOCK_ORIENTATION[lockid2]==2))||(doors_status[lockid2].east==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][34] = 1;
		spin_assert(( !((now.LOCK_ORIENTATION[ Index(((int)((P0 *)_this)->lockid2), 3) ]==2))||(now.doors_status[ Index(((int)((P0 *)_this)->lockid2), 3) ].east==2)), "( !((LOCK_ORIENTATION[lockid2]==2))||(doors_status[lockid2].east==2))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 120: // STATE 35 - lock_env2.pml:152 - [assert((!((LOCK_ORIENTATION[lockid2]==1))||(doors_status[lockid2].west==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][35] = 1;
		spin_assert(( !((now.LOCK_ORIENTATION[ Index(((int)((P0 *)_this)->lockid2), 3) ]==1))||(now.doors_status[ Index(((int)((P0 *)_this)->lockid2), 3) ].west==2)), "( !((LOCK_ORIENTATION[lockid2]==1))||(doors_status[lockid2].west==2))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 121: // STATE 36 - lock_env2.pml:153 - [lock_water_level[lockid2] = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][36] = 1;
		(trpt+1)->bup.oval = lock_water_level[ Index(((int)((P0 *)_this)->lockid2), 3) ];
		lock_water_level[ Index(((P0 *)_this)->lockid2, 3) ] = 2;
#ifdef VAR_RANGES
		logval("lock_water_level[lock:lockid2]", lock_water_level[ Index(((int)((P0 *)_this)->lockid2), 3) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 122: // STATE 37 - lock_env2.pml:154 - [((valve_status[lockid2].lower==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][37] = 1;
		if (!((now.valve_status[ Index(((int)((P0 *)_this)->lockid2), 3) ].lower==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 123: // STATE 38 - lock_env2.pml:154 - [valve_status[lockid2].lower = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][38] = 1;
		(trpt+1)->bup.oval = now.valve_status[ Index(((int)((P0 *)_this)->lockid2), 3) ].lower;
		now.valve_status[ Index(((P0 *)_this)->lockid2, 3) ].lower = 2;
#ifdef VAR_RANGES
		logval("valve_status[lock:lockid2].lower", now.valve_status[ Index(((int)((P0 *)_this)->lockid2), 3) ].lower);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 124: // STATE 41 - lock_env2.pml:156 - [valve_pos_changed!1] (0:0:0 - 3)
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
		
		qsend(now.valve_pos_changed, 0, 1, 0, 1);
		if (q_zero(now.valve_pos_changed)) { boq = now.valve_pos_changed; };
		_m = 2; goto P999; /* 0 */
	case 125: // STATE 42 - lock_env2.pml:157 - [change_valve_pos?lockid2,1] (0:0:1 - 1)
		reached[0][42] = 1;
		if (q_zero(now.change_valve_pos))
		{	if (boq != now.change_valve_pos) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.change_valve_pos) == 0) continue;

		XX=1;
		if (1 != qrecv(now.change_valve_pos, 0, 1, 0)) continue;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->lockid2);
		;
		((P0 *)_this)->lockid2 = qrecv(now.change_valve_pos, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("lock:lockid2", ((int)((P0 *)_this)->lockid2));
#endif
		;
		qrecv(now.change_valve_pos, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.change_valve_pos);
			sprintf(simtmp, "%d", ((int)((P0 *)_this)->lockid2)); strcat(simvals, simtmp);
			strcat(simvals, ",");
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
	case 126: // STATE 43 - lock_env2.pml:158 - [assert((!((LOCK_ORIENTATION[lockid2]==2))||(doors_status[lockid2].west==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][43] = 1;
		spin_assert(( !((now.LOCK_ORIENTATION[ Index(((int)((P0 *)_this)->lockid2), 3) ]==2))||(now.doors_status[ Index(((int)((P0 *)_this)->lockid2), 3) ].west==2)), "( !((LOCK_ORIENTATION[lockid2]==2))||(doors_status[lockid2].west==2))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 127: // STATE 44 - lock_env2.pml:159 - [assert((!((LOCK_ORIENTATION[lockid2]==1))||(doors_status[lockid2].east==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][44] = 1;
		spin_assert(( !((now.LOCK_ORIENTATION[ Index(((int)((P0 *)_this)->lockid2), 3) ]==1))||(now.doors_status[ Index(((int)((P0 *)_this)->lockid2), 3) ].east==2)), "( !((LOCK_ORIENTATION[lockid2]==1))||(doors_status[lockid2].east==2))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 128: // STATE 45 - lock_env2.pml:161 - [((valve_status[lockid2].higher==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][45] = 1;
		if (!((now.valve_status[ Index(((int)((P0 *)_this)->lockid2), 3) ].higher==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 129: // STATE 46 - lock_env2.pml:161 - [valve_status[lockid2].higher = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][46] = 1;
		(trpt+1)->bup.oval = now.valve_status[ Index(((int)((P0 *)_this)->lockid2), 3) ].higher;
		now.valve_status[ Index(((P0 *)_this)->lockid2, 3) ].higher = 1;
#ifdef VAR_RANGES
		logval("valve_status[lock:lockid2].higher", now.valve_status[ Index(((int)((P0 *)_this)->lockid2), 3) ].higher);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 130: // STATE 47 - lock_env2.pml:162 - [assert((!((LOCK_ORIENTATION[lockid2]==2))||(doors_status[lockid2].west==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][47] = 1;
		spin_assert(( !((now.LOCK_ORIENTATION[ Index(((int)((P0 *)_this)->lockid2), 3) ]==2))||(now.doors_status[ Index(((int)((P0 *)_this)->lockid2), 3) ].west==2)), "( !((LOCK_ORIENTATION[lockid2]==2))||(doors_status[lockid2].west==2))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 131: // STATE 48 - lock_env2.pml:163 - [assert((!((LOCK_ORIENTATION[lockid2]==1))||(doors_status[lockid2].east==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][48] = 1;
		spin_assert(( !((now.LOCK_ORIENTATION[ Index(((int)((P0 *)_this)->lockid2), 3) ]==1))||(now.doors_status[ Index(((int)((P0 *)_this)->lockid2), 3) ].east==2)), "( !((LOCK_ORIENTATION[lockid2]==1))||(doors_status[lockid2].east==2))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 132: // STATE 49 - lock_env2.pml:165 - [((((LOCK_ORIENTATION[lockid2]==2)&&(doors_status[lockid2].west==2))&&(valve_status[lockid2].lower==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][49] = 1;
		if (!((((now.LOCK_ORIENTATION[ Index(((int)((P0 *)_this)->lockid2), 3) ]==2)&&(now.doors_status[ Index(((int)((P0 *)_this)->lockid2), 3) ].west==2))&&(now.valve_status[ Index(((int)((P0 *)_this)->lockid2), 3) ].lower==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 133: // STATE 50 - lock_env2.pml:166 - [lock_water_level[lockid2] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][50] = 1;
		(trpt+1)->bup.oval = lock_water_level[ Index(((int)((P0 *)_this)->lockid2), 3) ];
		lock_water_level[ Index(((P0 *)_this)->lockid2, 3) ] = 1;
#ifdef VAR_RANGES
		logval("lock_water_level[lock:lockid2]", lock_water_level[ Index(((int)((P0 *)_this)->lockid2), 3) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 134: // STATE 51 - lock_env2.pml:167 - [((((LOCK_ORIENTATION[lockid2]==1)&&(doors_status[lockid2].east==2))&&(valve_status[lockid2].lower==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][51] = 1;
		if (!((((now.LOCK_ORIENTATION[ Index(((int)((P0 *)_this)->lockid2), 3) ]==1)&&(now.doors_status[ Index(((int)((P0 *)_this)->lockid2), 3) ].east==2))&&(now.valve_status[ Index(((int)((P0 *)_this)->lockid2), 3) ].lower==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 135: // STATE 52 - lock_env2.pml:168 - [lock_water_level[lockid2] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][52] = 1;
		(trpt+1)->bup.oval = lock_water_level[ Index(((int)((P0 *)_this)->lockid2), 3) ];
		lock_water_level[ Index(((P0 *)_this)->lockid2, 3) ] = 1;
#ifdef VAR_RANGES
		logval("lock_water_level[lock:lockid2]", lock_water_level[ Index(((int)((P0 *)_this)->lockid2), 3) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 136: // STATE 57 - lock_env2.pml:171 - [((valve_status[lockid2].higher==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][57] = 1;
		if (!((now.valve_status[ Index(((int)((P0 *)_this)->lockid2), 3) ].higher==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 137: // STATE 58 - lock_env2.pml:171 - [valve_status[lockid2].higher = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][58] = 1;
		(trpt+1)->bup.oval = now.valve_status[ Index(((int)((P0 *)_this)->lockid2), 3) ].higher;
		now.valve_status[ Index(((P0 *)_this)->lockid2, 3) ].higher = 2;
#ifdef VAR_RANGES
		logval("valve_status[lock:lockid2].higher", now.valve_status[ Index(((int)((P0 *)_this)->lockid2), 3) ].higher);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 138: // STATE 61 - lock_env2.pml:173 - [valve_pos_changed!1] (0:0:0 - 6)
		IfNotBlocked
		reached[0][61] = 1;
		if (q_full(now.valve_pos_changed))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.valve_pos_changed);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.valve_pos_changed, 0, 1, 0, 1);
		if (q_zero(now.valve_pos_changed)) { boq = now.valve_pos_changed; };
		_m = 2; goto P999; /* 0 */
	case 139: // STATE 65 - lock_env2.pml:175 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][65] = 1;
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


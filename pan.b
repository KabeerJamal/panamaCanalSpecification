	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC :init: */

	case 3: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 4: // STATE 2
		;
		((P4 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 5: // STATE 10
		;
		now.lock_is_occupied[ Index(((P4 *)_this)->proc, 3) ] = trpt->bup.ovals[6];
		lock_water_level[ Index(((P4 *)_this)->proc, 3) ] = trpt->bup.ovals[5];
		now.valve_status[ Index(((P4 *)_this)->proc, 3) ].higher = trpt->bup.ovals[4];
		now.valve_status[ Index(((P4 *)_this)->proc, 3) ].lower = trpt->bup.ovals[3];
		now.doors_status[ Index(((P4 *)_this)->proc, 3) ].east = trpt->bup.ovals[2];
		now.doors_status[ Index(((P4 *)_this)->proc, 3) ].west = trpt->bup.ovals[1];
		now.LOCK_ORIENTATION[ Index(((P4 *)_this)->proc, 3) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 7);
		goto R999;

	case 6: // STATE 11
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 7: // STATE 12
		;
		((P4 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 8: // STATE 18
		;
		((P4 *)_this)->proc = trpt->bup.ovals[1];
	/* 0 */	((P4 *)_this)->proc = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 9: // STATE 18
		;
		((P4 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 10: // STATE 21
		;
		now.ship_pos[ Index(((P4 *)_this)->proc, 2) ] = trpt->bup.ovals[1];
		now.ship_status[ Index(((P4 *)_this)->proc, 2) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 11: // STATE 22
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 12: // STATE 23
		;
		((P4 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 13: // STATE 25
		;
		((P4 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 14: // STATE 31
		;
		((P4 *)_this)->proc = trpt->bup.ovals[1];
	/* 0 */	((P4 *)_this)->proc = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 15: // STATE 31
		;
		((P4 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 16: // STATE 34
		;
		((P4 *)_this)->proc = trpt->bup.ovals[1];
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P4 *)_this)->proc, 2) ], 4) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 17: // STATE 41
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC monitor */
;
		;
		
	case 19: // STATE 2
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC main_control */

	case 20: // STATE 1
		;
		XX = 1;
		unrecv(now.request_west, XX-1, 0, 1, 1);
		unrecv(now.request_west, XX-1, 1, ((int)((P2 *)_this)->lockid), 0);
		((P2 *)_this)->lockid = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		;
		;
		
	case 23: // STATE 4
		;
		_m = unsend(now.change_valve_pos);
		;
		goto R999;

	case 24: // STATE 5
		;
		XX = 1;
		unrecv(now.valve_pos_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 25: // STATE 6
		;
		_m = unsend(now.change_valve_pos);
		;
		goto R999;

	case 26: // STATE 7
		;
		XX = 1;
		unrecv(now.valve_pos_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 28: // STATE 9
		;
		_m = unsend(now.change_valve_pos);
		;
		goto R999;

	case 29: // STATE 10
		;
		XX = 1;
		unrecv(now.valve_pos_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 30: // STATE 11
		;
		_m = unsend(now.change_valve_pos);
		;
		goto R999;

	case 31: // STATE 12
		;
		XX = 1;
		unrecv(now.valve_pos_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 32: // STATE 15
		;
		_m = unsend(now.change_doors_pos);
		;
		goto R999;

	case 33: // STATE 16
		;
		XX = 1;
		unrecv(now.doors_pos_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 35: // STATE 21
		;
		XX = 1;
		unrecv(now.observed_west[0], XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 36: // STATE 22
		;
		_m = unsend(now.change_doors_pos);
		;
		goto R999;

	case 37: // STATE 23
		;
		XX = 1;
		unrecv(now.doors_pos_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 38: // STATE 25
		;
		XX = 1;
		unrecv(now.request_east, XX-1, 0, 1, 1);
		unrecv(now.request_east, XX-1, 1, ((int)((P2 *)_this)->lockid), 0);
		((P2 *)_this)->lockid = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		;
		;
		
	case 41: // STATE 28
		;
		_m = unsend(now.change_valve_pos);
		;
		goto R999;

	case 42: // STATE 29
		;
		XX = 1;
		unrecv(now.valve_pos_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 43: // STATE 30
		;
		_m = unsend(now.change_valve_pos);
		;
		goto R999;

	case 44: // STATE 31
		;
		XX = 1;
		unrecv(now.valve_pos_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 46: // STATE 33
		;
		_m = unsend(now.change_valve_pos);
		;
		goto R999;

	case 47: // STATE 34
		;
		XX = 1;
		unrecv(now.valve_pos_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 48: // STATE 35
		;
		_m = unsend(now.change_valve_pos);
		;
		goto R999;

	case 49: // STATE 36
		;
		XX = 1;
		unrecv(now.valve_pos_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 50: // STATE 39
		;
		_m = unsend(now.change_doors_pos);
		;
		goto R999;

	case 51: // STATE 40
		;
		XX = 1;
		unrecv(now.doors_pos_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 53: // STATE 45
		;
		XX = 1;
		unrecv(now.observed_east[0], XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 54: // STATE 46
		;
		_m = unsend(now.change_doors_pos);
		;
		goto R999;

	case 55: // STATE 47
		;
		XX = 1;
		unrecv(now.doors_pos_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 56: // STATE 52
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC ship */
;
		;
		;
		;
		
	case 59: // STATE 3
		;
		_m = unsend(now.request_east);
		;
		goto R999;
;
		;
		
	case 61: // STATE 8
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = trpt->bup.ovals[2];
		now.lock_is_occupied[ Index((now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ]-1), 3) ] = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 62: // STATE 9
		;
		_m = unsend(now.observed_east[0]);
		;
		goto R999;
;
		;
		
	case 64: // STATE 12
		;
		_m = unsend(now.observed_east[0]);
		;
		goto R999;

	case 65: // STATE 19
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = trpt->bup.ovals[2];
		now.lock_is_occupied[ Index((now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ]-1), 3) ] = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		;
		;
		
	case 68: // STATE 27
		;
		_m = unsend(now.request_west);
		;
		goto R999;
;
		;
		
	case 70: // STATE 33
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = trpt->bup.ovals[3];
		now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.ovals[2];
		now.lock_is_occupied[ Index((now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ]-1), 3) ] = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 71: // STATE 34
		;
		_m = unsend(now.observed_west[0]);
		;
		goto R999;
;
		;
		
	case 73: // STATE 37
		;
		_m = unsend(now.observed_west[0]);
		;
		goto R999;

	case 74: // STATE 45
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = trpt->bup.ovals[3];
		now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.ovals[2];
		now.lock_is_occupied[ Index((now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ]-1), 3) ] = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		;
		;
		;
		
	case 77: // STATE 53
		;
		_m = unsend(now.request_west);
		;
		goto R999;
;
		;
		
	case 79: // STATE 58
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = trpt->bup.ovals[2];
		now.lock_is_occupied[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 3) ] = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 80: // STATE 59
		;
		_m = unsend(now.observed_west[0]);
		;
		goto R999;
;
		;
		
	case 82: // STATE 62
		;
		_m = unsend(now.observed_west[0]);
		;
		goto R999;

	case 83: // STATE 69
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = trpt->bup.ovals[2];
		now.lock_is_occupied[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 3) ] = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		;
		;
		
	case 86: // STATE 77
		;
		_m = unsend(now.request_east);
		;
		goto R999;
;
		;
		
	case 88: // STATE 83
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = trpt->bup.ovals[3];
		now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.ovals[2];
		now.lock_is_occupied[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 3) ] = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 89: // STATE 84
		;
		_m = unsend(now.observed_east[0]);
		;
		goto R999;
;
		;
		
	case 91: // STATE 87
		;
		_m = unsend(now.observed_east[0]);
		;
		goto R999;

	case 92: // STATE 95
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = trpt->bup.ovals[3];
		now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.ovals[2];
		now.lock_is_occupied[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 3) ] = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		;
		
	case 94: // STATE 102
		;
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.oval;
		;
		goto R999;

	case 95: // STATE 103
		;
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 97: // STATE 105
		;
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.oval;
		;
		goto R999;

	case 98: // STATE 106
		;
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.oval;
		;
		goto R999;

	case 99: // STATE 110
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC lock */

	case 100: // STATE 1
		;
		XX = 1;
		unrecv(now.change_doors_pos, XX-1, 0, ((int)((P0 *)_this)->lockid2), 1);
		unrecv(now.change_doors_pos, XX-1, 1, 2, 0);
		((P0 *)_this)->lockid2 = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 102: // STATE 3
		;
		now.doors_status[ Index(((P0 *)_this)->lockid2, 3) ].west = trpt->bup.oval;
		;
		goto R999;

	case 103: // STATE 7
		;
		_m = unsend(now.doors_pos_changed);
		;
		goto R999;
;
		;
		
	case 105: // STATE 10
		;
		now.doors_status[ Index(((P0 *)_this)->lockid2, 3) ].west = trpt->bup.oval;
		;
		goto R999;

	case 106: // STATE 11
		;
		_m = unsend(now.doors_pos_changed);
		;
		goto R999;

	case 107: // STATE 15
		;
		XX = 1;
		unrecv(now.change_doors_pos, XX-1, 0, ((int)((P0 *)_this)->lockid2), 1);
		unrecv(now.change_doors_pos, XX-1, 1, 1, 0);
		((P0 *)_this)->lockid2 = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 109: // STATE 17
		;
		now.doors_status[ Index(((P0 *)_this)->lockid2, 3) ].east = trpt->bup.oval;
		;
		goto R999;

	case 110: // STATE 21
		;
		_m = unsend(now.doors_pos_changed);
		;
		goto R999;
;
		;
		
	case 112: // STATE 24
		;
		now.doors_status[ Index(((P0 *)_this)->lockid2, 3) ].east = trpt->bup.oval;
		;
		goto R999;

	case 113: // STATE 25
		;
		_m = unsend(now.doors_pos_changed);
		;
		goto R999;

	case 114: // STATE 29
		;
		XX = 1;
		unrecv(now.change_valve_pos, XX-1, 0, ((int)((P0 *)_this)->lockid2), 1);
		unrecv(now.change_valve_pos, XX-1, 1, 2, 0);
		((P0 *)_this)->lockid2 = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 118: // STATE 33
		;
		now.valve_status[ Index(((P0 *)_this)->lockid2, 3) ].lower = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 121: // STATE 36
		;
		lock_water_level[ Index(((P0 *)_this)->lockid2, 3) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 123: // STATE 38
		;
		now.valve_status[ Index(((P0 *)_this)->lockid2, 3) ].lower = trpt->bup.oval;
		;
		goto R999;

	case 124: // STATE 41
		;
		_m = unsend(now.valve_pos_changed);
		;
		goto R999;

	case 125: // STATE 42
		;
		XX = 1;
		unrecv(now.change_valve_pos, XX-1, 0, ((int)((P0 *)_this)->lockid2), 1);
		unrecv(now.change_valve_pos, XX-1, 1, 1, 0);
		((P0 *)_this)->lockid2 = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 129: // STATE 46
		;
		now.valve_status[ Index(((P0 *)_this)->lockid2, 3) ].higher = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 133: // STATE 50
		;
		lock_water_level[ Index(((P0 *)_this)->lockid2, 3) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 135: // STATE 52
		;
		lock_water_level[ Index(((P0 *)_this)->lockid2, 3) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 137: // STATE 58
		;
		now.valve_status[ Index(((P0 *)_this)->lockid2, 3) ].higher = trpt->bup.oval;
		;
		goto R999;

	case 138: // STATE 61
		;
		_m = unsend(now.valve_pos_changed);
		;
		goto R999;

	case 139: // STATE 65
		;
		p_restor(II);
		;
		;
		goto R999;
	}


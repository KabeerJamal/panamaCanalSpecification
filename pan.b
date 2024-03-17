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

	case 5: // STATE 9
		;
		now.lock_is_occupied = trpt->bup.ovals[5];
		lock_water_level = trpt->bup.ovals[4];
		now.valve_status.higher = trpt->bup.ovals[3];
		now.valve_status.lower = trpt->bup.ovals[2];
		now.doors_status.east = trpt->bup.ovals[1];
		now.doors_status.west = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 6: // STATE 10
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 7: // STATE 11
		;
		((P4 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 8: // STATE 17
		;
		((P4 *)_this)->proc = trpt->bup.ovals[1];
	/* 0 */	((P4 *)_this)->proc = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 9: // STATE 17
		;
		((P4 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 10: // STATE 20
		;
		now.ship_pos[ Index(((P4 *)_this)->proc, 1) ] = trpt->bup.ovals[1];
		now.ship_status[ Index(((P4 *)_this)->proc, 1) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 11: // STATE 21
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 12: // STATE 22
		;
		((P4 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 13: // STATE 24
		;
		((P4 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 14: // STATE 30
		;
		((P4 *)_this)->proc = trpt->bup.ovals[1];
	/* 0 */	((P4 *)_this)->proc = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 15: // STATE 30
		;
		((P4 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 16: // STATE 33
		;
		((P4 *)_this)->proc = trpt->bup.ovals[1];
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P4 *)_this)->proc, 1) ], 2) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 17: // STATE 40
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
		;
		;
		goto R999;
;
		;
		
	case 22: // STATE 3
		;
		_m = unsend(now.change_doors_pos);
		;
		goto R999;

	case 23: // STATE 4
		;
		XX = 1;
		unrecv(now.doors_pos_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 25: // STATE 9
		;
		XX = 1;
		unrecv(now.observed_west[0], XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 26: // STATE 10
		;
		XX = 1;
		unrecv(now.request_east, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 28: // STATE 12
		;
		_m = unsend(now.change_doors_pos);
		;
		goto R999;

	case 29: // STATE 13
		;
		XX = 1;
		unrecv(now.doors_pos_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 31: // STATE 18
		;
		XX = 1;
		unrecv(now.observed_east[0], XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 32: // STATE 22
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
		
	case 35: // STATE 3
		;
		_m = unsend(now.request_east);
		;
		goto R999;
;
		;
		
	case 37: // STATE 8
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = trpt->bup.ovals[2];
		now.lock_is_occupied = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 38: // STATE 9
		;
		_m = unsend(now.observed_east[0]);
		;
		goto R999;
;
		;
		
	case 40: // STATE 12
		;
		_m = unsend(now.observed_east[0]);
		;
		goto R999;

	case 41: // STATE 19
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = trpt->bup.ovals[2];
		now.lock_is_occupied = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		;
		;
		
	case 44: // STATE 27
		;
		_m = unsend(now.request_west);
		;
		goto R999;
;
		;
		
	case 46: // STATE 33
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = trpt->bup.ovals[3];
		now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[2];
		now.lock_is_occupied = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 47: // STATE 34
		;
		_m = unsend(now.observed_west[0]);
		;
		goto R999;
;
		;
		
	case 49: // STATE 37
		;
		_m = unsend(now.observed_west[0]);
		;
		goto R999;

	case 50: // STATE 45
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = trpt->bup.ovals[3];
		now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[2];
		now.lock_is_occupied = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		;
		;
		;
		
	case 53: // STATE 53
		;
		_m = unsend(now.request_west);
		;
		goto R999;
;
		;
		
	case 55: // STATE 58
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = trpt->bup.ovals[2];
		now.lock_is_occupied = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 56: // STATE 59
		;
		_m = unsend(now.observed_west[0]);
		;
		goto R999;
;
		;
		
	case 58: // STATE 62
		;
		_m = unsend(now.observed_west[0]);
		;
		goto R999;

	case 59: // STATE 69
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = trpt->bup.ovals[2];
		now.lock_is_occupied = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		;
		;
		
	case 62: // STATE 77
		;
		_m = unsend(now.request_east);
		;
		goto R999;
;
		;
		
	case 64: // STATE 83
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = trpt->bup.ovals[3];
		now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[2];
		now.lock_is_occupied = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 65: // STATE 84
		;
		_m = unsend(now.observed_east[0]);
		;
		goto R999;
;
		;
		
	case 67: // STATE 87
		;
		_m = unsend(now.observed_east[0]);
		;
		goto R999;

	case 68: // STATE 95
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = trpt->bup.ovals[3];
		now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[2];
		now.lock_is_occupied = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		;
		
	case 70: // STATE 102
		;
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.oval;
		;
		goto R999;

	case 71: // STATE 103
		;
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 73: // STATE 105
		;
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.oval;
		;
		goto R999;

	case 74: // STATE 106
		;
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.oval;
		;
		goto R999;

	case 75: // STATE 110
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC lock */

	case 76: // STATE 1
		;
		XX = 1;
		unrecv(now.change_doors_pos, XX-1, 0, 2, 1);
		;
		;
		goto R999;
;
		;
		
	case 78: // STATE 3
		;
		now.doors_status.west = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 80: // STATE 5
		;
		lock_water_level = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 82: // STATE 7
		;
		lock_water_level = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 84: // STATE 13
		;
		now.doors_status.west = trpt->bup.oval;
		;
		goto R999;

	case 85: // STATE 16
		;
		_m = unsend(now.doors_pos_changed);
		;
		goto R999;

	case 86: // STATE 17
		;
		XX = 1;
		unrecv(now.change_doors_pos, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 88: // STATE 19
		;
		now.doors_status.east = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 90: // STATE 21
		;
		lock_water_level = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 92: // STATE 23
		;
		lock_water_level = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 94: // STATE 29
		;
		now.doors_status.east = trpt->bup.oval;
		;
		goto R999;

	case 95: // STATE 32
		;
		_m = unsend(now.doors_pos_changed);
		;
		goto R999;

	case 96: // STATE 33
		;
		XX = 1;
		unrecv(now.change_valve_pos, XX-1, 0, 2, 1);
		;
		;
		goto R999;
;
		;
		
	case 98: // STATE 35
		;
		now.valve_status.lower = trpt->bup.oval;
		;
		goto R999;

	case 99: // STATE 36
		;
		lock_water_level = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 101: // STATE 38
		;
		now.valve_status.lower = trpt->bup.oval;
		;
		goto R999;

	case 102: // STATE 41
		;
		_m = unsend(now.valve_pos_changed);
		;
		goto R999;

	case 103: // STATE 42
		;
		XX = 1;
		unrecv(now.change_valve_pos, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 105: // STATE 44
		;
		now.valve_status.higher = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 107: // STATE 46
		;
		lock_water_level = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 109: // STATE 48
		;
		lock_water_level = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 111: // STATE 54
		;
		now.valve_status.higher = trpt->bup.oval;
		;
		goto R999;

	case 112: // STATE 57
		;
		_m = unsend(now.valve_pos_changed);
		;
		goto R999;

	case 113: // STATE 61
		;
		p_restor(II);
		;
		;
		goto R999;
	}


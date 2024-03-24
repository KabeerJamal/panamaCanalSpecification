/*
	Lock system template model for Assignment 2 of 2IX20 - Software Specification.
	Set up for one lock and a configurable number of ships.

	This file contains:
	- process types for locks and ships that can be used as-is for the single lock case
	- a dummy specification of the main controller
	- initialization for the single-lock, single-ship case.
*/

// The number of locks.
#define N   3
// The number of ships.
#define M   2
// The maximum number of ships immediately at either side of a lock.
#define MAX 2

// LTL formulas to be verified
// Formula p1 holds if the first ship can always eventually enter the lock when going from west to east.
//ltl p1 { []<> (ship_status[0] == go_west_to_east_in_lock) }
//ltl a { [](!(doors_status.east == open && doors_status.west == open))}
//ltl b1a { []((LOCK_ORIENTATION == west_low && doors_status.west == open) -> valve_status.higher == closed)}
//ltl b1b { []((LOCK_ORIENTATION == east_low && doors_status.east == open) -> valve_status.higher == closed)}
//ltl b2a { []((LOCK_ORIENTATION == west_low && doors_status.east == open) -> valve_status.lower == closed)}
//ltl b2b { []((LOCK_ORIENTATION == east_low && doors_status.west == open) -> valve_status.lower == closed)}
//ltl c1a { []((LOCK_ORIENTATION == west_low && doors_status.west == open) -> lock_water_level == low_level)}
//ltl c1b { []((LOCK_ORIENTATION == east_low && doors_status.east == open) -> lock_water_level == low_level)}
//ltl c2a { []((LOCK_ORIENTATION == west_low && doors_status.east == open) -> lock_water_level == high_level)}
//ltl c2b { []((LOCK_ORIENTATION == east_low && doors_status.west == open) -> lock_water_level == high_level)}
//ltl d1 { []((request_west && ship_status[0] == go_west_to_east) -> <> (ship_status[0] == go_west_to_east_in_lock)) }
//ltl d1 { []((request_east && ship_status[0] == go_east_to_west) -> <> (ship_status[0] == go_east_to_west_in_lock)) }
//ltl p1 { []<> (ship_status[0] == go_west_to_east_in_lock) }
//ltl c1a { []((LOCK_ORIENTATION == west_low && doors_status.west == open) -> lock_water_level == low_level)}
//ltl c1b { []((LOCK_ORIENTATION == east_low && doors_status.east == open) -> lock_water_level == low_level)}
//ltl c2a { []((LOCK_ORIENTATION == west_low && doors_status.east == open) -> lock_water_level == high_level)}
//ltl c2b { []((LOCK_ORIENTATION == east_low && doors_status.west == open) -> lock_water_level == high_level)}
//ltl d1a { []((request_west && ship_status[0] == go_west_to_east) -> <> (ship_status[0] == go_west_to_east_in_lock)) }
//ltl d1b { []((request_east && ship_status[0] == go_east_to_west) -> <> (ship_status[0] == go_east_to_west_in_lock)) }

// Type for direction of ship.
mtype:direction = { go_west_to_east, go_west_to_east_in_lock, go_east_to_west, go_east_to_west_in_lock, goal_reached };

// Type for orientation of lock: side of lock with low water level
mtype:lock_orientation = { west_low, east_low };

// Type for water level.
mtype:level = { low_level, high_level };

// Type for lock side indication.
mtype:side = { west_side, east_side };

// Type for valve side indication.
mtype:valve_side = { low_side, high_side };

// Type for door and valve position.
mtype:pos = { closed, open };

// Datatype to store the status of the doors of a lock.
typedef doorpairs_t {
	mtype:pos west;
	mtype:pos east;
}

// Datatype to store the status of the valves of a lock.
typedef valves_t {
	mtype:pos lower;
	mtype:pos higher;
}

// Orientation of locks
// Needs to be adapted for multiple locks
mtype:lock_orientation LOCK_ORIENTATION[N];

// Asynchronous channels to handle ship requests.
chan request_west = [M] of { bool,byte };
chan request_east = [M] of { bool,byte };
// Synchronous channels to indicate that a ship has seen that a particular pair
// of doors has opened.
chan observed_west[N] = [0] of { bool };
chan observed_east[N] = [0] of { bool };

// Status of the water level inside a lock.
mtype:level lock_water_level[N];
// Is there a ship currently in the lock?
bool lock_is_occupied[N];

// Status of the ships.
mtype:direction ship_status[M];
// Position of the ships.
byte ship_pos[M];
// Number of ships per position.
byte nr_of_ships_at_pos[N+1];

// Status and synchronous channels for doors and valves.
doorpairs_t doors_status[N];
valves_t valve_status[N];
chan change_doors_pos = [0] of { byte,mtype:side };
chan doors_pos_changed = [0] of { bool };
chan change_valve_pos = [0] of { byte,mtype:valve_side };
chan valve_pos_changed = [0] of { bool };

// Lock process type. It reacts to requests to open its doors and valves.
proctype lock(byte lockid) {
	byte lockid2
	do
	:: change_doors_pos?lockid2,west_side ->
		if
		:: doors_status[lockid2].west == closed ->
			atomic {doors_status[lockid2].west = open;
						assert(doors_status[lockid2].east == closed); // Assertion that not both west and east door can be open at the same time
						assert((!(LOCK_ORIENTATION[lockid2] == west_low)) ||  (valve_status[lockid2].higher == closed)) // Assertion that that when low door is open, higher valve is closed
						assert((!(LOCK_ORIENTATION[lockid2] == east_low)) ||  (valve_status[lockid2].lower == closed)) // Assertion that that when high door is open, lower valve is closed
						doors_pos_changed!true;}//NEW

			/*
			if
			:: LOCK_ORIENTATION[lockid2] == west_low -> lock_water_level[lockid2] = low_level; // Water flows out through western (low) door
			:: LOCK_ORIENTATION[lockid2] == east_low && doors_status[lockid2].east == closed && valve_status[lockid2].lower == closed ->
				lock_water_level[lockid2] = high_level; // Water flows in through western (high) door
			:: else -> skip;
			fi;
			*///NEW
		:: doors_status[lockid2].west == open -> atomic {doors_status[lockid2].west = closed;doors_pos_changed!true;}
		fi;
		
	:: change_doors_pos?lockid2,east_side ->
		if
		:: doors_status[lockid2].east == closed ->
			atomic {doors_status[lockid2].east = open;
					assert(doors_status[lockid2].west == closed); // Assertion that not both west and east door can be open at the same time
					assert((!(LOCK_ORIENTATION[lockid2] == east_low)) ||  (valve_status[lockid2].higher == closed)) // Assertion that that when low door is open, higher valve is closed
					assert((!(LOCK_ORIENTATION[lockid2] == west_low)) ||  (valve_status[lockid2].lower == closed)) // Assertion that that when high door is open, lower valve is closed
					doors_pos_changed!true;}//without atomic, the door opens and the ship process starts running without inform the mainController doors_pos_changed!true

			/*
			if
			:: LOCK_ORIENTATION[lockid2] == east_low -> lock_water_level[lockid2] = low_level; // Water flows out through eastern (low) door
			:: LOCK_ORIENTATION[lockid2] == west_low && doors_status[lockid2].west == closed && valve_status[lockid2].lower == closed ->
				lock_water_level[lockid2] = high_level; // Water flows in through eastern (high) door
			:: else -> skip;
			fi;
			*/
		:: doors_status[lockid2].east == open -> atomic {doors_status[lockid2].east = closed;doors_pos_changed!true;}
		fi;
		//only once this signal is recieved then ship can enter??
	:: change_valve_pos?lockid2,low_side ->//store lock id
		assert((!(LOCK_ORIENTATION[lockid2] == west_low)) ||  (doors_status[lockid2].east == closed)) // Assertion that that when lower valve is open, high door is closed
		assert((!(LOCK_ORIENTATION[lockid2] == east_low)) ||  (doors_status[lockid2].west == closed)) // Assertion that that when lower valve is open, high door is closed
		if
		:: valve_status[lockid2].lower == closed -> valve_status[lockid2].lower = open;
			assert((!(LOCK_ORIENTATION[lockid2] == west_low)) ||  (doors_status[lockid2].east == closed)) // Assertion that that when lower valve is open, high door is closed
			assert((!(LOCK_ORIENTATION[lockid2] == east_low)) ||  (doors_status[lockid2].west == closed)) // Assertion that that when lower valve is open, high door is closed
			lock_water_level[lockid2] = low_level;
		:: valve_status[lockid2].lower == open -> valve_status[lockid2].lower = closed;
		fi;
		valve_pos_changed!true;
	:: change_valve_pos?lockid2,high_side ->
		assert((!(LOCK_ORIENTATION[lockid2] == west_low)) ||  (doors_status[lockid2].west == closed)) // Assertion that that when higher valve is open, low door is closed
		assert((!(LOCK_ORIENTATION[lockid2] == east_low)) ||  (doors_status[lockid2].east == closed)) // Assertion that that when higher valve is open, low door is closed
		if
		:: valve_status[lockid2].higher == closed -> valve_status[lockid2].higher = open;
			assert((!(LOCK_ORIENTATION[lockid2] == west_low)) ||  (doors_status[lockid2].west == closed)) // Assertion that that when higher valve is open, low door is closed
			assert((!(LOCK_ORIENTATION[lockid2] == east_low)) ||  (doors_status[lockid2].east == closed)) // Assertion that that when higher valve is open, low door is closed
			if
			:: LOCK_ORIENTATION[lockid2] == west_low && doors_status[lockid2].west == closed && valve_status[lockid2].lower == closed ->
				lock_water_level[lockid2] = high_level; // Water flows in as western (low) door is closed
			:: LOCK_ORIENTATION[lockid2] == east_low && doors_status[lockid2].east == closed && valve_status[lockid2].lower == closed ->
				lock_water_level[lockid2] = high_level; // Water flows in as eastern (low) door is closed
			:: else -> skip;
			fi;
		:: valve_status[lockid2].higher == open -> valve_status[lockid2].higher = closed;
		fi;
		valve_pos_changed!true;
	od;
}

// Ship process type. Based on its direction and position, it makes requests to open doors,
// and moves when possible.
proctype ship(byte shipid) {
	do
	//The ship wants to go from east to west and it is NOT in a lock(so it wants to enter a lock)
	:: ship_status[shipid] == go_east_to_west && ship_pos[shipid] != 0 ->
		do
		:: doors_status[ship_pos[shipid] -1].east == closed ->
			request_east!true,ship_pos[shipid] -1;
			atomic { doors_status[ship_pos[shipid] -1].east == open ->
				if
				:: !lock_is_occupied[ship_pos[shipid] -1] ->
						ship_status[shipid] = go_east_to_west_in_lock;
						lock_is_occupied[ship_pos[shipid] -1] = true;
						nr_of_ships_at_pos[ship_pos[shipid]]--;
						observed_east[0]!true;
						//observed_east[lockid]!true
						break;
				:: lock_is_occupied[ship_pos[shipid] -1] ->
						observed_east[0]!true;
				fi; }
		:: atomic { doors_status[ship_pos[shipid] -1].east == open &&
			!lock_is_occupied[ship_pos[shipid] -1] ->
				ship_status[shipid] = go_east_to_west_in_lock;
				lock_is_occupied[ship_pos[shipid] -1] = true;
				nr_of_ships_at_pos[ship_pos[shipid]]--;
				break; }
		od;




	//ship wants to go from east to west and it is IN A LOCK(wants to exit it)
	:: ship_status[shipid] == go_east_to_west_in_lock ->
		do
		:: doors_status[ship_pos[shipid] -1].west == closed ->
			request_west!true,ship_pos[shipid] -1;
			atomic { doors_status[ship_pos[shipid] -1].west == open ->
				if
				:: (nr_of_ships_at_pos[ship_pos[shipid]-1] < MAX
					|| ship_pos[shipid]-1 == 0) ->
						ship_status[shipid] = go_east_to_west;
						lock_is_occupied[ship_pos[shipid] -1] = false;
						ship_pos[shipid]--;
						nr_of_ships_at_pos[ship_pos[shipid]]++;
						observed_west[0]!true;
						break;
				:: (nr_of_ships_at_pos[ship_pos[shipid]-1] == MAX
					&& ship_pos[shipid]-1 != 0) ->
						observed_west[0]!true;
				fi; }
		:: atomic { doors_status[ship_pos[shipid] -1].west == open &&
			(nr_of_ships_at_pos[ship_pos[shipid]-1] < MAX
			|| ship_pos[shipid]-1 == 0) ->
				ship_status[shipid] = go_east_to_west;
				lock_is_occupied[ship_pos[shipid] -1] = false;
				ship_pos[shipid]--;
				nr_of_ships_at_pos[ship_pos[shipid]]++;
				break; }
		od;


	
	
	//ship wants to go from west to east and it is not in a lock
	:: ship_status[shipid] == go_west_to_east && ship_pos[shipid] != N ->
		do
		:: doors_status[ship_pos[shipid]].west == closed ->
			request_west!true,ship_pos[shipid];
			atomic { doors_status[ship_pos[shipid]].west == open ->
				if
				:: !lock_is_occupied[ship_pos[shipid]] ->
						ship_status[shipid] = go_west_to_east_in_lock;
						lock_is_occupied[ship_pos[shipid]] = true;
						nr_of_ships_at_pos[ship_pos[shipid]]--;
						observed_west[0]!true;
						break;
				:: lock_is_occupied[ship_pos[shipid]] ->
						observed_west[0]!true;
				fi; }
		:: atomic { doors_status[ship_pos[shipid]].west == open &&
			!lock_is_occupied[ship_pos[shipid]] ->
				ship_status[shipid] = go_west_to_east_in_lock;
				lock_is_occupied[ship_pos[shipid]] = true;
				nr_of_ships_at_pos[ship_pos[shipid]]--;
				break; }
		od;

	//ship wants to go from west to east and it is in a lock
	:: ship_status[shipid] == go_west_to_east_in_lock ->
		do
		:: doors_status[ship_pos[shipid]].east == closed ->
			request_east!true,ship_pos[shipid];
			atomic { doors_status[ship_pos[shipid]].east == open ->
				if
				:: (nr_of_ships_at_pos[ship_pos[shipid]+1] < MAX
					|| ship_pos[shipid]+1 == N) ->
						ship_status[shipid] = go_west_to_east;
						lock_is_occupied[ship_pos[shipid]] = false;
						ship_pos[shipid]++;
						nr_of_ships_at_pos[ship_pos[shipid]]++;
						observed_east[0]!true;
						break;
				:: (nr_of_ships_at_pos[ship_pos[shipid]+1] == MAX
					&& ship_pos[shipid]+1 != N) ->
						observed_east[0]!true;
				fi; }
		:: atomic { doors_status[ship_pos[shipid]].east == open &&
			(nr_of_ships_at_pos[ship_pos[shipid]+1] < MAX
			|| ship_pos[shipid]+1 == N) ->
				ship_status[shipid] = go_west_to_east;
				lock_is_occupied[ship_pos[shipid]] = false;
				ship_pos[shipid]++;
				nr_of_ships_at_pos[ship_pos[shipid]]++;
				break; }
		od;
	:: ship_status[shipid] == go_east_to_west && ship_pos[shipid] == 0 ->
		ship_status[shipid] = goal_reached; ship_status[shipid] = go_west_to_east;
	:: ship_status[shipid] == go_west_to_east && ship_pos[shipid] == N ->
		ship_status[shipid] = goal_reached; ship_status[shipid] = go_east_to_west;
	od;
}

// DUMMY main control process type. Remodel it to control the lock system and handle
// requests of ships!
proctype main_control() {
	byte lockid
	do
	:: request_west?true,lockid ->
		if
		:: doors_status[lockid].west == closed ->

			if
            :: LOCK_ORIENTATION[lockid] == east_low -> change_valve_pos!lockid,high_side;
											   valve_pos_changed?true;
											   change_valve_pos!lockid,high_side;
											   valve_pos_changed?true;
            :: LOCK_ORIENTATION[lockid] == west_low -> change_valve_pos!lockid,low_side;
											   valve_pos_changed?true;
											   change_valve_pos!lockid,low_side;
											   valve_pos_changed?true;
			fi;
			change_doors_pos!lockid,west_side; doors_pos_changed?true;
			//make sure ship enters first
			//change_doors_pos!west_side; doors_pos_changed?true;//need to close the door again
		:: doors_status[lockid].west == open -> skip;
		fi;
		atomic {observed_west[0]?true;change_doors_pos!lockid,west_side; doors_pos_changed?true;}//NEW
		//observed_west[lockid]?true
		//once we recieve a signal that ship has entered/exited, we close the respective door
	:: request_east?true,lockid ->
		if
		:: doors_status[lockid].east == closed ->

			if
            :: LOCK_ORIENTATION[lockid] == east_low -> change_valve_pos!lockid,low_side;//valve instructed to change position(open)
											   valve_pos_changed?true;//system waits for a response by the valve that it has opened
											   change_valve_pos!lockid,low_side;//valve instructed to change position(close)
											   valve_pos_changed?true;//systed waits for a response by the vavle that it has closed
            :: LOCK_ORIENTATION[lockid] == west_low -> change_valve_pos!lockid,high_side;//valve instructed to change position(open)
											   valve_pos_changed?true;//system waits for a response by the valve that it has opened
											   change_valve_pos!lockid,high_side;//valve instructed to change position(close)
											   valve_pos_changed?true;//systed waits for a response by the vavle that it has closed
			fi;
			change_doors_pos!lockid,east_side; doors_pos_changed?true;//after valve has opened and then closed, is the door instructed to open
		:: doors_status[lockid].east == open -> skip;
		fi;
		atomic{observed_east[0]?true;change_doors_pos!lockid,east_side; doors_pos_changed?true;}
		//once we recieve a signal that ship has entered/exited, we close the respective door
		
	od;
}

proctype monitor() {
	// an example assertion.
	assert(0 <= ship_pos[0] && ship_pos[0] <= N);
}

// Initial process that instantiates all other processes and creates
// the initial lock and ship situation.
init {
	byte proc;
	atomic {
		//run monitor();
		run main_control();
		// In the code below, the individual locks are initialised.
		// The assumption here is that N == 1. When generalising the model for
		// multiple locks, make sure that the do-statement is altered!
		proc = 0;
		do
		:: proc < N ->
			LOCK_ORIENTATION[proc] = east_low;//need to adapt further
			doors_status[proc].west = closed;
			doors_status[proc].east = closed;
			valve_status[proc].lower = closed;
			valve_status[proc].higher = closed;
			lock_water_level[proc] = high_level;
			lock_is_occupied[proc] = false;
			run lock(proc);
			proc++;
		:: proc == N -> break;
		od;
		// In the code below, the individual ship positions and directions
		// are initialised. Expand this when more ships should be added.
		proc = 0;
		do
		:: proc == 0 -> ship_status[proc] = go_west_to_east; ship_pos[proc] = 0;
			run ship(proc); proc++;
		:: proc > 0 && proc < M -> proc++;
		:: proc == M -> break;
		od;
		// Do not change the code below! It derives the number of ships per
		// position from the positions of the individual ships.
		proc = 0;
		do
		:: proc < M -> nr_of_ships_at_pos[ship_pos[proc]]++; proc++;
		:: else -> break;
		od;
	}
}

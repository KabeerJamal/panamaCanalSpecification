bool lock; /* global lock */

active[2] proctype P() {
	!lock;
	lock = true;
}
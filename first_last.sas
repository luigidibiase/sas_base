***************************************************;
*				FIRST. AND LAST.				  *;
***************************************************;

/*	It is usual to have observations divided by categories; for instance: group1, group2, group3; 
	F or M, 1 or 0; America, Europe, Asia; ect. When this is the situation, we could be interest in
	analyzing the diferent groups (levels of the variables). 
	
	In SAS, if the databaset is sorted (or have an index), two new hidden variables are created: 
	First. and Last.
		
		The First. automatic variable refers to the first observation of a specific group. 
		First. has a value of 1 for the first observation of the group and 0 for all of the rest obs.
		
		The Last. automatic variable refers to the last observatin of a specific group.
		Last has a value of 1 for the last observation of the group and 0 for all of the rest.  */
		
		
proc sort data=sashelp.class out=class_sorted;
	by sex;
run;

data class_sorted;
	set class_sorted;
	by sex;
	First = first.sex;
	Last = last.sex;
run;
	
*************************;
*	 	PROC FREQ		*;
*************************;

/*	Options: nlevels, noprint, order. */


/*	Basic Syntax.	*/
proc freq data=sashelp.cars;
	table origin make;
run;

/*	Order option */
proc freq data=sashelp.cars order=freq;
	table origin make;
run;

/*	By statement.*/
proc sort data=sashelp.cars out=cars;
	by origin;
	
proc freq data=cars;
	table make;
	by origin;
run;

/*	Cross table.	*/
proc freq data=sashelp.cars order=freq;
	table origin*type;
run;

proc freq data=sashelp.cars order=freq;
	table origin*type / norow nocol nopercent;
run;

/*	Generating a table.	*/
proc freq data=sashelp.cars;
	table origin*make /out=freq_cars;
run;

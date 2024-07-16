**************************;
*		PROC PRINT		 *;
**************************;

/*	Basic Syntax.	*/
proc print data=sashelp.cars;
run;

/* Options.	*/
proc print data=sashelp.cars (keep=make model origin invoice horsepower obs=40);
run;

/*	By statement.	*/

proc sort data=sashelp.cars out=cars;
	by origin;
run;

proc print data=cars  (keep=make model origin invoice horsepower);
	by origin;
run;

/*	No obs option.	*/
proc print data=cars  (keep=make model origin invoice horsepower) noobs;
	by origin;
run;

/*	Rename option.	*/
proc print data=cars  (keep=make model origin invoice horsepower rename=(Invoice=Price)) noobs;
	by origin;
run;

/*	Label option.	*/
proc print data=cars  (keep=make model origin invoice horsepower rename=(Invoice=Price)) noobs label;
	label Make='Producer' horsepower='Power';
	by origin;
run;



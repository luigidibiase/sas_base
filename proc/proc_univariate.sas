*******************************;
*		PROC UNIVARIATE		  *;
*******************************;

/*	Basic Syntax.	*/
proc univariate data=cars; /*	Check whether the table work.cars exists.*/
run;

/*	Adding a histogram with no print option.	*/
proc univariate data=cars noprint;
	hist Invoice;
	by origin;
run;

/*	Adding a normal curve to the histogram.	*/
proc univariate data=cars noprint;
	hist Invoice / normal (noprint);
	by origin;
run;
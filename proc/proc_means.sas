***********************************;
*			PROC MEANS			  *;
***********************************;

/*	Basic Syntax.	*/

proc means data=sashelp.cars;
run;

/*	Var statement.	*/
proc means data=sashelp.cars;
	var invoice horsepower;
run;

/*	Maxdec option.	*/
proc means data=sashelp.cars maxdec=1;
	var invoice horsepower;
run;

/*	Extra measures.	*/
proc means data=sashelp.cars maxdec=1 mean max min range kurtosis std;
	var invoice horsepower;
run;

/*	Output statement.	*/
proc means data=sashelp.cars maxdec=1 mean max min range kurtosis std;
	var invoice horsepower;
	output out=means_cars;
run;

/*	Class statement.	*/
proc means data=sashelp.cars maxdec=1 mean max min range kurtosis std;
	var invoice horsepower;
	class origin;
	output out=means_cars;
run;

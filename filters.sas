******************************;
*			FILTERS			 *;
******************************;


*******************;
*	Compilation	  *;
*******************;

data Filter_01;
	set sashelp.class;
	where Sex = 'F';
run;

*-----------------------------;

data Filter_02;
	set sashelp.class;
	where Age > 13;
run;

*-----------------------------;

data Filter_03;
	set sashelp.class;
	where Age > 13 and Sex = 'M';
run;

*******************;
*	Execution	  *;
*******************;

data Filter_04;	
	set sashelp.class;
	if Age > 13;
run;

*-----------------------------;

data Filter_05;
	set sashelp.class;
	Height_cm = Height * 2.54;
	if Height_cm gt 160;				/*gt : greater than.*/
run;

******************************;
*			ERRORS			 *;
******************************;

data Filter_06;
	set sashelp.class;
	Height_cm = Height * 2.54;          /*	Is there a variable called Height_cm in the input table? */
	where Height_cm gt 160;				/*	gt : greater than.*/
run;

*-----------------------------;


data Filter_06;
	set sashelp.class;
	Height_cm = Height * 2.54;          /*	Is there a variable called Height_cm in the input table? */
	where Height * 2.54 gt 160;			
run;


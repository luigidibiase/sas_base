**********************************;
*			PROC SORT			 *;
**********************************;

proc sort data=sashelp.class;
	by Age;
run;

data lib1.class_01;
	set sashelp.class;
run;

proc sort data=lib1.class_01;
	by Age;
run;

proc sort data=lib1.class_01;
	by descending Age;
run;

proc sort data=sashelp.class out=lib1.class_03;
	by Age;
run;

proc sort data=sashelp.class out=lib1.class_04;
	by Age Weight;
run;


***********************************************;
*			Using The Output Statment   	  *;
***********************************************;

/* 	In a Data Step, SAS has an implicit output statement that is applied to every row or observation.
	To override this and take the control of the output, you have to write the explicit statement: output,
	where you want SAS to print the results of the instruction. */

/* Thus, the following to pieces of code produce the same result. */

data Class1; 
	set sashelp.class;
run;

data Class1; 
	set sashelp.class;
	output;
run;

/* Modifying the table Class. */

********************************;
data ClassMod;
	set sashelp.class;
	Sex = 'M';
run;

data ClassMod;
	set sashelp.class;
	Sex = 'M';
	output;
run;
********************************;



********************************;
data ClassMod2;
	Sex = 'M';
	set sashelp.class;
run;

data ClassMod2;
	Sex = 'M';
	set sashelp.class;
	output;
run;
********************************;


********************************;
data ClassMod3;
	set sashelp.class;
	output;
	output;
run;

data ClassMod4;
	Sex = 'M';
	output;
	set sashelp.class;
run;
	

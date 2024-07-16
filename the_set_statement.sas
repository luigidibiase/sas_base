******************************************************;
*				  THE SET STATEMENT					 *;
******************************************************;


/*	The SET statement is used inside a DATA STEP to transfer 
	the information of an existing table to another one.	 		*/
	
/* 	Let's take a table from the SASHELP library, CLASS, and
   	create a new table called Class_01 from it.				 		*/

data Class_01;
	set sashelp.class;
run;

/*	Note that the table Class_01 has been saved 
	in the temporary library WORK.									*/
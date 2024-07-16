**********************************************;
*				FIRST DATA STEP   	  		 *;
**********************************************;


data Table1;							/*No library specified. Table1 set as the name of the table. */
	Name = 'Luigi Daniele';			    /*Character variable called Name. */ 
	LastName = 'Di Biase Giusti';		/*Character variable called LastName. */ 
	Age = 26;							/*Numeric variable called Age. */ 
	Age2 = '26';						/*Character variable called Age2. */ 
run;

/* 	Note that the Table1 is a temporary table.
 	By default, if no library is specified, SAS saved the table created in work.
 	That is, the above code is equivalent to:   								 */ 
 	
data work.Table1;					  	/*Work specified as the library and Table1 as the name of the dateset. */
	Name = 'Luigi Daniele';
	LastName = 'Di Biase Giusti';
	Age = 26;
	Age2 = '26';
run;


**********************************;
*	Creating a Permanent Table   *;
**********************************;

data lib1.Table1;					  	/*Lib1 specified as the library and Table1 as the name of the dateset. */
	Name = 'Luigi Daniele';
	LastName = 'Di Biase Giusti';
	Age = 26;
	Age2 = '26';
run;

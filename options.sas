**********************************;
*			OPTIONS				 *;
**********************************;

*	FirstObs;
*	Obs;
*	Keep;
*	Drop;
*	Rename;

/*	FirstObs.	*/

proc print data=sashelp.class (firstobs=5);
run;

/*	Obs*/

data obs_01 ;
	set sashelp.class;
run;

/*	Keep.		*/
data Keep_01 (keep = Model Make Origin Invoice);
	set sashelp.cars;
run;

data keep_02;
	set sashelp.cars (keep = Model Make Origin Invoice);
run;

data keep_03 (Keep = Origin Invoice);
	set sashelp.cars (keep = Model Make);
run;

data keep_04; 
	set sashelp.cars;
	keep Model Make Origin Invoice;
run;

/*	Drop.		*/
data Drop_01 (drop = Model Make Origin Invoice);
	set sashelp.cars;
run;

data Drop_02;
	set sashelp.cars (drop = Model Make Origin Invoice);
run;

data Drop_03;
	set sashelp.cars;
	Drop Model Make Origin Invoice;
run;

/*	Rename.		*/
data rename_01 (rename=(name=nome age=eta height=altezza weight=peso sex=sesso));
	set sashelp.class;
run;

data rename_02;
	set sashelp.class (rename=(name=nome age=eta height=altezza weight=peso sex=sesso));
run;

data rename_03;
	set sashelp.class;
	rename name=nome age=eta height=altezza weight=peso sex=sesso;
run;





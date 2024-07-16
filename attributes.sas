***************************************************;
*		    ATTRIBUTES		  	  *;
***************************************************;

*	Label;
*	Name (required);
*	Length (required);
*	Type (required);
*	Format;

data Attributes_01;
	infile datalines delimiter=',';
	input Cognome $ Nome $ Email $ Materia $;
datalines;
Fulvio,Barcellona,f.barcellona@majorbit.com,Direttore
Barnaba,Pazzaglini,b.pazzaglini@majorbit.com,Enterprise Guide e Data Integration Studio
Adolfo,Di Fonzo,a.difonzo@majorbit.com,Base Dati
Arianno,Fregoli,a.fregoli@majorbit.com,Linguaggio SQL
Luigi,Di Biase,d.dibase@majorbit.com,Programmaione SAS Base e Python
Luca,Fuoco,l.fuoco@majorbit.com,Programmazione SAS Macro
Antonella,Tavone,a.tavone@majorbit.com,Visual Analytics e Visual Statistics (Viya)
Cristian,Botti,c.botti@majorbit.com,SAS Model Studio
;
run;


*	Defining the attributes;

data Attributes_02;
	infile datalines delimiter=',';
	length Cognome $20 Nome $20 Email $50 Materia $50;
	input Cognome $ Nome $ Email $ Materia $;
datalines;
Fulvio,Barcellona,f.barcellona@majorbit.com,Direttore
Barnaba,Pazzaglini,b.pazzaglini@majorbit.com,Enterprise Guide e Data Integration Studio
Adolfo,Di Fonzo,a.difonzo@majorbit.com,Base Dati
Arianno,Fregoli,a.fregoli@majorbit.com,Linguaggio SQL
Luigi,Di Biase,d.dibase@majorbit.com,Programmaione SAS Base e Python
Luca,Fuoco,l.fuoco@majorbit.com,Programmazione SAS Macro
Antonella,Tavone,a.tavone@majorbit.com,Visual Analytics e Visual Statistics (Viya)
Cristian,Botti,c.botti@majorbit.com,SAS Model Studio
;
run;

*-----------------------------------------------------------------------------------------;

data Attributes_03;
	infile datalines delimiter=',';
	attrib 
		Cognome length=$20 label='LastName'
		Nome 	length=$20 label='Name'
		Email	length=$50 label='Entreprise Email'
		Materia length=$50 label='Subject';	
	input Cognome $ Nome $ Email $ Materia $;
datalines;
Fulvio,Barcellona,f.barcellona@majorbit.com,Direttore
Barnaba,Pazzaglini,b.pazzaglini@majorbit.com,Enterprise Guide e Data Integration Studio
Adolfo,Di Fonzo,a.difonzo@majorbit.com,Base Dati
Arianno,Fregoli,a.fregoli@majorbit.com,Linguaggio SQL
Luigi,Di Biase,d.dibase@majorbit.com,Programmaione SAS Base e Python
Luca,Fuoco,l.fuoco@majorbit.com,Programmazione SAS Macro
Antonella,Tavone,a.tavone@majorbit.com,Visual Analytics e Visual Statistics (Viya)
Cristian,Botti,c.botti@majorbit.com,SAS Model Studio
;
run;

title 'Master Class 2022';
proc print data=Attributes_03 label noobs;
run;


***************************************;
*			FORMAT					  *;
***************************************;	

data Interest;
	Year = 1;
	Start_Amount = 10000;
	i = 0.05;
	Interest = start_amount * i;
	Total = start_amount + interest;
	output;
	Year = 2;
	Start_Amount = Total;
	Interest = start_amount * i;
	Total = start_amount + interest;
	output;
	Year = 3;
	Start_Amount = Total;
	Interest = start_amount * i;
	Total = start_amount + interest;
	output;
	format i percent. start_amount interest total dollar10.2;
run;




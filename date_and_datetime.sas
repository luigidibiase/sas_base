***************************************************;
*				DATE AND DATETIME				  *;
***************************************************;

data date;
	date_1 = '01JAN2022'D;		/*	A string is recognized by SAS as a numeric variable, representing the days passed since 01jan1960. */
	date_2 = date_1;			/* Date_2 is initialized taking the value from Date_1. */
	date_3 = date_1;			/* Date_3 is initialized taking the value from Date_1. */
	format date_2 date9. 
		   date_3 ddmmyy10.;  	/* Date_2 and Date_3 are shown in the visualization of the table with the formats date9. and ddmmyy10. */
run;

data datetime;
	datetime1 = '01jan2022:12:23:04'dt;
	datetime2 = datetime1;
	format datetime2 datetime19.;
run;


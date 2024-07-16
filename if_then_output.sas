************************************************;
*				IF THEN OUTPUT				   *;
************************************************;

/*	We can create more than one table using a DATA STEP.
	To do so, simply add the name of the tables you want to create. */
	
data cars1 cars2;  		/*	Cars1 and Cars2 contain the same rows and variables.	*/
	set sashelp.cars;
run;

data cars1(keep=Make Model Origin) cars2(keep=Make Model Origin Invoice);
	set sashelp.cars;
run;

data cars_eu cars_asia cars_usa;
	set sashelp.cars;
	if origin = 'USA' then output cars_usa;
	if origin = 'Asia' then output cars_asia;
	if origin = 'Europe' then output cars_eu;
run;

data cars_high_invoice cars_low_invoice;
	set sashelp.cars;
	if invoice gt 45e3 then output cars_high_invoice;
	else output cars_low_invoice;
run;
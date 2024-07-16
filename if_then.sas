***************************************************;
*				IF THEN STATEMENT				  *;
***************************************************;

DATA IF_THEN_01;
	SET SASHELP.CARS;
	IF INVOICE < 20000 THEN PRICE = 'LOW';
	IF INVOICE >= 20000 THEN PRICE = 'MEDIUM';
	IF INVOICE > 60000 THEN PRICE = 'HIGH';
RUN;

/*	How would you resolve the issue with the length of Price when printing it?	*/


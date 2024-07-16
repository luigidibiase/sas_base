******************************************************;
*				 PROC IMPORT AND EXPORT				 *;
******************************************************;

*****************;
*  Proc Import  *;
*****************;

proc import datafile='C:/Users/luigi/OneDrive/Desktop/MasterClass2022/SAS/docenti.csv' /*Path of the file to be imported. */
			dbms=csv				/*Data Type or Format. */
		 	out=Lib1.Docenti		/*Library where the SAS table will be saved. */
		 	replace;				/*Option that replaces the table if exists. */
run;

/* Adding a reference for a file. */

filename docenti 'C:/Users/luigi/OneDrive/Desktop/MasterClass2022/SAS/docenti.csv';

proc import datafile=docenti dbms=csv out=Lib1.Docenti1;
run;

*****************;
*  Proc Export  *;
*****************;

proc export data=lib1.docenti 
			outfile='C:/Users/luigi/OneDrive/Desktop/MasterClass2022/SAS/docenti_export.csv'
			dbms=csv;
run;

/*Adding a reference for the output file. */

filename outFile 'C:/Users/luigi/OneDrive/Desktop/MasterClass2022/SAS/docenti_export.csv';

proc export data=lib1.docenti 
			outfile=outFile
			dbms=csv;
run;













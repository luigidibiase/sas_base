************************;
*		INFILE		   *;
************************;

Data Tests;
	infile 'C:\Users\luigi\OneDrive\Desktop\MasterClass2022\SAS\Csv\test.csv'  /*	Path. */
	delimiter=',' 						/*	Delimiter of the input file.*/
	firstobs=2;							/* 	Start from the second obs. 	*/
	input Student1 $ Test1 Test2 Test3; /*	Name of the variables. 		*/
run;


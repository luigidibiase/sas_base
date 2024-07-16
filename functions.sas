************************;
*		Functions	   *;
************************;

/*	Substr. */;

data substr;
	set sashelp.cars;
	Letters1_3 = substr(Make, 1, 3);
run;


/*	Length. */
data length;
	set sashelp.class;
	Length = Length(Name);
run;


*Dataset with Infile and Datalines;

Data Tests;
	infile datalines delimiter=',';
	input Student1 $ Test1 Test2 Test3;
	datalines;
Student1, 4, 6, 8
Student2, 9, 7, 8
Student3, 5, 6, 5
Student4, 10, 10, 7
;
run;

data Avg_Test;
	set Tests;
	Average = mean(Test1, Test2, Test3);
	Min = Min(Test1, Test2, Test3);
	Max = Max(Test1, Test2, Test3);
run;
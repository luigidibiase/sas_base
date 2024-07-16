proc sql;
	select memname 
	from dictionary.tables
	where libname='SASHELP';
quit;

%macro sashelp2excel(lib);

	proc sql;
			select memname into :tab1-
			from dictionary.tables
			where libname= upcase("&lib");

			select count(distinct(memname)) into :count
			from dictionary.tables
			where libname= upcase("&lib");
	quit;
	

	%do i=1 %to &count;

		%put --- &lib..&&tab&i.;

		proc export data= &lib..&&tab&i. 
			dbms=xlsx 
			outfile="C:\Users\luigi\OneDrive\Desktop\sashelp\&&tab&i...xlsx";

			%put --- &&tab&i. exported successfully.;
		run;


		

	%end;

%mend;


%sashelp2excel(sashelp);



%macro	timer(sec);

	%put --------------START--------------;

	%do i=&sec %to 0 %by -1;
		
		%let sleep = %sysfunc(sleep(1, 1));
		%put ---- The remaining time is: &i;

	%end;
	
	%put --------------END----------------;

%mend;

%timer(60);




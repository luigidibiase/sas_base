********************************************;
*			IF THEN, ELSE IF, ELSE		   *;
********************************************;

data if_then_01;
	age = 10;
	if modz(age, 2) = 0 then is_even = 1;
	else is_even = 0;
run;

/*	Generations.	*/
/*  1996–: Gen Z, iGen, or Centennials. 						*/
/*	1977 to 1995: Millennials or Gen Y. 						*/
/*  1965 to 1976: Generation X. 								*/
/*  1946 to 1964: Baby Boomers.									*/
/*  1945 and before: Traditionalists or the Silent Generation.	*/
    
/*  Source: Center for Generational Kinetics. 					*/ 
/*  https://www.thoughtco.com/names-of-generations-1435472  	*/


/*	IF. */	
data generations;
	birthdate = 1981;
	if 1945 <= birthdate < 1965 then Gen = 'Baby Boomers';
	if 1965 <= birthdate < 1977 then Gen = 'Generation X';
	if 1977 <= birthdate < 1996 then Gen = 'Millennials or Gen Y' ;
	if birthdate >= 1996 then Gen = 'Gen Z, iGen, or Centennials';
run;


/*	IF, ELSE IF*/
data generations;
	birthdate = 2000;
	if birthdate < 1965 then Gen = 'Baby Boomers';
	else if birthdate < 1977 then Gen = 'Generation X';
	else if birthdate < 1996 then Gen = 'Millennials or Gen Y' ;
	else Gen = 'Gen Z, iGen, or Centennials';
run;



data _esempio;
	x = 20;
	if x < 30 then y = 'A';
	if x < 60 then y = 'B';
	if x < 90 then y = 'C';
run;
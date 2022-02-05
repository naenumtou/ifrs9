/*Parameters setup*/
%let rate = 3.6;
%let payment = 15000;
%let os = 500000;

/*Amortization*/
data amortization;

Ending_balance = &os.;

do while(Ending_balance > 0);
	Ending_balance = Ending_balance + (Ending_balance * (&rate. / 100 / 12)) - &payment.;
	if Ending_balance <= 0 then delete;
	output;
end;

run;

/*Create terms payment*/
data amortization;
set amortization;
retain terms 0;
terms = terms + 1;
run;
/*Parameters setup*/
%let interest_rate = 0.036;
%let term = 24;
%let balance = 500000;

/*Amortization*/
data amortization (drop = i);

installment = finance('pmt', &interest_rate. / 12, &term., &balance., 0);
balance = &balance.;

do i = 1 to &term.;
	interest = balance * &interest_rate. / 12;
	principal = abs(installment) - interest;
	balance = balance - principal;
	output;
end;

run;
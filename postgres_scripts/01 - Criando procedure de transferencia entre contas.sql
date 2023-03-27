create or replace procedure transfer(
	sender int,
	receiver int,
	amount dec
)
language plpgsql
as $$
begin 
	
	update accounts 
	set balance = balance - amount
	where id = sender;
	
	update accounts 
	set balance = balance + amount
	where id = receiver;

	commit;

end; $$

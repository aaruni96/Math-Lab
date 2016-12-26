clc;
clear;
function f=f(x)
	f=2*x
endfunction
flag=0;
for i=1:100
	for j=1:100
		if f(i+j) == f(i)+f(j) then
			flag=1;
		else
			flag=0;
			abort;
		end
	end
end
if flag==1 then
	mprintf("Function is a homomorphism\n");
else
	mprintf("Function is not a homomorphism\n");
end

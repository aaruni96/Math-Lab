clc;
clear;
g=[1,-1,sqrt(-1),-sqrt(-1)];
h=[1,-1];
i=1;
if h(i)*h(i+1)==h(i) | h(i)*h(i+1)==h(i+1) then
	if h(i)*h(i)==h(i) | h(i)*h(i)==h(i+1) then
		if h(i+1)*h(i+1)==h(i) | h(i+1)*h(i+1)==h(i+1) then
			printf("H is closed under multiplication\n");
		else
			printf("H is not closed and hence H is not a group\n");
		end
	end
end
if h(i)*h(i)==h(i) & h(i+1)*h(i) == h(i+1) then
	e=h(i);
elseif h(i)*h(i+1)==h(i) & h(i+1)*h(i+1) == h(i) then
	e=h(i+1)
else
	printf("No identitiy element exists\nH is not a group\n");
	abort
end
printf("e=%f is a unique identity element \n",e);
in1=e/h(i);
in2=e/h(i+1);
if in1==h(i) | in1==h(i+1) then
	printf("i=%f is a unique inverse element of %d\n",in1,h(i));
if in2==h(i) | in2==h(i+1) then
	printf("i=%f is a unique inverse element of %d\n",in2,h(i+1));
else
	printf("No inverse element exists\nH is not a group\n");
	abort
end
printf("H satisfies all the three axioms under multiplicatin\n");
printf("Hence H is a group\n");
printf("H is a subset of G. Implies H is a subgroup of G\n");
printf("Lagrange's theorem : O(H) divides O(G)\n");
n=length(g);
m=length(h);
printf("Order of G = %d",n);
printf("Order of H = %d",m);
k=n/m;
if modulo(n,m)==0 then
	printf("O(G)/O(H) = %d",k);
	printf("Hence Lagrange's theorem holds\n");
	printf("Hence H is a subgroup of G\n");
else
	printf("%d is not divisor\n", k);
	printf("Hence thereom don't hold\n");
	printf("Hence H is not subgroup\n");
end

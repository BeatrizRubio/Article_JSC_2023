clear all;
clc;

format long 
n=5;

for i=1:n
    t(i)=i/n;
end


[M,A] = matrizM_polynomial2((transpose(t)));

M
A
 
 BDA=BDA(A,M,t);



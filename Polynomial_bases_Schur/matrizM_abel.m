function [M, A] = matrizM_abel(ts)

n=size(ts,1);
syms f(t)
f(t) = t;


%Collocation matrix Bessel polynomials
B = sym(zeros(n,n));
%  
% for col=1:size(B,2)
%     n=col;
%     v = sym(zeros(n,1));
%    
%     for i=1:n
%          B(i)=f*i;
%          
%     end
% end

%X=B(1,:);
X=[1,1+t,1+t^2,1+t^2+t^3]

n = size(X,2);
A = zeros(n);
for i=1:n
    coef = coeffs(X(i));
    A(i,1:numel(coef)) = coef;
end

A
% M = zeros(n);
% for i=1:n
%     t=ts(i);
%     M(i,:)=eval(X);    
end

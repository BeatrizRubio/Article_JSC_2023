function [M, A] = matrizM_polynomial(ts)

n=size(ts,1);
syms f(t)
f(t) = t;


%Collocation matrix polynomial basis
B = sym(zeros(n,n));
 
for col=1:size(B,2)
    n=col;
    v = sym(zeros(n,1));
   
    for i=1:n
         %v(i)=(-i-2)^(i-1)*f^(i-1);
            v(i)=(i+1)*f^(i-1);
    end
   
    B(1,col)=simplify(sum(v));
end

X=B(1,:)

n = size(X,2);
A = zeros(n);
for i=1:n
    coef = coeffs(X(i));
    A(i,1:numel(coef)) = coef;
end

M = zeros(n);
for i=1:n
    t=ts(i);
    M(i,:)=eval(X);    
end

function [M, A] = matrizM_hermite(ts)

n=size(ts,1);
syms f(t)
f(t) = t;


%Collocation matrix Jacobi polynomials

B = sym(zeros(n,n));
 
for col=1:size(B,2)
    n=col;
    B(1,col)=hermiteH(n-1,t);
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

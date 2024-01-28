function [M, A] = matrizM(ts)

n=size(ts,1);
syms f(t)
f(t) = ((t-1)/2);

alpha=sym(1); %(alpha, beta >-1) Corollary 1
beta=sym(2);


%Collocation matrix Jacobi polynomials
B = sym(zeros(n,n));
 
for col=1:size(B,2)
    n=col;
    v = sym(zeros(n,1));
   
    for i=1:n
        v(i)=((gamma(alpha+n)/(factorial(n-1)*gamma(alpha+beta+n))))*nchoosek(n-1,i-1)*gamma(alpha+beta+n-1+(i-1)+1)/gamma(alpha+(i-1)+1)*f^(i-1);
    end
   
    B(1,col)=simplify(sum(v));
end

X=B(1,:);

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

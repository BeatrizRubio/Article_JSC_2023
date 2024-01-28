clear all;
clc;

format long 
n= 15;

for i=1:n
    t(i)=i/n;
end

% M=[1,2*t(1)+1,3*t(1)^2+2*t(1)+1, 4*t(1)^3+3*t(1)^2+2*t(1)+1,5*t(1)^4+ 4*t(1)^3+3*t(1)^2+2*t(1)+1;...
%     1,2*t(2)+1,3*t(2)^2+2*t(2)+1, 4*t(2)^3+3*t(2)^2+2*t(2)+1,5*t(2)^4+ 4*t(2)^3+3*t(2)^2+2*t(2)+1;...
%     1,2*t(3)+1,3*t(3)^2+2*t(3)+1, 4*t(3)^3+3*t(3)^2+2*t(3)+1,5*t(3)^4+ 4*t(3)^3+3*t(3)^2+2*t(3)+1;...
%     1,2*t(4)+1,3*t(4)^2+2*t(4)+1, 4*t(4)^3+3*t(4)^2+2*t(4)+1,5*t(4)^4+ 4*t(4)^3+3*t(4)^2+2*t(4)+1;...
%     1,2*t(5)+1,3*t(5)^2+2*t(5)+1, 4*t(5)^3+3*t(5)^2+2*t(5)+1,5*t(5)^4+ 4*t(5)^3+3*t(5)^2+2*t(5)+1];


[M,A] = matrizM_polynomial((transpose(t)));


A 

TNBD(A)

%  BDA=BDA(A,t);
%  
%  
%   %Inverse Matrix
% 
% IB=TNInverseExpand(BDA)
% IM=inv(M)
% dlmwrite('inversepolynomialB5.csv',IB,'precision','%.45f');
% dlmwrite('inversepolynomialM5.csv',IM,'precision','%.45f');
% 
% 
% %function A=TNInverseExpand(B)  
% %Computes directly the inverse a square TN matrix whose bidiagonal
% bidiagonal decomposition is stored in B, using the 
% results on the factorization of A and its inverse presented in:
% Ana Marco, Jose-Javier Martinez:  Accurate computations with totally 
% positive Bernstein-Vandermonde matrices.
% Electronic Journal of Linear Algebra, Volume 26 (2013): 357--380.





clear all;
clc;

format long 
syms x
n=15;

for i=1:n
    ts(i)=1+i/n;
end


X=[1,1+2*x,1+2*x+3*x^2,1+2*x+3*x^2+4*x^4, 1+2*x+3*x^2+4*x^4+5*x^5, 1+2*x+3*x^2+4*x^4+5*x^5+6*x^6 ...,
    1+2*x+3*x^2+4*x^4+5*x^5+6*x^6,  1+2*x+3*x^2+4*x^4+5*x^5+6*x^6+7*x^7, 1+2*x+3*x^2+4*x^4+5*x^5+6*x^6+7*x^7+8*x^8 ...,
     1+2*x+3*x^2+4*x^4+5*x^5+6*x^6+7*x^7+8*x^8+9*x^9,    1+2*x+3*x^2+4*x^4+5*x^5+6*x^6+7*x^7+8*x^8+9*x^9+10*x^10];

 eval(X)
 M = zeros(n);
% for i=1:n
%     t=ts(i);
%     M(i,:)=eval(X);
% end
 
% n = size(X,2);
% A = zeros(n);
% for i=1:n
%     coef = coeffs(X(i));
%     A(i,1:numel(coef)) = coef;
% end
% 
% M = zeros(n);
% for i=1:n
%     t=ts(i);
%     M(i,:)=eval(X);
% end


M
A

%  [M,A] = matrizM_bessel((transpose(t)));
%  
% 
% BDA=BDA(A,M,t);
% 
% %  
% %b = [17, -31, 77, -83, 27, -11, 96, -57, 70, -64];
% % 
% b=[17,-31,77,-83,27,-11,96,-57,70,-64,29,-41,46,-16,74];
%    
% SolBDA=transpose(TNSolve(BDA,b))
% SolM = M\transpose(b)
%  
% dlmwrite('systemCollocationMatrixBesselB15.csv',SolBDA,'precision','%.45f');
% dlmwrite('systemCollocationMatrixBesselM15.csv',SolM,'precision','%.45f');
% 
% 

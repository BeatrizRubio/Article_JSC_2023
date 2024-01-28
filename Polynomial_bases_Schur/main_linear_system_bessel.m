clear all;
clc;

format long 
n=10;

for i=1:n
    t(i)=i/n;
end



%[M,A] = matrizM_bessel((transpose(t)))

[M,A] = matrizM_abel((transpose(t)))

A
 


% BDA=BDA(A,M,t);
% 
% 
% b = [17, -31, 77, -83, 27, -11, 96, -57, 70, -64];
% % 
% %b=[17,-31,77,-83,27,-11,96,-57,70,-64,29,-41,46,-16,74];
%    
% SolBDA=transpose(TNSolve(BDA,b))
% SolM = M\transpose(b)
%  
% dlmwrite('systemCollocationMatrixBesselB10.csv',SolBDA,'precision','%.45f');
% dlmwrite('systemCollocationMatrixBesselM10.csv',SolM,'precision','%.45f');
% 
% 

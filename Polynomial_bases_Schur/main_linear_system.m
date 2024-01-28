clear all;
clc;

format long 
n=4;

for i=1:n
    t(i)=1+i/n;
end
t = [1.1 1.2 1.4 1.7];


 [M,A] = matrizM((transpose(t)))
 
 A

 M

%BDA=BDA(A,M,t)

%  
% %b = [17, -31, 77, -83, 27, -11, 96, -57, 70, -64];
% 
%  b=[17,-31,77,-83,27,-11,96,-57,70,-64,29,-41,46,-16,74];
% %   
%  SolBDA=transpose(TNSolve(BDA,b))
%  SolM = M\transpose(b)

%    
%    dlmwrite('systemCollocationMatrixJacobiB.csv',SolBDA,'precision','%.45f');
% dlmwrite('systemCollocationMatrixJacobiM.csv',SolM,'precision','%.45f');
%  
%  
%  
%  
% 

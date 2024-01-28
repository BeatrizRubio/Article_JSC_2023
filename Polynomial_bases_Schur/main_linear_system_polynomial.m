clear all;
clc;

format long 
n=3;

for i=1:n
    t(i)=i/n;
end




[M,A] = matrizM_polynomial((transpose(t)));
 
M
A

%  BDA=BDA(A,M,t);
%  
%  cond(M)
%   
%  
%    %b = [17, -31, 77, -83, 27]
%   %b = [17, -31, 77, -83, 27, -11, 96, -57, 70, -64];
% 
% b=[17,-31,77,-83,27,-11,96,-57,70,-64,29,-41,46,-16,74];
% 
% % b=[17,-31,77,-83,27,-11,96,-57,70,-64,29,-41,46,-16,74,-64,29,-41,46,-16]
% % % % %    
%   SolBDA=transpose(TNSolve(BDA,b))
% 
%   SolM = M\transpose(b)
% %   
%    dlmwrite('systemCollocationMatrixpolynomialB15.csv',SolBDA,'precision','%.45f');
%    dlmwrite('systemCollocationMatrixpolynomialM15.csv',SolM,'precision','%.45f');
% 
% 

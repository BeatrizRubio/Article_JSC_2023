clear all;
clc;

format long 
n=5;
a=1

for i=1:n
    t(i)=9+i/(n+1);
end

A=[1, 0, 0, 0, 0, 0, 0, 0, 0, 0
0, 1, 0, 0, 0, 0, 0, 0, 0,0;...
0, -2*a, 1, 0, 0, 0, 0, 0, 0, 0;...
0, 9*a^2, -6*a, 1, 0, 0, 0, 0, 0, 0;
 0, -64*a^3, 48*a^2, -12*a, 1,  0, 0, 0, 0, 0;
0, 625*a^4, -500*a^3, 150*a^2, -20*a, 1, 0, 0, 0, 0;...
 0, -7776*a^5, 6480*a^4, -2160*a^3,  360*a^2, -30*a, 1, 0, 0, 0;...
 0, 117649*a^6, -100842*a^5, 36015*a^4, -6860*a^3, 735*a^2, -42*a, 1, 0, 0;...
 0, -2097152*a^7, 1835008*a^6, -688128*a^5, 143360*a^4, -17920*a^3, 1344*a^2, -56*a, 1,0;...
 0, 43046721*a^8, -38263752*a^7, 14880348*a^6, -3306744*a^5, 459270*a^4, -40824*a^3, 2268*a^2, -72*a, 1];
% 
    size(A)

    
    
    

% 
% A=[1, 0, 0, 0, 0;0,1, 0, 0, 0;0, -2*a, 1, 0, 0;...
%    0, 9*a^2, -6*a, 1,0; 0, -64*a^3, 48*a^2, -12*a,1];


for i= 1:n 
for j=1:n
     M(j,i)=t(j).*(t(j)-a.*(i-1)).^(i-2);
  
end
end

det(M)

M

inv(M)
% 
%BDA=BDA(A,t)


% 
% %b=[17, -31, 77, -83, 27]
% 
% 
% % 
%  b = [17, -31, 77, -83, 27, -11, 96, -57, 70, -64];
% % % % 
% %  b=[17,-31,77,-83,27,-11,96,-57,70,-64,29,-41,46,-16,74];
% % % %    
% SolBDA=transpose(TNSolve(BDA,b))
% SolM = M\transpose(b)
%  
% dlmwrite('systemCollocationMatrixAbelB10.csv',SolBDA,'precision','%.45f');
% dlmwrite('systemCollocationMatrixAbelM10.csv',SolM,'precision','%.45f');
% 
% 
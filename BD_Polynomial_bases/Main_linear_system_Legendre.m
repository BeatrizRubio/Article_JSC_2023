clear all;

format long


n=10

for i=1:n
    t(i)= 1+i/(n+1);
end 


A=[1,0,0,0,0;0,1,0,0,0;-1/2,0,(3)/2,0,0;...
 0,-3/2,0,5/2,0; 3/8,0, -15/4,0, 35/8];


A=[1,0,0,0,0,0,0,0,0,0;0,1,0,0,0,0,0,0,0,0;-1/2,0,(3)/2,0,0,0,0,0,0,0;...
0,-3/2,0,5/2,0,0,0,0,0,0; 3/8,0, -15/4,0, 35/8,0,0,0,0,0;...
0,15/8,0,-35/4,0,63/8,0,0,0,0;-5/16,0,105/16,0,-315/16,0,231/16,0,0,0;...
0,-35/16,0,315/16,0,-693/16,0,429/16,0,0;...
35/128,0, -315/32,0,3465/64,0,-3003/32,0,6435/128,0;...
0,315/128,0, -1155/32,0, 9009/64,0, -6435/32,0, 12155/128];


A
 



size(A)

BDA=BDA(A,t)

%cond(M)
 
%b = [17, -31, 77, -83, 27];
%b =[ 17, -31, 77, -83, 27, -11, 96, -57, 70, -64];
%b=[17,-31,77,-83,27,-11,96,-57,70,-64,29,-41,46,-16,74];
% % 
% %b=[17,-31,77,-83,27,-11,96,-57,70,-64,29,-41,46,-16,74,-64,29,-41,46,-16]
% % % % % % % %    
%  SolBDA=transpose(TNSolve(BDA,b))
%  SolM = M\transpose(b)
% % % % %  
% dlmwrite('systemCollocationLegendreB5.csv',SolBDA,'precision','%.45f');
% dlmwrite('systemCollocationLegendreM5.csv',SolM,'precision','%.45f');
% % % 

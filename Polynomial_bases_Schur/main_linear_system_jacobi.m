clear all;

format long


n=10

for i=1:n
    t(i)= 1+i/(n+1);
end 


A=[1,0,0,0,0,0,0,0,0,0; -1/2, 5/2,0,0,0,0,0,0,0,0;-3/4, -3/2, 21/4,0,0,0,0,0,0,0;...
1/2, -7/2, -7/2, 21/2,0,0,0,0,0,0; 5/8, 5/2, -45/4, -15/2, 165/8,0,0,0,0,0;
-15/32, 135/32, 135/16, -495/16, -495/32, 1287/32,0,0,0,0;...
-35/64, -105/32, 1155/64, 385/16, -5005/64, -1001/32, 5005/64,0,0,0;...
7/16, -77/16, -231/16, 1001/16, 1001/16, -3003/16, -1001/16, 2431/16,0,0;...
63/128, 63/16, -819/32, -819/16, 12285/64, 2457/16, -13923/32, -1989/16, 37791/128,0;...
-3607772528665/8796093022208, 46901042872489/8796093022208, 46901042872199/2199023255552, -234505214361411/2199023255552, -703515643085143/4398046511104, 2391953186488495/4398046511104, 797317728829419/2199023255552, -2164148121108479/2199023255552, -2164148121108481/8796093022208, 5049678949253121/8796093022208]



%A=[1,0,0,0,0;-1/2,5/2,0,0,0;-3/4,-3/2,21/4,0,0;1/2,-7/2,-7/2,21/2,0;5/8, 5/2, -45/4, -15/2, 165/8]



BDA=BDA(A,t)


%cond(M)
 
%b = [17, -31, 77, -83];
%b =[ 17, -31, 77, -83, 27, -11, 96, -57, 70, -64];
%b=[17,-31,77,-83,27,-11,96,-57,70,-64,29,-41,46,-16,74];
% % 
% %b=[17,-31,77,-83,27,-11,96,-57,70,-64,29,-41,46,-16,74,-64,29,-41,46,-16]
% % % % % % % %    
  %SolBDA=transpose(TNSolve(BDA,b))
%  SolM = M\transpose(b)
% % % % %  
% dlmwrite('systemCollocationMatrixMittag_LefferB10.csv',SolBDA,'precision','%.45f');
% dlmwrite('systemCollocationMatrixMittag_LefferM10.csv',SolM,'precision','%.45f');
% % 
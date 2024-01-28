clear all;

format long E


n=5;

% for i=1:n
%     t(i)= 4+i/n;
% end 

t=[4.5,4.7,4.8,5,5.2]

for i=1:n
    for j=1:n
    M(i,j)=hermiteH(j-1,t(i));
    end   
end 


% A= [1,0,0,0,0,0,0,0,0,0,0,0,0,0,0;...
%    0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,;...
%    -2,0,4,0,0,0,0,0,0,0,0,0,0,0,0;...
%    0,-12,0,8,0,0,0,0,0,0,0,0,0,0,0;...
%    12,0,-48,0,16,0,0,0,0,0,0,0,0,0,0;...
%    0,120,0,-160,0,32,0,0,0,0,0,0,0,0,0;...
%    -120,0,720,0,-480,0,64,0,0,0,0,0,0,0,0;...
%    0,-1680,0,3360,0,-1344,0,128,0,0,0,0,0,0,0;...
% 1680,0,-13440,0,13440,0,-3584,0,256,0,0,0,0,0,0;...
% 0,30240,0,-80640,0,48384,0,-9216,0,512,0,0,0,0,0;...
% -30240,0,302400,0,- 403200,0,161280,0, - 23040,0,1024,0,0,0,0;...
% 0,-665280,0,2217600,0, - 1774080,0, + 506880,0,- 56320,0,2048,0,0,0;...
% 665280,0,-7983360,0,13305600,0, - 7096320,0, 1520640,0,- 135168,0,4096,0,0;...
% 0,17297280,0,- 69189120,0,69189120,0,- 26357760,0, 4392960,0,- 319488,0,8192,0;...
% -17297280,0,242161920,0,- 484323840,0,322882560,0,- 92252160,0,12300288,0,- 745472,0,16384];





% A=[1,0,0,0,0,0,0,0,0,0;...
%    0,2,0,0,0,0,0,0,0,0;...
%    -2,0,4,0,0,0,0,0,0,0;...
%    0,-12,0,8,0,0,0,0,0,0;...
%    12,0,-48,0,16,0,0,0,0,0;...
%    0,120,0,-160,0,32,0,0,0,0;...
%    -120,0,720,0,-480,0,64,0,0,0;...
%    0,-1680,0,3360,0,-1344,0,128,0,0;...
% 1680,0,-13440,0,13440,0,-3584,0,256,0;...
% 0,30240,0,-80640,0,48384,0,-9216,0,512];
  
 
A=[1,0,0,0,0;0,2,0,0,0;-2,0,4,0,0; 0,-12,0,8,0;12,0,-48,0,16]

BDA=BDA(A,t)

TNBD(M)



%Lynear system
 %b=[17, -31, 77, -83, 27]
% 
% 
% % 
 %b = [17, -31, 77, -83, 27, -11, 96, -57, 70, -64];
% % % % 
 %b=[17,-31,77,-83,27,-11,96,-57,70,-64,29,-41,46,-16,74];
% % % %    
%  SolBDA=transpose(TNSolve(BDA,b))
%  SolM = M\transpose(b)
% %  
%  dlmwrite('systemHermiteB.csv',SolBDA,'precision','%.45f');
%  dlmwrite('systemHermiteM.csv',SolM,'precision','%.45f');
% % 
% % 
% 

  
% EVB=min(TNEigenValues(BDA))
% EVM=min(eig(M))
% dlmwrite('EVHermiteB.csv',EVB,'precision','%.45f');
% dlmwrite('EVHermiteM.csv',EVM,'precision','%.45f'); 
%   
% SVB=min(TNSingularValues(BDA))
% SVM=min(svd(M))
% dlmwrite('SVHermiteB.csv',SVB,'precision','%.45f');
% dlmwrite('SVHermiteM.csv',SVM,'precision','%.45f');
% 
% 
% %function a=TNSingularValues(B);
% %Computes the singular values of a TN matrix A with bidiagonal
% % decomposition B=BD(A)
% % Written February 2003
% % Copyright (c) 2004 Plamen Koev. See COPYRIGHT.TXT for more details.


 

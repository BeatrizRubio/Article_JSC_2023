clear all;
clc;

format long E
n=15;

for i=1:n
    t(i)=1+i/(n+1);
end


[M,A] = matrizM_polynomial2((transpose(t)));

A

% 
BDA=BDA(A,t)
% 
% 
% 
% % % 
% % % 
% c =[ 1, -2, 3, -4,1];
% c10=[1, -2, 3, -4, 1, -6, 7,  -8, 9,-1];
%  c15 = [1, -2, 3, -4, 1, -6, 7, -8, 9, -1, 6, -1, 2, -3, 3];
% % % % 
% % % % % 
%  SolBD=transpose(TNSolve(BDA,c))
%   SolM = M\transpose(c)
% % 
% dlmwrite('systemPolynomial2B.csv',SolBD,'precision','%.45f');
% dlmwrite('systemPolynomial2M.csv',SolM,'precision','%.45f');
% % 
% % 
%%%INVERSA%%%%%
%5. Inverse Matrix
IB=TNInverseExpand(BDA);
IM=inv(M);
dlmwrite('inverseB.csv',IB,'precision','%.45f');
dlmwrite('inverseM.csv',IM,'precision','%.45f');

% %%%%EIGEN VALUES/ SINGULAR VALUES
% %Eigen values 
% EVB=min(TNEigenValues(BDA));
% EVM=min(eig(M));
% dlmwrite('EV_CollocationPolynomial2B5.csv',EVB,'precision','%.45f');
% dlmwrite('EV_CollocationPolynomial2M5.csv',EVM,'precision','%.45f');
% 
%  
% % %Singular values   
% SVB=min(TNSingularValues(BDA));
% SVM=min(svd(M));
% dlmwrite('SV_CollocationPolynomial2B5.csv',SVB,'precision','%.45f');
% dlmwrite('SV_CollocationPolynomial2M5.csv',SVM,'precision','%.45f');
% 
% % 
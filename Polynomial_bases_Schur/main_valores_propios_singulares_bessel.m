clear all;
clc;

format long 
n=15;

for i=1:n
    t(i)=1+i/n;
end



[M,A] = matrizM_bessel((transpose(t)));
 


BDA=BDA(A,M,t);

%Eigenvalues
 
EVB=min(TNEigenValues(BDA))
EVM=min(eig(A))
dlmwrite('EVBesselB.csv',EVB,'precision','%.45f');
dlmwrite('EVBesselM.csv',EVM,'precision','%.45f');

%Singular values 
 
SVB=min(TNSingularValues(BDA))
SVM=min(svd(A))
dlmwrite('SVBesselB.csv',SVB,'precision','%.45f');
dlmwrite('SVBesselM.csv',SVM,'precision','%.45f');


% function a=TNEigenValues(B)
% Computes the eigenvalues of a TN matrix with bidiagonal decomposition
% stored in B
% Copyright (c) 2004 Plamen Koev. See COPYRIGHT.TXT for more details.
% Written February 2003
%July 2015: Added the return of the eigenvector matrix V
%            Supported by SJSU's Woodward Fund

%function a=TNSingularValues(B);
%Computes the singular values of a TN matrix A with bidiagonal
% decomposition B=BD(A)
% Written February 2003
% Copyright (c) 2004 Plamen Koev. See COPYRIGHT.TXT for more details.









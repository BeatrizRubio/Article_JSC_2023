% function a=TNEigenValues(B)
%
% Computes the eigenvalues of a TN matrix with bidiagonal decomposition
% stored in B
%
% Copyright (c) 2004 Plamen Koev. See COPYRIGHT.TXT for more details.
% Written February 2003
%
% July 2015: Added the return of the eigenvector matrix V
%            Supported by SJSU's Woodward Fund
%
% January 2018: Removed the "symmetrizing part" counting on TNtridiag 
%               to return a symmetric matrix. Thanks to Jose-Javier
%               Martinez for this observation.


function [a,V]=TNEigenValues(B)
[B,V]=TNtridiag(B);

d=sqrt(diag(B));
e=sqrt(diag(B,1).*diag(B,-1)).*d(1:length(d)-1);
a=mexdlasq1(d,e).^2;

if nargout==2
    [~,~,Z]=svd(diag(d)+diag(e,1));
    V=V*Z;
end



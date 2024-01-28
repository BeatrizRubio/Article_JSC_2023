
clear all

format long E

syms t

n=4

%Matriz cyclotomic polynomialas
%A=[-1,1,0,0; 1,1,0,0; 1,1,1,0;1,0,1,0]


%BDA matriz de cambio base Mot polynomials
%A=[1,0,0,0;0,-1/2,0,0;0,0,1/4,0;0,6/8,0,-1/8];

%BDA matriz de cambio de base de Bateman polynomials

%A=[1,0,0,0;0,-1,0,0;1/4,0,3/4,0;0,-7/12,0,-5/12]

%BDA Mittag Leffer

A=[1,0,0,0; 0,2,0,0;0,0,4,0;0,4,0,8]

A



%M=[1,0,0,0;0,-t,0,0;0,0,t^2,0;0,0,0,-t^3];

%B*M

t=[9.4,9.5,9.6,9.7]
%t=[-8.4, -8.5, -8.6, -8.7]
% 
% for i=1:n
%     t(i)= i/n;
% end 

%Matriz Mahler polynomials

%A=[1,0,0,0,0;0,0,0,0,0;0,-1,0,0,0;0,-1,0,0,0;0,-1,3,0,0]

%t=[8.4,8.5,8.6,8.7]


BDA=BDA(A,t)
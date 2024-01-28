
clear all
format long E

p=4

syms x

% t



S=stirling2(p);

n=p+1;

B=zeros(n,n);

for i=2:n
    for j=2:n
        B(i,j)= S(i-1,j-1);
     end
end
 
B(1,1)=1;


for i=1:n
    t(i)=3+i/(n+1);
end


 for i=1:n
     for j=1:n
         C(i,j)=x^(j-1);
         
     end
     
 end


 
A=C*transpose(B);

for i=1:n
    for j=1:n
        B(i,j)=subs(A(i,j),t(i));
    end
end 


M=B;



% 
% 
 A=[1,0,0,0,0;0,1,0,0,0; 0,1,1,0,0; 0,1,3,1,0; 0,1,7,6,1];


 
 BDA=BDA(A,t);

%cond(M)
 
b = [17, -31, 77, -83, 27];
%b =[ 17, -31, 77, -83, 27, -11, 96, -57, 70, -64];
%b=[17,-31,77,-83,27,-11,96,-57,70,-64,29,-41,46,-16,74];
% % 
% %b=[17,-31,77,-83,27,-11,96,-57,70,-64,29,-41,46,-16,74,-64,29,-41,46,-16]
% % % % % % % %    
SolBDA=transpose(TNSolve(BDA,b))
SolM = M\transpose(b)
% % % % %  
dlmwrite('systemCollocationMatrixBellB5.csv',SolBDA,'precision','%.45f');
dlmwrite('systemCollocationMatrixBellM5.csv',SolM,'precision','%.45f');


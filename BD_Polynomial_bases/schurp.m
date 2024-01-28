% function y=schurp(l,x)
%
% Computes the Schur function corresponding to a partition l of argument
% vector x, e.g., schurp([2 1],[1 2 3 4]) is the schur function
% s_{(2,1)}(1,2,3,4)
%
% Uses results from Chapter 6 of the paper
% Plamen Koev, "Accurate Computations with Totally Nonnegative Matrices",
% SIMAX, 2007
%
% Plamen Koev, Massachusetts Institute of Technology
% Written January 16, 2007

function y=schurp(l,x)

n=length(x);

if length(l)<=n 
    l=[l,zeros(1,n-length(l))];
end

if l(n+1)>0, y=0; return; end

if l(n)>0
    y=prod(x)^(l(n)); 
    l(1:n)=l(1:n)-l(n); 
else
    y=1;
end

% We only need the unit upper triangular part of TNVandBD(x,n+l(1))
% which is [1 x(1) x(1) ...; 0 1 x(2) x(2) ..., ...]

m=n+l(1); % B is m-by-n      

b=zeros(1,m*n);
for j=1:n
    b((j-1)*n+j)=1;
    b(((j+1:m)-1)*n+j)=x(j);
end

% We are now using b which is the linearlized version of B by rows

%B=eye(m,n);

%for i=1:n
%    B(i+1:end,i)=x(i);
%end


      % We use the transpose of B, because we know how to erase rows

for r=2:n+1
    for v=1:(l(r-1)-l(r))
       ii=m-r+1; % erase row i of B
        
       for j=1:min(ii-1,n)
          if j<n
            x=b(ii*n+j);
%            x=B(i+1,j);
            k=ii-j+1;
    
%            t=B(j+k,j+1);
            t=b((j+k-1)*n+j+1);
%            B(j+k,j+1)=x+t;
            b((j+k-1)*n+j+1)=x+t;

            p=j+1;
            while (p+k<=m) && (p<=n) 
%               e=B(k+p,p)/B(p+k-1,p);
               e=b((k+p-1)*n+p)/b((p+k-2)*n+p); 
               x=e*x;
%               B(k+p,p)=e*t;
               b((k+p-1)*n+p)=e*t;
               if (p+1<=n)
%                  t=B(p+k,p+1);
                  t=b((p+k-1)*n+p+1);
                  b((p+k-1)*n+p+1)=t+x;
%                  B(p+k,p+1)=t+x;
               end
               p=p+1;
            end
          end
%          B(i+1,j)=B(i+1,j)*B(i,j); 
          b(ii*n+j)=b(ii*n+j)*b((ii-1)*n+j);
       end

%       B(n+1,n)=B(n+1,n)*B(n,n);
       b(n*n+n)=b(n*n+n)*b((n-1)*n+n);
       for j=n:-1:ii+1
%           B(j,j-1)=B(j,j-1)*B(j-1,j-1);
           b((j-1)*n+j-1)=b((j-1)*n+j-1)*b((j-2)*n+j-1);
           b((j-1)*n+j)=b((j-1)*n+j)/b((j-1)*n+j-1);
%           B(j,j)=B(j,j)/B(j,j-1);
       end

%       B(i:m-1,:)=B(i+1:m,:);      
       b((ii-1)*n+1:end-n)=b(ii*n+1:end);
%       B(m,:)=0; technically, there is no need for this line
       m=m-1;
    end
end

y=y*prod(b((1:n)*(n+1)-n));

% y=prod(diag(B));
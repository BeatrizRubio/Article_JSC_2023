function S=stirling2(N)
S=zeros(N);
S(:,1)=1;
for i=2:N
    for j=2:i
        S(i,j)=S(i-1,j-1)+j*S(i-1,j);
    end
end


%  for j=1:n+1
% %         v(j)=B(n+1,j);
% %     end

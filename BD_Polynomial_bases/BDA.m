function BDA = BDA(A,t)

global schurs count;
schurs = containers.Map();
count = 0;

n = size(A,1);
BDA = zeros(n);
P = zeros(n);
hayP = zeros(n);

% %upper triangle
for i=1:n
    for j=i+1:n
        if hayP(j,i) == 0
            P(j,i) = funcionP(A,t,j,i);
            hayP(j,i) = 1;
        end
        if hayP(j-1,i) == 0
            P(j-1,i) = funcionP(A,t,j-1,i);
            hayP(j-1,i) = 1;
        end
        BDA(i,j) = P(j,i)/P(j-1,i);     
    end   
end


%lower triangle
for i=2:n
    for j=1:i-1
        BDA(i,j) = funcionM(t,i,j);
    end   
end

%lower diagonal

for i=1:n
    BDA(i,i) = funcionD(A,t,i);
end


function d = funcionD(A, t, i)

d = A(i,i);
for factor=1:i-1
    d = d * (t(i) - t(i-factor));
end 
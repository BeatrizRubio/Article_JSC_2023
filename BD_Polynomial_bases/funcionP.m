function p = funcionP(A, t, i, j)
fprintf('%d %d\n',i,j);
n = size(A,1);

if (j == 1)
    p = 0;
    for l=1:n
        determinante = det(A(i,l))
        if determinante ~= 0
            p = p + determinante * schurpoly3(l-1, t(1));  
        end
    end
else
    arriba = 0;
    comb = nchoosek(1:n,j);
    for c=1:size(comb,1)
        S = zeros(j,1);
        for s=0:j-1
            S(s+1) = comb(c,j-s) - j + s;
        end
        determinante = det(A(i-j+1:i,comb(c,:)));
        if determinante ~= 0
            arriba = arriba + determinante * schurpoly3(S,t(1:j));
        end
    end
   
    i=i-1;
    j=j-1;
    abajo = 0;
    comb = nchoosek(1:n,j);
    for c=1:size(comb,1)
        S = zeros(j,1);
        for s=0:j-1
            S(s+1) = comb(c,j-s) - j + s;
        end
        determinante = det(A(i-j+1:i,comb(c,:)));
        if determinante ~= 0
            abajo = abajo + determinante * schurpoly3(S,t(1:j));
        end
    end

    p = arriba/abajo;
end
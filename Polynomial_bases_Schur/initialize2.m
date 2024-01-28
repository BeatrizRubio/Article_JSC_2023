function glob = initialize2(t,k,l,glob)
%   global Lmax Lp sh n lma

  if k<=glob.Lp
     m=glob.Lmax(k)-1;
     if (k>1)
        m=min(m,part2(l,k-1,glob));
     end
     
     for i=1:m
        l=l+glob.lma(k);
        glob.sh(l+1,1:t,1:glob.n)=-ones(t,glob.n);
        glob = initialize2(t,k+1,l,glob);
     end
  end
function f=schurpoly2(l,xx)
%     global x sh Lp Lmax n lma
  glob.x=xx;
  glob.n=length(glob.x);
  glob.Lp=0;
  while (length(l)>glob.Lp)&(l(glob.Lp+1)>0)
     glob.Lp=glob.Lp+1;
  end % number of parts in l
  l=l(1:glob.Lp);
  glob.Lmax=l+1;
  glob.sh(prod(glob.Lmax),1,glob.n)=-1; % allocate space
  if glob.Lp>0
     glob.lma(glob.Lp)=1;
     for i=glob.Lp-1:-1:1
        glob.lma(i)=glob.lma(i+1)*glob.Lmax(i+1);
     end

     glob = initialize2(1,1,0,glob);
     if isequal(class(xx),'sym')
        glob.sh=sym(glob.sh);
     end
     f=sch2(1,glob.n,1,nmu2(l, glob),glob);
  else
     f=1;
  end
%   clear x Lmax sh Lp n lma;



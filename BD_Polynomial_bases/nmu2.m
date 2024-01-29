function f=nmu2(l,glob)
% global Lmax Lp
  f=0;
  for i=1:glob.Lp
     f=glob.Lmax(i)*f;
     if i<=length(l)
        f=f+l(i);
     end
  end
  
  
  % nmu computes the unique integer that represents the partition l
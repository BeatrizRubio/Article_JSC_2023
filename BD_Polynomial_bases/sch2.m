function [f,glob] = sch2(m,j,k,l, glob);
%   global x Lp Lmax n sh lma
  
  s=1;

  if (m<=j)&(l>0)
    t=glob.sh(l+1,m,j);
    if (k==1)&(t~=-1)
      s=t;
    elseif part2(l,j-m+2,glob)>0
      s=0;
    elseif part2(l,j-m+1,glob)>0
      t=part2(l,j-m+1,glob);
      [res,glob] = sch2(m,j,1,l-t*sum(glob.lma(1:j-m+1)),glob);
      s=s*prod(glob.x(m:j))^t * res;  
    elseif j==m
        s=s*glob.x(m)^l(1);
    else
      i=k;
      [s,glob]=sch2(m,j-1,1,l,glob);
      if (k==1)&(part2(l,1,glob)>part2(l,2,glob))
        i=2;
        [res,glob] = sch2(m,j,1,l-glob.lma(1),glob);
        s=s+res*glob.x(j);
      end
      while part2(l,i,glob)>0
        if part2(l,i,glob)>part2(l,i+1,glob)
          if part2(l,i,glob)>1
             [res,glob] = sch2(m,j,i,l-glob.lma(i),glob);
             s=s+glob.x(j)*res;
          else
              [res,glob] = sch2(m,j-1,1,l-glob.lma(i),glob);
             s=s+glob.x(j)*res;
          end
        end
        i=i+1;
      end
    end
    
    if k==1
      glob.sh(l+1,m,j)=s;
   end
  end 
  f=s;
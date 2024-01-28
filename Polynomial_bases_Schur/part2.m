function f=part2(pn,i,glob)
% global lma

if i>length(glob.lma)
   f=0;
else
   if i==1
      f=floor(pn/glob.lma(i));
   else
      f=floor(mod(pn,glob.lma(i-1))/glob.lma(i));
   end
end
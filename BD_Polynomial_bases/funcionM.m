function m = funcionM(t, i, j)
m=1; 
if j>1
else
    for factor=1:j-1
        m = m * (t(i) - t(i-factor))/(t(i-1) - t(i-factor-1));
    end   
end


% if (j == 1)
%     m = 1;
% else
%     m = 1;
%     for factor=1:j-1
%         m = m * (t(i) - t(i-factor))/(t(i-1) - t(i-factor-1));
%     end   
% end
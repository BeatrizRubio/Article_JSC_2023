function s=schurpoly3(S,t)

global schurs;

key = strjoin(string(S), '#') + '$' + size(t,2);
if isKey(schurs, key) 
    s = schurs(key);
else
    s = schurpoly2(S, t);
    schurs(key) = s;
end


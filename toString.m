function [new] = toString(y)
% figure
% plot(y)

new=[];
txt = ['{',y(1)];
for i = 2 : length(y)
    val = dec2hex(round(y(i)*255),2);
    new = [new, val];
    txt = [txt, '0x', val, ','];
end
txt=[txt, '},'];
disp(txt)
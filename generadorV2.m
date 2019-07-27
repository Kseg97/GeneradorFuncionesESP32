len = 1700;
saw = @(x) x/(len-1);
sine = @(x) 0.5*sin((x/(len-1))*2*pi + 3*pi/2)+0.5;
triang = @(x) 1+rectpulse([1,-1], (length(x)/2)).*((x-(length(x)/2))/((length(x)/2)));
pulse = @(x) rectpulse(0:1, len/2);
%% DECLAR
x = 0 : (len-1);
%% SINE
y = sine(x);
% plot(y)
toString(y);

%% TRIANG
y = triang(x);
% plot(y)
y = [y(ceil(len/4)+1 : end),y(1 : ceil(len/4))];
toString(y);

%% SAW
y=saw(x);
y = [y(ceil(len/4)+1 : end),y(1 : ceil(len/4))];
toString(y);

%% RAMP PULSE
y = pulse(x);
factor=0.03333;
sub2=1.7;
%rampita1 =2*factor*saw(x).*flip(y);
rampita1 = (flip(2*sub2*factor*saw(x))-sub2*factor).*flip(y);
rampita2 = -2*factor*flip(saw(x)).*y;
y = y+rampita1+rampita2;
% plot(y)
toString(y);

%% PULSE
y = pulse(x);
% plot(y)
toString(y);
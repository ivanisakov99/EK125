function printrad(x)
[angler]=d2r(x);
fprintf('the angle is %d radians', angler)
end
function [angler]=d2r(angle)
angler=angle*(pi/180);
end
dd=input('enter the decimal degree angle: ');
while 0>dd || 360<dd
    dd=input('enter a valid angle: ');
end
[D M S]=dd2dms(dd)

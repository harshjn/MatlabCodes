%% Matlab Code to generate a circular chess pattern

rDivs=10;
for r = rDivs:-1:1
Num=0;
NumFilled=r/2;

thDivs=10;
for i=1:1:thDivs
    alpha = (i-1)*2*pi/thDivs:2*pi/100:i*2*pi/thDivs;
    
    if Num<NumFilled
    strColor='k';
    else
    strColor='w';
    end
    Num=Num+1;
    
    patch([0 r*cos(alpha) 0], [0 r*sin(alpha) 0], strColor)
    hold on

    r

end
end
%% ( gives positive curvature for our experiment) #############



rDivs=10;
for r = rDivs:-1:1
Num=0;
NumFilled=r/2;

thDivs=100;
skipNum=13-r;
skip=uint8(skipNum*rand(1));
for i=1:1:thDivs
    alpha = (i-1)*2*pi/thDivs:2*pi/100:i*2*pi/thDivs;
    
    
    if skip<skipNum
    strColor='w';
    else
    strColor='k';
    skip=1;
    end
    skip=skip+1
    
    patch([0 0.1*r*cos(alpha) 0], [0 0.1*r*sin(alpha) 0], strColor)
    hold on

    r

end
end
axis equal
axis off
%% (gives negative curvature for our experiment) #############

rDivs=10;
for r = rDivs:-1:1
Num=0;
NumFilled=r/2;

thDivs=100;
skipNum=r+1;
skip=uint8(skipNum*rand(1));
for i=1:1:thDivs
    alpha = (i-1)*2*pi/thDivs:2*pi/100:i*2*pi/thDivs;
    
    
    if skip<skipNum
    strColor='w';
    else
    strColor='k';
    skip=1;
    end
    skip=skip+1
    
    patch([0 0.01*r*cos(alpha) 0], [0 0.01*r*sin(alpha) 0], strColor)
    hold on

    r

end
end
axis equal
axis off

function [Y] =luminance( image, x, y )
% Y(x)=r+2g+b
%0.2126 R + 0.7152 G + 0.0722 B
Y = 0.2126*image(x,y,1)+0.7152*image(x,y,2)+0.0722*image(x,y,3);
end

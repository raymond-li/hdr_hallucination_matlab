function Y =luminance( image, x, y )
% Y(x)=r+2g+b
Y = image(x,y,1)+2*image(x,y,2)+image(x,y,3);

end

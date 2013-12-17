function [Gfit] = gausslobe(image, tol)

image = log(image+1);
[cx,cy,sx,sy,PeakOD] = Gaussian2D(image,tol);

[sizey sizex] = size(image);
[x,y] = meshgrid(1:sizex,1:sizey);
Gfit = abs(PeakOD)*(exp(-0.5*(x-cx).^2./(sx^2)-0.5*(y-cy).^2./(sy^2)));

end

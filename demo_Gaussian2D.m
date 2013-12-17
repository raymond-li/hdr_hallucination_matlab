%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% To fit a 2-D gaussian 
%% m = Image 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

m = im2double(imread('mask.png'));
tol = 1e-6;

[cx,cy,sx,sy,PeakOD] = Gaussian2D(m,tol);

[sizey sizex] = size(m);
[x,y] = meshgrid(1:sizex,1:sizey);
fit = abs(PeakOD)*(exp(-0.5*(x-cx).^2./(sx^2)-0.5*(y-cy).^2./(sy^2)));

figure, imshow(fit);

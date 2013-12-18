%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% To fit a 2-D gaussian 
%% m = Image 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%m = rgb2gray(im2double(imread('wood.jpg')));
m = zeros(500, 500, 'double');
m = m + .2;
m(200:300, 200:300) = 2;
m = log(m+1);
tol = 1e-6;

[cx,cy,sx,sy,PeakOD] = Gaussian2D(m,tol);

[sizey sizex] = size(m);
[x,y] = meshgrid(1:sizex,1:sizey);
fit = abs(PeakOD)*(exp(-0.5*(x-cx).^2./(sx^2)-0.5*(y-cy).^2./(sy^2)));

figure, imshow([m, fit])

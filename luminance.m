function Y_image =luminance( image )
% Y(x)=r+2g+b
[rows, cols, dim]= size(image);
Y_image(:,:,:) = image(:,:,1)+2*image(:,:,2)+image(:,:,3);

end

function [ radimage ] = gamma22( ldr_image )
%GAMMA22 Converts ldr_image into radiance space. Expects ldr_image as
%   double
%   Use a gamma curve with exponent = 2.2 and return image.
    radimage = ldr_image.^2.2;
end

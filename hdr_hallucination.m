% function [ hallucinated ] = hdr_hallucination( input_image, varargin )
%hdr_hallucination Main function to create hallucinated hdr image
%Expects first arg as input image, optional second, third as region masks
%   Steps:
%   1. Initialization (load images as rgb doubles, convert to radiance
%       space with gamma22).
%   2. User input for over/under exposed regions (cutregion) if length(varargin) <= 1.
%   3. Decompose input_image into lowf, highf components (bilat).
%   4. Hallucinate each component (hallucinate).
%   5. Blend hallucinated components and return image.
% varargin{1} = overexposed mask
% varargin{2} = underexposed mask

image=gamma22(im2double(imread('wood.jpg')));
Cue = 0.05;
Coe = 0.85;
[mask,poly] = getMask(image);
%[sourcemask,poly] = getMask(image);
mask = im2double(mask);
[lowfq, highfq] = bilat(image);
%%
%illumination layer 
[layer, W, Y, G] = illumination(mask, image , lowfq, Cue, Coe);
%%
%texture synthesis
textured = texture(mask, highfq);
figure;
imshow(textured);
%blend textured, layer

% end


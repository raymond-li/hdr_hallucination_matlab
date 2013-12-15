function [ hallucinated ] = hdr_hallucination( input_image, varargin )
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

end


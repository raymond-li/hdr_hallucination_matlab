function [ lowfq, highfq  ] = bilat( image )
%BILAT Split image into a lowf and highf component.
%   (Find a paper on how to get lowf) then highf_out =
%   input_image/lowf_out.
[lowfq(:,:,1), param1] = shiftableBF(image(:,:,1), 20, 30, 21, 0.01);
[lowfq(:,:,2), param2] = shiftableBF(image(:,:,2), 20, 30, 21, 0.01);
[lowfq(:,:,3), param3] = shiftableBF(image(:,:,3), 20, 30, 21, 0.01);
highfq = image./lowfq;
end


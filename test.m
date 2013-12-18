%Script that calls hdr_hallucination for a test set of images.

image = im2double(imread('./wood.jpg'));
gimage = gamma22(image);
[gimagebf(:,:,1), param1] = shiftableBF(gimage(:,:,1), 20, 30, 21, 0.01);
[gimagebf(:,:,2), param2] = shiftableBF(gimage(:,:,2), 20, 30, 21, 0.01);
[gimagebf(:,:,3), param3] = shiftableBF(gimage(:,:,3), 20, 30, 21, 0.01);
imshow(gimagebf./gimage);

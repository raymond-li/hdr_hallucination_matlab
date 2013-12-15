%Script that calls hdr_hallucination for a test set of images.
image = im2double(imread('./wood.jpg'));
gimage = gamma22(image);
[gimagebf, param] = shiftableBF(gimage(:,:,3), 20, 30, 21, 0.01);
imshow(gimagebf);

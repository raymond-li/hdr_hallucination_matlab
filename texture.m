function [layer]=texture(mask, image)
%image = highfq
greened = image;
for i=1:size(mask,1)
    for j=1:size(mask,2)
        if mask(i, j) == 1
            greened(i, j, 1) = 0;
            greened(i, j, 2) = 1;
            greened(i, j, 3) = 0;
        end
    end
end
figure; imshow(greened);
%[i1,i2,i3,c,d] = inpaint(image,im2uint8(greened),[0 255 0]);
%layer = i1;
%layer = greened;
end

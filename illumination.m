function [layer] = illumination(mask, image, Cue, Coe)
  
  [rows, cols, dim]= size(image);
  layer=zeros(rows,cols);
  
  %create Gaussian 2D fit
  tol = 1e-6;
  mask = log(mask+1);
  G = gausslobe(mask, tol);
  
  %compute illumination layer
  for x=1:rows
    for y=1:cols
      Y = luminance(image, x, y);
      W = weight(Y, Cue, Coe);
      layer(x,y)=(1-W))*log(Y)+W*G(x,y);
    end
  end

end

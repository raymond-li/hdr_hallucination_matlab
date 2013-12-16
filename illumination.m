function [layer] = illumination(image, Cue, Coe)
  
  [rows, cols, dim]= size(image);
  layer=zeros(rows,cols);
  
  %compute illumination layer
  for x=1:rows
    for y=1:cols
      Y=luminace(image, x, y);
      W = weight(Y, Cue, Coe);
      G = gausslobe(image, x, y);
      layer(x,y)=(1-W))*log(Y)+W*G;
    end
  end

end

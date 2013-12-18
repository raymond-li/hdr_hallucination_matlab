function [layer, W, Y, G] = illumination(mask, image, lowfq, Cue, Coe)
  
  [rows, cols, dim]= size(lowfq);
  layer=zeros(rows,cols);
  W=zeros(rows,cols);
  Y=zeros(rows,cols);
  
 
  %create Gaussian 2D fit
  tol = 1e-6;
  G = gausslobe(mask, tol);
  
  
  
  
  
  %compute illumination layer
  for x=1:rows
    for y=1:cols
      Y(x,y) = luminance(lowfq, x, y);
      W(x,y) = weight(Y(x,y), Cue, Coe);
      layer(x,y)=(1-W(x,y))*log(Y(x,y)+1)+W(x,y)*G(x,y);
    end
  end

end

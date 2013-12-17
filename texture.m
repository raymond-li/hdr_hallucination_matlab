function [layer]=texture(layer, Cue, Coe, image)

[rows, cols, dim]= size(image);

for x=1:rows
  for y=1:cols
    if(layer(x,y)>Cue)
      layer(x,y)=layer(x,y)*Cue;
  end
end

%poisson blending of image & layer

end

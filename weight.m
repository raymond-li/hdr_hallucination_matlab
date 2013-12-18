function [W]=weight(Y, Cue, Coe)
%weight function
if(Y < Cue)
    W = (Cue-Y)/Cue;
elseif (Coe < Y)
    W = (Y-Coe)/(1-Coe);
else
    W = 0;
end
    
end

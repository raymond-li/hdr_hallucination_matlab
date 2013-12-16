function [W]=weight(Y, Cue, Coe)
%weight function
if (Y < Cue)
W = (Cue-Y)/Cue;

if (Coe < Y)
W = (Y-Coe)/(1-Coe)

end

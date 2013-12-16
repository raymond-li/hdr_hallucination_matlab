function w=weight(Y, Cue, Coe)
%weight function
if (Y < Cue)
w = (Cue-Y)/Cue;

if (Coe < Y)
w = (Y-Coe)/(1-Coe)

end

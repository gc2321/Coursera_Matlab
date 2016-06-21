function [seg_nr, pole_nr ] = fence( lng, seg )

seg_nr = ceil(lng/seg);
pole_nr = seg_nr+1;

end


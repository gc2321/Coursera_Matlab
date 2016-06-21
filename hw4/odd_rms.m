function orms = odd_rms( nn )
s = [1:2:(nn*2)-1];
orms = sqrt(mean(s.^2));
end


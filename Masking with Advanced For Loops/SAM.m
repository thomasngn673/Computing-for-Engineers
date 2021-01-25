function [angleAB] = SAM(A,B)
angleAB=acos(dot(A,B)/norm(A)*norm(B));
end


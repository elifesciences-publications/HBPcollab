

% Subroutine for the BB model of spatial cogniton (2014-2018) 
% Code developed by Andrej Bicanski (andrej.bicanski@gmail.com)
% 
% published in eLife
%
% REF
%
% Some code has been ported from a the predecessor of this model, the BBB model.
% (Patrick Byrne, Sue Becker and Neil Burgess, code available on request)


function [polarDist] = BB_subr_radscaling(maxR)

RFinc = 0.1*(1:maxR);
polarDist = zeros(maxR,1);
for rr = 1:maxR
    if rr == 1
        polarDist(rr) = rr;
    else
        polarDist(rr) = polarDist(rr-1)+RFinc(rr);
    end
end
polarDist = polarDist/max(polarDist)*(maxR-0.5);
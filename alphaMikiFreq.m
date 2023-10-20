function alphaThFreq = alphaMikiFreq(freqVector,theta,resist,thick,c0,rho0)
% Name: alphaMikiFreq
%
% Description:
%   Calculates the incidence-dependent absorption "alphaThFreq" for a
%   frequency range "freqVector", for the angles informed in "theta", from
%   parameters such as the flow resistivity "resist", the speed of sound
%   "c0", the thickness "thick", and specific mass of the air "rho0".
%
% Author: Augusto Cesar Fantinelli de Carvalho
% Version: 1.0
% Date: 20/10/2023

    alphaThFreq = zeros(length(theta),length(freqVector));
    alpha = zeros(length(theta));
    for i = 1:1:length(freqVector)
        for m = 1:1:length(theta)
            [alpha(m), ~, ~, ~] = Z_miki(freqVector(i), rho0, c0, thick, resist, theta(m));
        end
        alphaThFreq(i,:) = alpha;
    end
    
end
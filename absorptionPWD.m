function abs_pa = absorptionPWD(x,k,res)
% Name: absorptionPWD
%
% Description:
%   Calculates the absorption coefficient from an angular spectrum "x" in a
%   plane-wave basis "k" and a resolution "res".
%
% Author: Augusto Cesar Fantinelli de Carvalho
% Version: 1.0
% Date: 20/10/2023

%   Calculates the incidence dependent absorption
    [abs_th, elv] = dirAbsorptionPWD(x,k,res);
%   Calculates the diffuse field absorption using the Paris' formula
    abs_pa = parisFormula(abs_th,elv,res);
end
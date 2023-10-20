function abs_bands = absorptionPWDbands(x_mat,k,bands,res,plotFlag)
% Name: absorptionPWDbands
%
% Description:
%   Calculates the absorption coefficient from an third-octave band
%   averaged angular spectrum "x_mat" in a plane-wave basis "k" and a
%   resolution "res", and plots the directional absorption following the
%   parameter "plotFlag".
%
% Author: Augusto Cesar Fantinelli de Carvalho
% Version: 1.0
% Date: 20/10/2023

    abs_bands = zeros(1,size(bands,2));
    for i = 1:1:size(bands,2)
        abs_bands(i) = absorptionPWD(x_mat(:,i),k,res);
        if(plotFlag == true)
            plotDirAbsorptionPWD(x_mat(:,i),k,res,bands(i));
        end
    end
end
function psth = quickPSTH(raster, smoothSamples)

    wingSize = 3; % Std
    
    gSamp = [-wingSize*smoothSamples:wingSize*smoothSamples];
    gaussian = 1/(smoothSamples * sqrt(2*pi)).*exp(-gSamp.^2/(2*smoothSamples.^2));
    
    psth = conv(raster,gaussian,'same');
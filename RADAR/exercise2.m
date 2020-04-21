% TODO : Find the Bsweep of chirp for 1 m resolution
c = 3*10^8;
range_res = 1 ; %range resolution 1m
Bsweep =  c/(2*range_res); % calculating sweep frequency


% TODO : Calculate the chirp time based on the Radar's Max Range
max_range = 300; %radar maximum range
Tchirp = (5.5*2*max_range)/c; %chirp time
% TODO : define the frequency shifts 
beats=[0 1.1e6 13e6 24e6]; %all beat frequencies are in mhz should be converted to hz
calculated_range = (c*beats*Tchirp)/(2*Bsweep);
% Display the calculated range
disp(calculated_range);
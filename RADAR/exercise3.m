% Doppler Velocity Calculation
c = 3*10^8;         %speed of light
frequency = 77e9;   %frequency in Hz

% TODO : Calculate the wavelength
lambda = c/frequency;

% TODO : Define the doppler shifts in Hz using the information from above 
freq_shift = [3000 -4500 11000 -3000];

% TODO : Calculate the velocity of the targets  fd = 2*vr/lambda

vr = (freq_shift*lambda)/2; 

% TODO: Display results
disp(vr)
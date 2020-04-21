% 2-D Transform
% The 2-D Fourier transform is useful for processing 2-D signals and other 2-D data such as images.
% Create and plot 2-D data with repeated blocks.

%P = peaks(20);
%X = repmat(P,[5 10]);
%imagesc(X)
Fs = 1000;            % Sampling frequency                    
T = 1/Fs;             % Sampling period       
L = 1500;             % Length of signal
t = (0:L-1)*T;        % Time vector
S = (0.7*cos(2*pi*77*t))+(2*cos(2*pi*43*t));
X = S + 2*randn(size(t));
M=30;
N=50;
signal = reshape(X,[M,N]);%Convert the signal in MxN matrix, where M is the size of Range FFT samples and N is the size of Doppler FFT samples
% TODO : Compute the 2-D Fourier transform of the data.  
% Shift the zero-frequency component to the center of the output, and 
% plot the resulting 100-by-200 matrix, which is the same size as X.
signal_fft = fft2(signal,M,N);%Run the 2D FFT across both the dimensions.
signal_fft = fftshift(signal_fft);%Shift zero-frequency terms to the center of the array
signal_fft = abs(signal_fft);%ABSOLUTEVALUE
imagesc(signal_fft);
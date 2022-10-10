%Write a function called echo_gen that adds an echo effect to an audio recording. 
%An echo is the original signal delayed and attenuated. Therefore, you will first need to compute the echo
% and then add it to the original signal with the correct offset. 
%The function is to be called like this:
%output = echo_gen(input, fs, delay, amp);
%where input is a column vector with values between -1 and 1 representing a time series of digitized sound data. 
%The input argument fs is the sampling rate. 
%The sampling rate specifies how many samples we have in the data each second. 
%For example, an audio CD uses 44,100 samples per second. 
%The input argument delay represent the delay of the echo in seconds. 
%That is, the echo should start after delay seconds have passed from the start of the audio signal. 
%Finally, amp specifies the amplification of the echo which normally should be a value less than 1, since the echo is typically not as loud as the original signal. 
%The output of the function is a column vector containing the original sound with the echo superimposed. 
%The output vector will be longer than the input vector if the delay is not zero (round to the nearest number of points needed to get the delay, as opposed to floor or ceil). 
%A sound recording has values between -1 and 1, so if the echo causes some values to be outside of this range, 
%you will need to normalize the entire vector, so that all values adhere to this requirement.

function output = echo_gen(input, fs, delay, amp)
 % Find the time between points using Fs
 dt = 1/fs;
 % Calculate the number of points for the given delay
 N = round(delay/dt);
 % Pad the original signal with zeros to make room for the echo
 s1 = [input; zeros(N, 1)];
 % Create an echo signal that starts with 0's
 s2 = [zeros(N, 1); input.*amp];
 % Add the echo to the original signal
 output = s1 + s2;
 % the abs of all values must be < 1. Rescale if necessary
    if max(abs(output)) > 1
        output = output./max(abs(output));
    end
end

%Code to call your function

% Load splat which adds y and Fs to the workspace
load splat
% Call echo_gen to create the new audio data
output = echo_gen(y, Fs, 0.25, 0.6);
% The time between points is 1/Fs;
dt = 1/Fs;
% Plot the original sound
plot(0:dt:dt*(length(y)-1), y)
% Plot the new data to see visualize the echo
figure
plot(0:dt:dt*(length(output)-1), output)

% sound (output, Fs) % Uncomment in MATLAB to listen to the new sound data
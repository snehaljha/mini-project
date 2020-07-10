% EC 1306 mini project By
% Snehal Jha             1714115
% Roshan Thakur          1714116
% Varchasva Bharadwaj    1714117
% Saransh Kumar          1714118
% Prashant Jha           1714119
%
% Topic:-
% Design a high pass FIR filter in MATLAB to meet the following specifications:
% (i) pass band edge frequency=5 kHz (ii) sampling frequency= 20 kHz (iii) order of the filter=20 using
% (a) rectangular window and (b) Hanning window (iii) Bartlett window technique. Also compare the
% performance of different window techniques.
%
%
% Code
clc;
passBandfrequency = 5000;
samplingFrequency = 20000;
order = 20;
% FIRHPF = dsp.HighpassFilter('SampleRate',Fs,...
%                              'FilterType',filtertype,...
%                              'PassbandFrequency',Fpass,...
%                              'StopbandFrequency',Fstop,...
%                              'PassbandRipple',Rp,...
%                              'StopbandAttenuation',Astop);
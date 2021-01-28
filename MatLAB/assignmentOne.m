clc;
clear all;

info = audiodevinfo;

length = 2;
Fs = 44100 ; 
nBits = 16 ; 
nChannels = 2 ; 
inputID = 3;
recorderObj = audiorecorder(Fs,nBits,nChannels,inputID);

disp('Start speaking.');
recordblocking(recorderObj, length);
disp('End of Recording.');

outputID = 1;
player = audioplayer(recorderObj, outputID);
play(player);

x = getaudiodata(recorderObj);
sig = fft(x);

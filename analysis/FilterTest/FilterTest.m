clear all
clc

Fs=10
Ts=1/Fs


%% SAMPLES
statSamps = csvread('staticSamples.csv');
dynSamps = csvread('dynamicSamples.csv');
nSampsBoth=min(length(statSamps), length(dynSamps));
statSamps=statSamps(1:nSampsBoth);
dynSamps=dynSamps(1:nSampsBoth);

minSamp = min(min(statSamps),min(dynSamps))
maxSamp = max(max(statSamps),max(dynSamps))


% Dynamic samples
statY=fft(statSamps);
statM=abs(statY);
statP=angle(statY);

dynY=fft(dynSamps);
dynM=abs(dynY);
dynP=angle(dynY);

statF = (0:length(statY)-1)*Ts/length(statY);
dynF = (0:length(dynY)-1)*Ts/length(dynY);

% subplot(3,1,3)
% hold on
% plot(statF,rad2deg(statP),'b')
% plot(dynF,rad2deg(dynP),'r')
% title('Phase')


%% DIFF FILTER
statSampsD1 = diff(statSamps);
dynSampsD1 = diff(dynSamps);


fltOrder=54;
diffedFreqs=0.25;
passBand=Fs*diffedFreqs;
stopBFreqs=0.1;
stopBand=passBand+Fs*stopBFreqs;

d0 = fdesign.differentiator('N,Fp,Fst',fltOrder,passBand,stopBand,Fs);
Hd0 = design(d0,'equiripple','SystemObject',true);
statFlt0=filter(Hd0.Numerator,1,statSamps);
dynFlt0=filter(Hd0.Numerator,1,dynSamps);

% hfvt = fvtool(Hd0,Hd1,'MagnitudeDisplay','zero-phase', 'FrequencyRange','[0, Fs/2)');
% legend(hfvt,'No stopband weighting','Stopband weighting');

d0 = fdesign.differentiator('N,Fp,Fst',fltOrder,passBand,stopBand,Fs);
Hd1 = design(d0,'equiripple','SystemObject',true);
statFlt0=filter(Hd0.Numerator,1,statSamps);
dynFlt0=filter(Hd0.Numerator,1,dynSamps);

%% PLOTS
figure(1)
subplot(3,1,1)
hold on
plot(statSamps,'b')
plot(dynSamps,'r')
ylim([minSamp maxSamp])
title('Sampled')

subplot(3,1,2)
hold on
plot(statFlt0(fltOrder:end),'b')
plot(statFlt1(fltOrder:end),'b')
plot(dynFlt0(fltOrder:end),'r')
plot(dynFlt1(fltOrder:end),'r')
title('Filtered')

subplot(3,1,3)
hold on
% plot(statF,statM,'b')
plot(statM(2:end),'b')
% plot(dynF,dynM,'r')
plot(dynM(2:end),'r')
title('FFT Mag')

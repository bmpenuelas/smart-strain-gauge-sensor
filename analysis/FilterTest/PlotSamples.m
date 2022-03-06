
clear all
clc

Fs=10
Ts=1/Fs


%% SAMPLES
tchNSamps = csvread('NotTouching.csv');
tchYSamps = csvread('Touching.csv');
sampledLabel = {'Not Touching', 'Touching'};
sampled = {tchNSamps, tchYSamps};
% \todo adjust lengths and starting points


% % Test synthetic samples
% t = linspace(0, 60*30, length(tchNSamps));
% testFreqs = [0 3 6 9 10 12];
% testSamps = linspace(0, 0, length(t));
% for i=1:length(testFreqs)
%   testSamps = testSamps+ sin(2*pi*testFreqs(i)*t) / 2;
% end
% 
% % sampled = {tchNSamps, testSamps};


%% FFTs
% Not Touching samples
tchNY=fft(tchNSamps);
tchNM=abs(tchNY);
tchNP=angle(tchNY);
tchNF = (0:length(tchNY)-1)*Ts/length(tchNY);

% Touching samples
tchYY=fft(tchYSamps);
tchYM=abs(tchYY);
tchYP=angle(tchYY);
tchYF = (0:length(tchYY)-1)*Ts/length(tchYY);

% %Test samples
% testY=fft(testSamps);
% testM=abs(testY);
% testP=angle(testY);
% testF = (0:length(testY)-1)*Ts/length(testY);

ffts = {tchNM(2:end), tchYM(2:end)};


% %% FILTERS
% 
% % Simple differential
% tchND1 = diff(tchNSamps);
% testD1 = diff(testSamps);
% 
% 
% % Differentiator 
% fltOrder=50;
% diffedFreqs=0.25;
% passBand=Fs*diffedFreqs;
% stopBFreqs=0.1;
% stopBand=passBand+Fs*stopBFreqs;
% 
% d0 = fdesign.differentiator('N,Fp,Fst',fltOrder,passBand,stopBand,Fs);
% Hd0 = design(d0,'equiripple','SystemObject',true);
% % hfvt = fvtool(Hd0,Hd1,'MagnitudeDisplay','zero-phase', 'FrequencyRange','[0, Fs/2)');
% % legend(hfvt,'No stopband weighting','Stopband weighting');
% 
% tchNHd0=filter(Hd0.Numerator, 1, tchNSamps);
% testHd0=filter(Hd0.Numerator, 1, testSamps);
% 
% % HPF
% Fstop = 4.5;
% Fpass = 4.7;
% Astop = 20;
% Apass = 0.5;
% 
% dHPF0 = designfilt('highpassfir','StopbandFrequency',Fstop, ...
%   'PassbandFrequency',Fpass,'StopbandAttenuation',Astop, ...
%   'PassbandRipple',Apass,'SampleRate',Fs,'DesignMethod','equiripple');
% HPF0Order = length(dHPF0.Coefficients);
% % fvtool(dHPF0)
% tchNHPF0=filter(dHPF0, tchNSamps);
% testHPF0=filter(dHPF0, testSamps);
% 
% Astop = 50;
% dHPF1 = designfilt('highpassfir','StopbandFrequency',Fstop, ...
%   'PassbandFrequency',Fpass,'StopbandAttenuation',Astop, ...
%   'PassbandRipple',Apass,'SampleRate',Fs,'DesignMethod','equiripple');
% HPF1Order = length(dHPF1.Coefficients);
% tchNHPF1=filter(dHPF1, tchNSamps);
% testHPF1=filter(dHPF1, testSamps);
% 
% 
% %! nFilters must match the number of cols in "filtered" (cells)
% filterLabels = {   'Differentiator'     , 'D1'         , 'HPF 0'                , 'HPF 1'                  };
% filtered     = {{  tchNHd0(fltOrder:end), tchND1(2:end), tchNHPF0(HPF1Order:end), tchNHPF1(HPF1Order:end)  },
%                 {  testHd0(fltOrder:end), testD1(2:end), testHPF0(HPF1Order:end), testHPF1(HPF1Order:end)  }};
% 

figure()
%% PLOTS
for i=1:length(sampled)
  % figure(i)
  subplot(2,1,1)
  hold on
  plot(sampled{i})
  title('Sampled')

  % subplot(3,1,2)
  % hold on
  %   for j=1:length(filterLabels)
  %     plot(filtered{i}{j})
  %     pause
  %   end  
  % legend('show')
  % legend(filterLabels)
  % title('Filtered')
  
  subplot(2,1,2)
  hold on
  plot(ffts{i})
  title('FFT Mag')
end

 
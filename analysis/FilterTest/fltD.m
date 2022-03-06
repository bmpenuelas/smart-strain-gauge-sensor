
close all
clear all
% PlotSamples

%% SAMPLES
tchNSamps = csvread('NotTouching.csv');
tchYSamps = csvread('Touching.csv');
sampledLabel = {'Not Touching', 'Touching'};
sampled = {tchNSamps, tchYSamps};


processNsamples = 6500;
for i=1:length(sampled)
  sampled{i} = sampled{i}(1:processNsamples);
end

%% FILTERS 

bitsClamp = 32;
clampValue = 2^bitsClamp;

% First derivative
for i=1:length(sampled)
  sampledD1{i}                              = diff(sampled{i});
  sampledD1{i}(sampledD1{i}>0)              = 0;
  sampledD1{i}(sampledD1{i}>clampValue)     = clampValue;
end

% Second derivative
for i=1:length(sampled)
  sampledD2{i}                              = abs(diff(sampledD1{i}));
  sampledD2{i}(sampledD2{i}>clampValue)     = clampValue;
end

% Powers
for i=1:length(sampled)
  sampledD2p2{i}                            = sampledD2{i}.^2;
  sampledD2p2{i}(sampledD2p2{i}>clampValue) = clampValue;
  sampledD1p2{i}                            = sampledD1{i}.^2;
  sampledD1p2{i}(sampledD1p2{i}>clampValue) = clampValue;
  % Put it upside down (as only descending samples are being used from D1)
  sampledD1p2{i}                            = -sampledD1p2{i};
end



% Average
meanData = 1;
sampledMeanD2p2 = mean(sampledD2p2{meanData}(sampledD2p2{meanData}~=0));


% Normalize graphs
for i=1:length(sampled)
  zoomSamples = 4;
  normSampled{i}     = sampled{i}/(max(abs(sampled{i}))/zoomSamples) -zoomSamples;
  normSampledD1{i}   = sampledD1{i}/max(abs(sampledD1{i}));
  normSampledD1p2{i} = sampledD1p2{i}/max(abs(sampledD1p2{i}));
  normSampledD2{i}   = sampledD2{i}/max(abs(sampledD2{i}));
  normSampledD2p2{i} = sampledD2p2{i}/max(abs(sampledD2p2{i}));
end
normSampledMeanD2p2 = sampledMeanD2p2/max(abs(sampledD2p2{meanData}));


%% MARK HITS

thresholdD1 = 300;
transitD1 = 1;
for i=1:length(sampled)
  % Adjust position to match original samples length
  sampledD1{i}                    = [sampledD1{i} zeros(1, transitD1)];
  hitsD1{i}                       = sampledD1{i}>thresholdD1;
  hitsD1{i}                       = hitsD1{i}.*normSampled{i};
  hitsD1{i}(hitsD1{i}==0)         = NaN;
end

thresholdD2 = 1e4;
transitD2 = 2;
for i=1:length(sampled)
  % Adjust position to match original samples length
  sampledD2{i}                    = [sampledD2{i} zeros(1, transitD2)];
  hitsD2{i}                       = sampledD2{i}>thresholdD2;
  hitsD2{i}                       = hitsD2{i}.*normSampled{i};
  hitsD2{i}(hitsD2{i}==0)         = NaN;
end


thresholdD2p2 = 1.5*sampledMeanD2p2;
transitD2p2 = 2;
for i=1:length(sampled)
  % Adjust position to match original samples length
  sampledD2p2{i}                    = [zeros(1, transitD2p2) sampledD2p2{i}];
  hitsD2p2{i}                       = sampledD2p2{i}>thresholdD2p2;
  hitsD2p2{i}                       = hitsD2p2{i}.*normSampled{i};
  hitsD2p2{i}(hitsD2p2{i}==0)       = NaN;
end



%% PLOTS
filterLegends = {'Sampled', 'D1', 'D1p2', 'D2', 'D2p2', 'Threshold', 'Hits D2p2'};
for i=1:length(sampled)
  figure(i)
  axis([0 processNsamples -1 1])
  hold on
  title(sampledLabel{i})
  plot( normSampled{i} )
  
  plot( normSampledD1{i} )
  plot( normSampledD1p2{i} )
  plot( normSampledD2{i} )
  plot( normSampledD2p2{i} )

  plot( linspace(normSampledMeanD2p2, normSampledMeanD2p2, processNsamples) )
  plot( hitsD2p2{i}, 'or' )
  legend(filterLegends)
end


% figure()
% hold on
% for i=length(sampled):-1:1
%   plot(sampledD2{i})
%   plot(sampled{i}-mean(sampled{i}))
% end
% 
% 
% figure()
% hold on
% for i=length(sampled):-1:1
% 
%   sampledScaled2D2{i} = sampled{i}*( clampValue/max(sampled{i}) );
%   % plot(sampledScaled2D2{i}-mean(sampledScaled2D2{i}))
%   plot(sampledScaled2D2{i})
%   plot(sampledD2p2{i})
% end

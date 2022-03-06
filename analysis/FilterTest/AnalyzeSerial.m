
close all
clear all
clc

%% Import from code
% DEFINES

%!\todo Set gain to maximize input span.
CALIBRATION_FACTOR = -1000.0 

THRESHOLD_D1 =   1.0
%! Detect a fast change
THRESHOLD_D1P2 = 1.5  
%! Detect a long change
THRESHOLD_D1P2_ACC = 25.0  

THRESHOLD_D2 =   1.0
THRESHOLD_D2P2 = 25.0  
THRESHOLD_D2P2_ACC = 25.5  

%! Min value in D1 opposite sign that indicates dir change.
%! Avoid noise resetting the accum.
THRESHOLD_DIR_CHNG = 0.1  



%% IMPORT SERAL DATA
% tchNSampsOld = csvread('./sampled/D1D2_8.csv');
tchNSamps    = csvread('./sampled/working_0.csv');

tchNSamps = tchNSamps(1:650,:);


nSamps = size(tchNSamps);
nCols  = nSamps(2);
nSamps = nSamps(1);
xRange = [0 nSamps];

meanCols = zeros(1,nCols);

minVal = min(min(tchNSamps));
maxVal = max(max(tchNSamps));
yRange = [minVal maxVal];


measIdx           = 1;
meas = SerialMeas(tchNSamps, measIdx)

d1Idx             = 2;
d1                = tchNSamps(:,d1Idx);
d1Norm            = d1-min(d1);
d1Norm            = d1Norm/max(d1Norm);

d1P2Idx           = 3;
d1P2              = tchNSamps(:,d1P2Idx);
d1P2Norm          = d1P2-min(d1P2);
d1P2Norm          = d1P2Norm/max(d1P2Norm);

accumulatingIdx   = 4;
accumulating      = tchNSamps(:,accumulatingIdx);
accumulatingNorm  = accumulating-min(accumulating);
accumulatingNorm  = accumulatingNorm/max(accumulatingNorm);

probeAssertIdx    = 5;
probeAssert       = tchNSamps(:,probeAssertIdx);
probeAssertNorm   = probeAssert-min(probeAssert);
probeAssertNorm   = probeAssertNorm/max(probeAssertNorm);

d1P2accIdx        = 6;
d1P2acc           = tchNSamps(:,d1P2accIdx);
d1P2accNorm       = d1P2acc-min(d1P2acc);
d1P2accNorm       = d1P2accNorm/max(d1P2accNorm);



%% PLOT ALL
figurePlotAll = figure();
nSubPlots = 6;

% plot(tchNSamps(:,i)/(max(tchNSamps(:,i))-min(tchNSamps(:,i)))  )

subplot(nSubPlots, 1, measIdx)
plot(meas.vals)


subplot(nSubPlots, 1, d1Idx)
plot(d1)


subplot(nSubPlots, 1, d1P2Idx)
plot(d1P2)


subplot(nSubPlots, 1, accumulatingIdx)
plot(accumulating)


subplot(nSubPlots, 1, probeAssertIdx)
plot(probeAssert, 'r')

subplot(nSubPlots, 1, d1P2accIdx)
plot(d1P2acc)





%% PLOT INDIVIDUALLY
figureMeas = figure();
plot(meas.normV)
title('measNorm')
hold on
plot(probeAssertNorm, 'r')

figureD1 = figure();
plot(d1Norm)
title('d1Norm')
hold on
plot(probeAssertNorm, 'r')

figureD1P2 = figure();
plot(d1P2Norm)
title('d1P2Norm')
hold on
THRESHOLD_D1P2norm = THRESHOLD_D1P2*(d1P2Norm(1)/d1P2(1))
THRESHOLD_D1P2normVector = linspace(THRESHOLD_D1P2norm,THRESHOLD_D1P2norm,length(d1P2Norm));
plot(THRESHOLD_D1P2normVector)
plot(probeAssertNorm, 'r')

figureAccumulating = figure();
plot(accumulatingNorm)
title('accumulatingNorm')
hold on
plot(meas.normV, 'r')
plot(d1Norm, 'g')

figureD1P2acc = figure();
plot(d1P2accNorm)
title('d1P2accNorm')
hold on
THRESHOLD_D1P2_ACCnorm = THRESHOLD_D1P2_ACC*(d1P2accNorm(1)/d1P2acc(1))
THRESHOLD_D1P2_ACCnormVector = linspace(THRESHOLD_D1P2_ACCnorm,THRESHOLD_D1P2_ACCnorm,length(d1P2accNorm));
plot(THRESHOLD_D1P2_ACCnormVector)
plot(probeAssertNorm, 'r')


%% CURRENTLY INVOLVED
figureCurrentlyInvolved = figure();
plot(meas.normV, 'b')
title('CURRENTLY INVOLVED')
hold on
plot(d1P2Norm, 'b')
plot(THRESHOLD_D1P2normVector)
plot(accumulatingNorm*.5, 'b')
plot(d1P2accNorm,'g')
plot(probeAssertNorm, 'r')
legend('meas.normV', 'd1P2Norm', 'THRESHOLD_D1P2normVector', 'accumulatingNorm', 'd1P2accNorm', 'probeAssertNorm')



%% ALTERNATIVE CALCULATIONS 


% %   Accumulator alternative: count cycles
% accumSamps = tchNSamps(:,6);
% for i=1:nSamps  
%   if accumSamps(i) > 500
%     countSteps(i+1) = countSteps(i)+1;
%   else
%     countSteps(i+1) = 0;
%   end
% end
%   
% 
% figure(figurePlotAll.Number)
% hold on
% % plot(tchNSamps(:,i)/max(tchNSamps(:,i)))
% subplot(nSubPlots, 1, 6)
% plot(countSteps * max(accumSamps)/max(countSteps))


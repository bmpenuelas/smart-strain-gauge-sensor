
close all
clear all
clc

%% IMPORT SERAL DATA
sampled    = csvread('./sampled/FFFFunder0_0.csv');
sampled = sampled';

sampledU32 = sampled(1,:);
sampledU16 = sampled(2,:);

plotBoth = figure();
hold on
subplot(2, 1, 1)
plot(sampledU32)
subplot(2, 1, 2)
plot(sampledU16)
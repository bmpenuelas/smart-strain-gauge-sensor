% @file   GenGCode_NotTouching.ino
% @author Borja Penuelas
% @date   16 Jul 2017
% @brief  This file creates a gcode to record the response of the 
%         gauge to homings that do not touch the bed

clear all
clc

gcodeFile = fopen('NotTouching.gcode','w');

X_MAX_POS = 155;
Y_MAX_POS = 385;

Z_RAISE = 7;
MOVEMENT_STEP = 150;
% MOVEMENT_STEP = 75;
movementSteps=MOVEMENT_STEP:MOVEMENT_STEP:min(X_MAX_POS, Y_MAX_POS)



% Init @Home
fprintf(gcodeFile, ';NotTouching - Generated with ./GenGCode_NotTouching.m\n\n');

fprintf(gcodeFile, ';HOME\n');
fprintf(gcodeFile, 'G28 X Y Z\n');
fprintf(gcodeFile, ';\n');

% Sweep the bed in a snake-like movement homing and raising
for iteration = 1 : length(movementSteps)
  fprintf(gcodeFile, '\n\n;***SWEEP AT STEP');
  fprintf(gcodeFile, num2str(movementSteps(iteration)));
  fprintf(gcodeFile, 'mm***\n\n');

  for yPos=0:2*movementSteps(iteration):Y_MAX_POS
    fprintf(gcodeFile, ';*ROW AT Y');
    fprintf(gcodeFile, num2str(yPos));
    fprintf(gcodeFile, 'mm*\n');
    moveHead('Y', yPos, Z_RAISE, gcodeFile);


    for xPosFwd=0:movementSteps(iteration):X_MAX_POS
      moveHead('X', xPosFwd, Z_RAISE, gcodeFile);
    end

    fprintf(gcodeFile, ';*ROW AT Y');
    fprintf(gcodeFile, num2str(yPos+movementSteps(iteration)));
    fprintf(gcodeFile, 'mm*\n');
    moveHead('Y', yPos+movementSteps(iteration), Z_RAISE, gcodeFile);

    for xPosBkwd=xPosFwd:-1*movementSteps(iteration):0
      moveHead('X', xPosBkwd, Z_RAISE, gcodeFile);
    end
  end
end

fclose(gcodeFile);


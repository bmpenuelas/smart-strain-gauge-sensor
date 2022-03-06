function retval = move(axisXY, xyPos, zRaise, gcodeFile)
    % Raise Z
    fprintf(gcodeFile, 'G1 F8000 Z');
    fprintf(gcodeFile, num2str(zRaise));
    fprintf(gcodeFile, '\n');
    % Move Y
    fprintf(gcodeFile, 'G1 F8000 ');
    fprintf(gcodeFile, axisXY);
    fprintf(gcodeFile, num2str(xyPos));
    fprintf(gcodeFile, '\n');
    fprintf(gcodeFile, 'G28 Z\n');

    retval = 1;
end
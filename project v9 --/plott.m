close all;
TL = cur_left.Time;
DL = cur_left.Data;
TR = cur_right.Time;
DR = cur_right.Data;

ofset = 492;
TD = TL(ofset+1:end);
DD = 500*ones(length(TR)-ofset,1);

% TD = dem_left.Time;
% DD = dem_left.Data(:,2);

DL(DL>500) = 500;
DR(DR>500) = 500;

plot(TL, DL, 'b',TR, DR, 'r', TD, DD, 'k--'), 
xlim([0 6.5]), ylim([0 600])
set(gca, 'XTick', [0 1.5 4 6.5])
set(findall(gca, 'Type', 'Line'),'LineWidth',1.5);
legend('left motor', 'right motor', 'demand', 'Location', 'best'), grid on
%T(707) T(711)
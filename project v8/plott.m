close all;
TL = cur_left.Time;
DL = cur_left.Data;
TR = cur_right.Time;
DR = cur_right.Data;

DL(DL>500) = 500;
DR(DR>500) = 500;

plot(TL, DL, TR, DR), xlim([0 7.5]), ylim([0 550])

%T(707) T(711)
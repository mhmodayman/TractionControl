%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% surface      |   B | C   | D    | E
% Dry Tarmac   |   10| 1.9 | 1    | 0.97
% Wet Tarmac   |   12| 2.3 | 0.82 | 1
% Snow         |   5 | 2   | 0.3  | 1
% Ice          |   4 | 2   | 0.1  | 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% s -- slip ratio
% D -- represents peak coefficient of friction

ch = 4;

if ch == 1
    B = 10; C = 1.9; D = 1; E = 0.97;
elseif ch == 2
    B = 12; C = 2.3; D = 0.82; E = 1;
elseif ch == 3
    B = 5; C = 2; D = 0.3; E = 1;
elseif ch ==4
    B = 4; C = 2; D = 0.1; E = 1;
end

s = 0:0.001:1;
mu = D*sin(C * atan(  B*s-E*(B*s-atan( B*s )))  );

plot(s, mu)
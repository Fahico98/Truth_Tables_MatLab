%% 1.

% C = [~(~S conditional Q) conditional (P conditional R)] and Q

clear all;
clc;

propMatrix = dec2bin(15:-1:0) - '0';
truthTable = zeros(16, 1);

for i = 1 : length(propMatrix)
    P = propMatrix(i, 1);
    Q = propMatrix(i, 2);
    R = propMatrix(i, 3);
    S = propMatrix(i, 4);
    truthTable(i, 1) = (conditional(~conditional(~S, Q), conditional(P, R))) && Q;
end

% Resultados.

disp("      P      Q      R      S      C" + newline);

for i = 1 : length(propMatrix)
    P = propMatrix(i, 1);
    Q = propMatrix(i, 2);
    R = propMatrix(i, 3);
    S = propMatrix(i, 4);
    C = truthTable(i, 1);
    disp("      " + P + "      " + Q + "      " + R + "      " + S + "      " + C);
end

disp(newline + "---> " + propType(truthTable));

%% 2.

% C = (~P and ~R) or (P and ~Q) or (~P and Q)

clear all;
clc;

propMatrix = dec2bin(7:-1:0) - '0';
truthTable = zeros(8, 1);

for i = 1 : length(propMatrix)
    P = propMatrix(i, 1);
    Q = propMatrix(i, 2);
    R = propMatrix(i, 3);
    truthTable(i, 1) = (~P && ~R) || (P && ~Q) || (~P && Q);
end

disp("      P      Q      R      C" + newline);

for i = 1 : length(propMatrix)
    P = propMatrix(i, 1);
    Q = propMatrix(i, 2);
    R = propMatrix(i, 3);
    C = truthTable(i, 1);
    disp("      " + P + "      " + Q + "      " + R + "      " + C);
end

disp(newline + "---> " + propType(truthTable));

%% 3.

% C = [(~P or ~Q) conditional (~P and R)] or (~Q and P and R)

clear all;
clc;

propMatrix = dec2bin(7:-1:0) - '0';
truthTable = zeros(8, 1);

for i = 1 : length(propMatrix)
    P = propMatrix(i, 1);
    Q = propMatrix(i, 2);
    R = propMatrix(i, 3);
    truthTable(i, 1) = conditional((~P || ~Q), (~P && R)) || (~Q && P && R);
end

disp("      P      Q      R      C" + newline);

for i = 1 : length(propMatrix)
    P = propMatrix(i, 1);
    Q = propMatrix(i, 2);
    R = propMatrix(i, 3);
    C = truthTable(i, 1);
    disp("      " + P + "      " + Q + "      " + R + "      " + C);
end

disp(newline + "---> " + propType(truthTable));




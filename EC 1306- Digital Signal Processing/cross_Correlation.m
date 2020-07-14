% EC 1306 mini project By
% Snehal Jha             1714115
% Roshan Thakur          1714116
% Varchasva Bharadwaj    1714117
% Saransh Kumar          1714118
% Prashant Jha           1714119
%
% Topic:-
% Determine the cross correlation between two sequences x= {1,2,1,2} and h = {2,2,1, -1} using
% direct computation method. Also write down the MATLAB program (without using cross
% correlation command) to determine the cross correlation of the above sequences and then verify
% MATLAB result with direct computation method result. 
%
% Code
clc;
X1 = [1,2,1,2];
X2 = [2,2,1,-1];
Xs1 = X1;
Xs2 = X2;
k = length(X1)+length(X2)-1;
cross = zeros(1,k);
X1 = [ X1, zeros(1,k-length(X1))];
X2 = [ X2, zeros(1,k-length(X2))];

for i=1:1:k
    y = 0;
    for j=1:1:i
        y = y + (X2(i-j+1)*X1(j));
    end
    cross(i) = y;
end
disp("Cross Correlation will be ");
disp(cross);
figure("Cross Corelation", "Cross Corelation")
subplot(3, 1, 1)
stem(Xs1);
xlim([-1 length(Xs1)+1]);
ylim([min(Xs1)-1 max(Xs1)+1])
title("Series 1");
subplot(3, 1, 2)
stem(Xs2);
xlim([-1 length(Xs2)+1]);
ylim([min(Xs2)-1 max(Xs2)+1])
title("Series");
subplot(3, 1, 3)
stem(cross);
xlim([-1 k+1]);
ylim([min(cross)-1 max(cross)+1])

title("Cross Correlation")

%End of Code

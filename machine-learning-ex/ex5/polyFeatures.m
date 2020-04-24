function [X_poly] = polyFeatures(X, p)
%POLYFEATURES Maps X (1D vector) into the p-th power
%   [X_poly] = POLYFEATURES(X, p) takes a data matrix X (size m x 1) and
%   maps each example into its polynomial features where
%   X_poly(i, :) = [X(i) X(i).^2 X(i).^3 ...  X(i).^p];
%


% You need to return the following variables correctly.
X_poly = zeros(numel(X), p);

% ====================== YOUR CODE HERE ======================
% Instructions: Given a vector X, return a matrix X_poly where the p-th
%               column of X contains the values of X to the p-th power.
%
%


% X_poly is mxp
% Ex:
%
% c1| c2 | c3 | c4 |
% ------------------
% 1 | 1  | 1  | 1  |
% 2 | 4  | 8  | 16 |
% 3 | 9  | 27 | 81 |
% 4 |16  | 64 |256 |

for i=1:p
    X_poly(:, i) = X_poly(:, 1) .^ i;
end



% =========================================================================

end

function [ values, index ] = botk( A, k )
%BOTK Summary of this function goes here
%   Detailed explanation goes here
dimA = size(size(A), 2);
% fprintf('dimension: %d\n', dimA);

if 2 == dimA
    [dim1, dim2] = size(A);
    if 1 == dim2
        A = A';
        [dim1, dim2] = size(A);
    end
    if 1 == dim1
        tmpA = zeros(2, dim2);
        for i = 1 : dim2
            tmpA(1, i) = i;
        end
        tmpA(2, :) = A;
    end
end

if 3 == dimA
end

[tmpValues, tmpIndex] = sort(tmpA, 2, 'ascend');
values = tmpValues(2, 1:k);
index = tmpIndex(2, 1:k);

end
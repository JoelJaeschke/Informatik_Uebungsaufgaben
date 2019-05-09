function [ sortedVector ] = BubbleSort(unsortedVector)
dimension = length(unsortedVector);
for i=dimension:-1:2
    for j=1:1:i-1
            if unsortedVector(j) < unsortedVector(j+1)
            else
                tmp = unsortedVector(j);
                unsortedVector(j) = unsortedVector(j+1);
                unsortedVector(j+1) = tmp;
            end
    end
end
sortedVector = unsortedVector;
end
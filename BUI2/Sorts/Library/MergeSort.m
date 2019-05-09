function [ sortedVector ] = MergeSort(unsortedVector)
lenVec = length(unsortedVector);
if lenVec <= 1
    sortedVector = unsortedVector;
else
    middle = round(lenVec / 2);
    left = MergeSort(unsortedVector(1:middle));
    right = MergeSort(unsortedVector(middle+1:lenVec));
    
    sortedVector = Merge(left,right);
end
end
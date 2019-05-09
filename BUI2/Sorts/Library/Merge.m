function [ merged ] = Merge(left, right)
lenLeft = length(left);
lenRight = length(right);
merged = zeros(1,lenLeft + lenRight);

lidx = 1;
ridx = 1;
midx = 1;

while lidx <= lenLeft && ridx <= lenRight
    if left(lidx) <= right(ridx)
        merged(midx) = left(lidx);
        lidx = lidx + 1;
    else
        merged(midx) = right(ridx);
        ridx = ridx + 1;
    end
    midx = midx + 1;
end

for i=lidx:lenLeft
    merged(midx) = left(i);
    midx = midx + 1;
end
for i=ridx:lenRight
    merged(midx) = right(i);
    midx = midx + 1;
end
end
addpath(genpath("../Library"));

lengths = linspace(1,10000,25);
times_bubble = zeros(1,25);
times_merge = zeros(1,25);

for i=1:25
    test_vector_sized = rand(1,round(lengths(i)));
    tic;
    sorted = BubbleSort(test_vector_sized);
    times_bubble(i) = toc;
end

for i=1:25
    test_vector_sized = rand(1,round(lengths(i)));
    tic;
    sorted = MergeSort(test_vector_sized);
    times_merge(i) = toc;
end

hold on;
plot(lengths,times_bubble);
plot(lengths, times_merge);
hold off;
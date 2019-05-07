function res = recursiveFibonacci(n)
if n == 0
    res = 0;
    return;
end
if n == 1
    res = 1;
    return;
end
res = recursiveFibonacci(n-1) + recursiveFibonacci(n-2);
end


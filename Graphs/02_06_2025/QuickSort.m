function A = QuickSort(A, left, right)
    if left < right
        [A, pvt] = Partition(A, left, right);
        A = QuickSort(A, left, pvt-1);
        A = QuickSort(A, pvt+1, right);
    end
end

function [A, pvt] = Partition(A, left, right)
    pivot = A(right);
    i = left - 1;
    for j = left:right-1
        if A(j) <= pivot
            i = i + 1;
            [A(i), A(j)] = deal(A(j), A(i));
        end
    end
    [A(i+1), A(right)] = deal(A(right), A(i+1));
    pvt = i + 1;
end

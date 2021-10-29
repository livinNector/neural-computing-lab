% Defining operations as functions
complement = @(A) 1 - A
union = @(A,B) max(A,B)
intersection = @(A,B) min(A,B)
algebraic_prod = @(A,B) A.*B
algebraic_sum = @(A,B) A+B - algebraic_prod(A,B)
algebraic_diff = @(A,B) A + complement(B)
bounded_prod = @(A,B) union(A+B-1,0)
bounded_sum = @(A,B) intersection(A+B,1)
bounded_diff = @(A,B) union(A-B,0)

% Declaring two fuzzy sets for testing
A = [1 .5]
B = [.4 .2]

% Displaying the results
disp('The algebraic sum')
disp(algebraic_sum(A,B))
disp('The algebraic difference')
disp(algebraic_diff(A,B))
disp('The algebraic product')
disp(algebraic_prod(A,B))
disp('The bounded sum')
disp(bounded_sum(A,B))
disp('The bounded difference')
disp (bounded_diff(A,B))
disp('The bounded product')
disp(bounded_prod(A,B))
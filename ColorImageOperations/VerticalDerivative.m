function [ output ] = VerticalDerivative( input )
   
   output = input;
   
   [rows, columns] = size(input);

    for r=1:rows - 3;
        for c=1:columns - 3;
            output(r,c) = (-1)  * input(r, c)     + (0) * input(r, c + 1)      + (1)  * input(r, c + 2) + ...
                          (-2)  * input(r + 1, c) + (0)  * input(r + 1, c + 1) + (2) * input(r + 1, c + 2) + ...
                          (-1)  * input(r + 2, c) + (0) * input(r + 2, c + 1)  + (1)  * input(r + 2, c + 2);
        end
    end
end


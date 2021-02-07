function [ result ] = MyHist( input )

    [rows, columns] = size(input);
    
    result = zeros(size(input));
    pixelNumber = rows * columns;

    frequency   = zeros(256, 1);

    for i=1:rows;
        for j=1:columns;
            val = input(i,j);
            frequency(val + 1)  = frequency(val + 1) + 1;
        end
    end

    intensityLevel = 255;

    % Cumulative value.
    for i=2:(intensityLevel + 1);
        frequency(i)   = frequency(i)   + frequency(i - 1);
    end

    % Get S function.
    % Cumulative value / total pixel * max gray level and round it.
    for i=1:(intensityLevel + 1);
        frequency(i)   = round(frequency(i) / pixelNumber * 255);
    end
    
    
    for i = 1:1:rows
        for j = 1:1:columns
            result(i, j) = frequency(input(i, j)   + 1);
        end
    end
end


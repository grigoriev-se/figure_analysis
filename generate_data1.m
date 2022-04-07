% This function will generate a hypercube
% with a gradient in the spatial-width domain
% based on the input dimensions and then
% output the hypercube as a 4D-uint8.

function [file2] = generate_data1(dim1,dim_spec,dim3)

file2 = zeros(dim1,dim_spec,1,dim3,'uint8');

for x = 1:dim1
    for y = 1:dim3
        file2(x,:,1,y) = (1:dim_spec)';
    end
end
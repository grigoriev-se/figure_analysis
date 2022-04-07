% This function will generate a hypercube
% with a gradient in the spectral domain
% based on the input dimensions and then
% output the hypercube as a 4D-uint8.

function [file] = generate_data2(x,spec,y)

file = zeros(x,spec,1,y,'uint8');
grad = 1:x;

for lambda = 1:spec
    for xx = 1:x
        file(xx,lambda,:) = round(grad(xx).*255./x);
    end
end
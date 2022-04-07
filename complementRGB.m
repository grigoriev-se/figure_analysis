% This function will take an RGB image as input
% and will complement the colors in it

function [complement] = complementRGB(img)

% determine number of rows, column
% and dimension in input image
[x, y, z]=size(img);

% convert class of RGB image to 'uint8'
img=im2uint8(img);

% create a image array of 'uint8' class having
% same  number of rows and columns and having
% same dimension, with all elements as zero.
complement = zeros(x, y, z, 'uint8');

% loop to subtract each pixel value from 255
for i=1:x
    for j=1:y
        for k=1:z
            % copy the difference to complement image array
            complement(i, j, k)=255-img(i, j, k);
        end
    end
end
end
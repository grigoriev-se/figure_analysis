%Combine three monochrome images with wavelengths
% R, G, B, into rgb image

function combine_rgb(file,R,G,B) 

k = size(file);

img = zeros(k(1), k(4), 3, 'uint8');
img(:,:,1) = file(:,R,:,:);
img(:,:,2) = file(:,G,:,:);
img(:,:,3) = file(:,B,:,:);

figure
imshow(img)
title('Combined Monochromatic Images into RGB')

% Display a smaller picture of the photo
% img_s = img(1300:2600,1300:2600,:);
% figure 
% imshow(img_s)

% Display Complemented RGB Image
%comps=complementRGB(img); 
%figure
%imshow(comps);
%title('Complemented RGB image')
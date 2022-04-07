% Plots spatial x spatial picture at given
% wavelengths, R, G, B.

function view_x_y_figs_func(file,R,G,B)

k = size(file);

% spectral_elem = k(2);
% spatial_elem = k(4);

BB = zeros(k(1),k(4),1,k(2),'uint8');
for mm = 1:k(2)
    for jj = 1:k(4)
        BB(:,jj,1,mm) = file(:,mm,1,jj);
    end
end

for spec = 1:round(k(2)/10):k(2)
    figure, imshow(BB(:,:,1,spec),[0,255]);
    title('Monochrome Image')
end

a = BB(:,:,1,R)+BB(:,:,1,G)+BB(:,:,1,B);
figure
imshow(a,[0,255])
title('Combined Monochromatic Images of 3 wavelengths')
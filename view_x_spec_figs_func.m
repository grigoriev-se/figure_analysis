% Plots spectral x spatial picture at given
% wavelengths, R, G, B.

function view_x_spec_figs_func(file)

k = size(file);
max_plot = k(4);

for y = 1:round(max_plot/3):max_plot
    figure, imshow(file(:,:,:,y),[0,255])
    title('spectral x spatial image')
end

% a = sum(file,4);
% figure
% imshow(a,[0,255])
% title('spectral x spatial image')
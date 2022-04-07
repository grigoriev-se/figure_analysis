% Extracts pictures from the Hypercube
close all

% Define parameters and generate test data
x = 500; % Spatial width
y = 400; % Spatial length of image
spec = 300; % Spectral width
file = generate_data3(x, spec, y);

% Set values for R, G, B
R = 1;
G = round(0.5*spec);
B = spec;

% view_x_spec_figs_func(file)
view_x_y_figs_func(file,R,G,B)
combine_rgb(file,R,G,B)
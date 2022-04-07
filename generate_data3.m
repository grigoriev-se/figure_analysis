% This function will generate a hypercube
% based on the input dimensions with 
% modifications in the spatial-width domain
% and then output the hypercube as a 4D-uint8.

function [file] = generate_data3(x,spec,y)

file = zeros(x,spec,1,y,'uint8');

% x = width of image
% y = length of image
angle1 = 4;
angle2 = 2;

for lambda = 1:spec
    for xx = 1:x

        % Triangle 1
        if lambda<0.1*spec && xx>=0.2*x && xx <0.5*x
            for aa = 1:y
                if aa*angle1>x
                    break
                end
                file(1:aa*angle1,lambda,aa) = 100;
            end
        end
        
        % Triangle 2
        if lambda>(0.9*spec) && xx>=0.3*x && xx <0.7*x
            for bb = y:-1:1
                if bb*angle2>x
                   continue 
                end
                file(bb*angle2:end,lambda,bb) = 150;
            end
        end

        % Rectangle with gradient
        if lambda>(0.4*spec) && lambda<=(0.7*spec) && xx>=0.2*x && xx <0.5*x
                file(xx,lambda,:) = xx;
        end

    end
end
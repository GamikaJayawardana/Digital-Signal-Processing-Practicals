% --- (i) ---

try
    img_orig = imread('cameraman.tif');
catch
    disp('Error: Could not find "cameraman.tif".');
    disp('Please ensure the Image Processing Toolbox is installed and the file is accessible.');
    return;
end

img_double = double(img_orig);

% --- (ii) ---
h_avg = (1/9) * ones(3, 3); 

% Sharpening filter
h_sharp = [ 0 -1  0;
           -1  5 -1;
            0 -1  0];

% --- (iii) Perform 2D Convolution ---
img_blurred = conv2(img_double, h_avg, 'same');

% Apply sharpening filter
img_sharpened = conv2(img_double, h_sharp, 'same');


% --- (iv) ---
img_blurred = uint8(img_blurred);
img_sharpened = uint8(img_sharpened);

figure;
% Original Image
subplot(1, 3, 1);
imshow(img_orig);
title('Original Image');

% Blurred Image
subplot(1, 3, 2);
imshow(img_blurred);
title('Filtered (Averaging)');

% Sharpened Image
subplot(1, 3, 3);
imshow(img_sharpened);
title('Filtered (Sharpening)');
I = imread('rgb.jpg'); % read image
% I = imread('C:\Users\Jessy\Desktop\54321.jpg');

Ir = I(:,:,1); % red channel
Ig = I(:,:,2); % blue channel
Ib = I(:,:,3); % green channel

J = cat(3, Ir, Ig, Ib); % recombine channels to get rgb image
K = cat(3, zeros(size(I,1),size(I,2)), Ig, Ib); % remove red channel

subplot(231);
imshow(I);
title('Original image');
subplot(232);
imshow(Ir);
title('Red channel');
subplot(233);
imshow(Ig);
title('Green channel');
subplot(234);
imshow(Ib);
title('Blue channel');
subplot(235);
imshow(J);
title({'Back to';'original image'});
subplot(236);
imshow(K);
title({'Modified image';'remove red channel'});


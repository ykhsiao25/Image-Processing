clear();
img1 = imread('blurry_moon.tif');img2 = imread('skeleton_orig.bmp'); 
img2 = rgb2gray(img2);
% 圖片前處理，將index圖片轉換成intensity圖片

figure('numbertitle','off','name','Frequency domain'); 
img1l = Lapla(img1);img1u = Unsharp(img1);img1h = h_boost(img1);
img2l = Lapla(img2);img2u = Unsharp(img2);img2h = h_boost(img2);
subplot(2,4,1);imshow(img1);title('Origin');
subplot(2,4,2);imshow(img1l);title('Laplacian');
subplot(2,4,3);imshow(img1u);title('Unsharp');
subplot(2,4,4);imshow(img1h);title('High Boost');
subplot(2,4,5);imshow(img2);title('Origin');
subplot(2,4,6);imshow(img2l);title('Laplacian');
subplot(2,4,7);imshow(img2u);title('Unsharp');
subplot(2,4,8);imshow(img2h);title('High Boost');
saveas(gcf, 'Result(Freq).png', 'png');

figure('numbertitle','off','name','Spatial domain'); 
img1l = Lapla2(img1);img2l = Lapla2(img2);
img1u = Unsharp2(img1);
img2u = Unsharp2(img2);
img1h = h_boost2(img1);img2h = h_boost2(img2);
subplot(2,4,1);imshow(img1);title('Origin');subplot(2,4,5);imshow(img2);title('Origin');
subplot(2,4,2);imshow(img1l);title('Laplacian');subplot(2,4,6);imshow(img2l);title('Laplacian');
subplot(2,4,3);imshow(img1u);title('Unsharp');subplot(2,4,7);imshow(img2u);title('Unsharp');
subplot(2,4,4);imshow(img1h);title('High Boost');subplot(2,4,8);imshow(img2h);title('High Boost');
saveas(gcf, 'Result(Spatial).png', 'png');


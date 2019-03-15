clear();
img1 = imread('aloe.jpg');img2 = imread('church.jpg');
img3 = imread('house.jpg');img4 = imread('img69.jpg');img5 = imread('kitchen.jpg');

% RGB
figure('numbertitle','off','name','RGB Enhancement'); 
img1_rgb = rgb_plaw(img1,1.2,0.3,0.001);%imshow(img1_rgb);saveas(gcf, 'aloe2.png', 'png');
img2_rgb = rgb_plaw(img2,0.9,0.45,0.001);%imshow(img2_rgb);saveas(gcf, 'church2.png', 'png');
img3_rgb = rgb_plaw(img3,1.1,3,0.001); %imshow(img3_rgb);saveas(gcf, 'GG.png', 'png');
img4_1 = img4(:, :, 1);img4_2 = img4(:  , :, 2);img4_3 = img4(:, :, 3); 
img4_1= median(img4_1); img4_2 = median(img4_2 ); img4_3 = median(img4_3);img4_rgb = cat(3,img4_1,img4_2,img4_3);  
img4_rgb = rgb_plaw(img4_rgb,1.1,0.85,0.001);
img5_rgb = rgb_plaw(img5,1.3,2.5,0);
subplot(3,5,1);imshow(img1_rgb);title('RGB');
subplot(3,5,2);imshow(img2_rgb);title('RGB');
subplot(3,5,3);imshow(img3_rgb);title('RGB');
subplot(3,5,4);imshow(img4_rgb);title('RGB');
subplot(3,5,5);imshow(img5_rgb);title('RGB');
subplot(1,5,1);imshow(img1_rgb);title('RGB');
subplot(1,5,2);imshow(img2_rgb);title('RGB');
subplot(1,5,3);imshow(img3_rgb);title('RGB');
subplot(1,5,4);imshow(img4_rgb);title('RGB');
subplot(1,5,5);imshow(img5_rgb);title('RGB');
set(gcf,'Units','centimeters','position',[0 0 80 80]);
set(gcf,'Position',[0 0 1000 2000]);
saveas(gcf, 'Result(RGB).png', 'png');

%HSI
figure('numbertitle','off','name','HSI Enhancement'); 
img1_hsi = rgb2hsi(img1);img2_hsi = rgb2hsi(img2);img3_hsi = rgb2hsi(img3);
img4_hsi = rgb2hsi(img4);img5_hsi = rgb2hsi(img5);
img1_hsi = hsi_plaw(img1_hsi,1.2,0.45,0.001);%imshow(img1_hsi);saveas(gcf, 'aloe2.png', 'png');
img2_hsi = hsi_plaw(img2_hsi,1.2,0.45,0.001);%img2u = Unsharp(img2);img2h = h_boost(img2);
img3_hsi = hsi_plaw(img3_hsi,0.75,0.9,0.001); %imshow(img3_hsi);saveas(gcf, 'house2.png', 'png');
img4_1 = img4_hsi(:, :, 1);img4_2 = img4_hsi(:, :, 2);img4_3 = img4_hsi(:, :, 3); 
img4_3 = alpha_trimmed(img4_3);img4_hsi = cat(3,img4_1,img4_2,img4_3);
img4_hsi = hsi_plaw(img4_hsi,1.1,1,0.001);%imshow(img4_hsi);saveas(gcf,'img691.png', 'png');
img5_hsi = hsi_plaw(img5_hsi,0.7,0.65,0);%imshow(img5_hsi);saveas(gcf,'KKkitchen.png', 'png');

subplot(1,5,1);imshow(img1_hsi);title('HSI');
subplot(1,5,2);imshow(img2_hsi);title('HSI');
subplot(1,5,3);imshow(img3_hsi);title('HSI');
subplot(1,5,4);imshow(img4_hsi);title('HSI');
subplot(1,5,5);imshow(img5_hsi);title('HSI');
set(gcf,'Units','centimeters','position',[0 0 80 80]);
saveas(gcf, 'Result(HSI).png', 'png');


%L*a*b
figure('numbertitle','off','name','L*a*b Enhancement'); 
img1_lab = rgb2lab(img1);img2_lab = rgb2lab(img2);img3_lab = rgb2lab(img3);
img4_lab = rgb2lab(img4);img5_lab = rgb2lab(img5);
img1_lab = lab_plaw(img1_lab,1.65,1.4,0.001);%imshow(img1_lab);saveas(gcf, 'aloe2.png', 'png');
img2_lab = lab_plaw(img2_lab,1.55,1.45,0.001);%imshow(img2_lab);saveas(gcf, 'church2.png', 'png');
img3_lab = lab_plaw(img3_lab,0.7,1.045,0.001);%imshow(img3_lab);saveas(gcf, 'house2.png', 'png');
img4_1 = img4_lab(:, :, 1);img4_2 = img4_lab(:, :, 2);img4_3 = img4_lab(:, :, 3); 
img4_1 = alpha_trimmed(img4_1);img4_lab = cat(3,img4_1,img4_2,img4_3);
img4_lab = lab_plaw(img4_lab,1.5,1.04,0.001);%imshow(img4_lab);saveas(gcf,'img691.png', 'png');
img5_lab = lab_plaw(img5_lab,1.3,0.9,-0.001);%imshow(img5_lab);saveas(gcf,'KKkitchen.png', 'png');

subplot(1,5,1);imshow(img1_lab);title('Lab');
subplot(1,5,2);imshow(img2_lab);title('Lab');
subplot(1,5,3);imshow(img3_lab);title('Lab');
subplot(1,5,4);imshow(img4_lab);title('Lab');
subplot(1,5,5);imshow(img5_lab);title('Lab');
set(gcf,'Units','centimeters','position',[0 0 80 80]);
saveas(gcf, 'Result(Lab).png', 'png');


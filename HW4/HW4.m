clear();clc;
[img1,map1] = imread('image1.jpg');[img2,map2] = imread('image2.jpg');[img3,map3] = imread('image3.jpg');
figure('numbertitle','off','name','Sobel and LoG Operator');
img1s = sob(img1);
img1l = LoG(img1,5,0.3);%imshow(img1l);saveas(gcf,'image1-2.png', 'png');
img2s = sob(img2);
img2l = LoG(img2,5,0.3);%imshow(img2l);saveas(gcf,'image2-2.png', 'png');
img3s = sob(img3);
img3l = LoG(img3,7,0.4);%imshow(img3l);saveas(gcf,'image3-2.png', 'png');

subplot(3,3,1);imshow(img1);title('Origin');
subplot(3,3,2);imshow(img1s);title('Sobel');
subplot(3,3,3);imshow(img1l);title('LoG');
subplot(3,3,4);imshow(img2);title('Origin');
subplot(3,3,5);imshow(img2s);title('Sobel');
subplot(3,3,6);imshow(img2l);title('LoG');
subplot(3,3,7);imshow(img3);title('Origin');
subplot(3,3,8);imshow(img3s);title('Sobel');
subplot(3,3,9);imshow(img3l);title('LoG');
saveas(gcf, 'Result.png', 'png');

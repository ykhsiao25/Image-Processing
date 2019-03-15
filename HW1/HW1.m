clear();
[img1,map1] = imread('Cameraman.bmp');[img2,map2] = imread('Lena.bmp');[img3,map3] = imread('Peppers.bmp'); 
img1 = ind2gray(img1,map1); img2 = ind2gray(img2,map2);img3 = ind2gray(img3,map3);
%圖片前處理，將index圖片轉換成intensity圖片
figure('numbertitle','off','name','Histequal'); %histequal
subplot(3,4,1);imshow(img1);subplot(3,4,2);imhist(img1);
subplot(3,4,5);imshow(img2);subplot(3,4,6);imhist(img2);
subplot(3,4,9);imshow(img3);subplot(3,4,10);imhist(img3);
img1h = histequal(img1);img2h = histequal(img2);img3h = histequal(img3);
subplot(3,4,3);imshow(img1h);subplot(3,4,4);imhist(img1h);
subplot(3,4,7);imshow(img2h);subplot(3,4,8);imhist(img2h);
subplot(3,4,11);imshow(img3h);subplot(3,4,12);imhist(img3h);
imwrite(img1,'Cameraman2(G).bmp');
saveas(gcf, 'Result(H).png', 'png');

figure('numbertitle','off','name','Powerlaw'); %Powerlaw
subplot(3,4,1);imshow(img1);subplot(3,4,2);imhist(img1);
subplot(3,4,5);imshow(img2);subplot(3,4,6);imhist(img2);
subplot(3,4,9);imshow(img3);subplot(3,4,10);imhist(img3);
img1p = plaw(img1,1.2,0.8,0);img2p = plaw(img2,1.2,0.5,0.001);img3p = plaw(img3,0.8,2,-0.001);
%plaw參數分別為image,c(r+k)^n的c,k及n
subplot(3,4,3);imshow(img1p);subplot(3,4,4);imhist(img1p);
subplot(3,4,7);imshow(img2p);subplot(3,4,8);imhist(img2p);
subplot(3,4,11);imshow(img3p);subplot(3,4,12);imhist(img3p);
saveas(gcf, 'Result(P).png', 'png');
figure('numbertitle','off','name','Laplacian'); %Powerlaw
subplot(3,4,1);imshow(img1);subplot(3,4,2);imhist(img1);
subplot(3,4,5);imshow(img2);subplot(3,4,6);imhist(img2);
subplot(3,4,9);imshow(img3);subplot(3,4,10);imhist(img3);
img1l = Lapla(img1);img2l = Lapla(img2);img3l = Lapla(img3);
subplot(3,4,3);imshow(img1l);subplot(3,4,4);imhist(img1l);
subplot(3,4,7);imshow(img2l);subplot(3,4,8);imhist(img2l);
subplot(3,4,11);imshow(img3l);subplot(3,4,12);imhist(img3l);
saveas(gcf, 'Result(L).png', 'png');

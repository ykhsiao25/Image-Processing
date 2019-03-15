function img_rgb = rgb_histequal(img)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    %figure(1);
    rChannel = img(:, :, 1);
    r_en = plaw(rChannel,1.2,2,0.001);
    %imshow(r_en);;saveas(gcf, 'R1.png', 'png');
    gChannel = img(:, :, 2);
    %figure(2);
    g_en = histequal(gChannel);
    %imshow(g_en);;saveas(gcf, 'G1.png', 'png');
    %figure(3);
    bChannel = img(:, :, 3);
    b_en = plaw(rChannel,0.7,0.9,0.001);
    %imshow(b_en);;saveas(gcf, 'B1.png', 'png');
    img_rgb = cat(3,r_en,g_en,b_en);  
end


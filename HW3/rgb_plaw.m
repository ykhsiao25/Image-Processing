function img_rgb = hsv_plaw(img,c,gamma,k)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    c1=c;g=gamma;d=k; %�`�N �o��@�w�n!!! ���i�H������ѼƷ�@��ƦA�ǥX�h!!!
    rChannel = img(:, :, 1);
    r_en = plaw(rChannel,c1,g,d);
    gChannel = img(:, :, 2);
    g_en = plaw(gChannel,c1,g,d);
    bChannel = img(:, :, 3);
    b_en = plaw(bChannel,c1,g,d);
    img_rgb = cat(3,r_en, g_en,b_en);
end


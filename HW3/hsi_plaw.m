function img_rgb = hsi_plaw(img,c,gamma,k)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    c1=c;g=gamma;d=k; %c22=c2;g22=gamma2;d22=k2;
    hChannel = img(:, :, 1);%h channel不可作對比
    sChannel = img(:, :, 2);
    s_en = plaw(sChannel,1,1.2,0.001);
%     s_en = s_histequal(sChannel);
    s_en =sChannel;
    
    iChannel = img(:, :, 3);
    i_en = plaw(iChannel,c1,g,d);
    img_rgb = cat(3,hChannel, s_en,i_en);
    img_rgb = hsi2rgb(img_rgb);
end


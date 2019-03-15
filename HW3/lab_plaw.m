function img_rgb = lab_plaw(img,c,gamma,k)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    c1=c;g=gamma;d=k; %c22=c2;g22=gamma2;d22=k2;
    lChannel = img(:, :, 1);
    l_en = plaw(lChannel,c1,g,d);
    aChannel = img(:, :, 2);
    a_en = aChannel ;
%     a_en = plaw(aChannel,1.2,0.7,0);
    
    bChannel = img(:, :, 3);
    b_en = bChannel ;
%     b_en = plaw(bChannel,1.2,0.7,0);
    img_rgb = cat(3,l_en, a_en ,b_en);
    img_rgb = lab2rgb(img_rgb);
end


function img_rgb = rgb_plaw(img)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    
    rChannel = img(:, :, 1);
    gChannel = img(:, :, 2);
    bChannel = img(:, :, 3); 

    r_en = Lapla(rChannel);
    g_en = Lapla(gChannel);  
    b_en = Lapla(bChannel);
    img_rgb = cat(3,r_en, g_en,b_en); 
end




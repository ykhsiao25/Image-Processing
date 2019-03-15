function imgp = plaw(img,c,gamma,k)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    imgp = img;imgp = im2double(imgp);
    imgp = c * (imgp + k).^gamma; %powerlaw
%     imgp = uint8(imgp * 255);
end


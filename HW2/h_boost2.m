function img1 = h_boost(img,imgl)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here.
    img1 = img;
    h = ones(3,3)/9;
    lowpass = uint8(filter2(h,img1,'same'));
    result = img1 - lowpass;
    img1 = 1.5 * img1 + result;   
end

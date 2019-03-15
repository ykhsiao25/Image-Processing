function imgl = Lapla2(img)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
imgl = img;[row,col] = size(imgl);
k = ones(3,3)/9;
imgl = filter2(k,imgl,'same');
h=[-1 -1 -1;-1 8 -1;-1 -1 -1];

result = uint8(filter2(h,imgl,'same'));
imgl = uint8(imgl) + result;
%imgl = uint8(imsubtract(imgl,result));

end


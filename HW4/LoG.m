function imgl = LoG(img,ksize,sigma)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
imgl = img; f = fspecial('log',[ksize,ksize],sigma); 
imgl = imfilter(imgl,f,'conv','replicate');
end


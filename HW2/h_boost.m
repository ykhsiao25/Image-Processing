function img1 = h_boost(img)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here.
    function imgl = low(img)
        imgl = img;imgl = double(imgl);row_k = 3;col_k = 3; %kernel size = 3 * 3
        [row,col] = size(imgl);
        h = zeros(row+row_k-1,col+col_k-1); mat = zeros(row+row_k-1,col+col_k-1);  %padding
        h(1,1)=1/9; h(2,1)=1/9; h(1,2)=1/9;h(2,2)=1/9;
        h(1,col+col_k-1)=1/9;h(2,col+col_k-1)=1/9;  
        h(row+row_k-1,1)=1/9; h(row+row_k-1,2)=1/9;h(row+row_k-1,col+col_k-1)=1/9;
        %³]©wkernel 
        mat(1:row,1:col) = imgl;
        mat = fft2(double(mat), row+row_k-1, col+col_k-1);
        h = fft2(double(h), row+row_k-1, col+col_k-1);
        result_f = mat .* h;
        result = ifft2(result_f);result = real(result);result = result(1:row,1:col);
        imgl = imgl - result;imgl = uint8(imgl);
    end
    img1 = img;
    imgl = low(img1);
    img1 = 1.5 * img1;
    img1 = img1 + abs(imgl);   
end
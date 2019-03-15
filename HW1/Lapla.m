function imgl = Lapla(img)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
imgl = img;imgl = double(imgl);row_k = 3;col_k = 3; %kernel size = 3 * 3
[row,col] = size(imgl);
h = zeros(row+row_k-1,col+col_k-1); mat = zeros(row+row_k-1,col+col_k-1);  %padding
h(1,1)=-4; h(2,1)=1; h(1,2)=1; h(row+row_k-1,1)=1; h(1,col+col_k-1)=1; %³]©wkernel 
mat(1:row,1:col) = imgl;
mat = fft2(double(mat), row+row_k-1, col+col_k-1);
h = fft2(double(h), row+row_k-1, col+col_k-1);
result_f = mat .* h;
% for i = 2:row_m-1
%      for j = 2:col_m-1
%          mat_c = mat(i-1:i+1,j-1:j+1) .* filter;
%          mat(i,j) = mat(i,j) + abs(sum(mat_c(:)));
%      end
% end
result = ifft2(result_f);result = real(result);result = result(1:row,1:col);
imgl = imgl - result;imgl = uint8(imgl);
end


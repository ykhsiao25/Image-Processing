function imgl = Lapla(img)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
imgl = img;row_k = 3;col_k = 3; %kernel size = 3 * 3
[row,col] = size(imgl);
imgl = double(imgl);
k = ones(3,3)/9
imgl = filter2(k,imgl,'same');
% noisy = imnoise(imgl, 'salt & pepper',0.1);
% [m,n] = size(noisy);
% imgl = zeros(m,n);
% imgl = uint8(imgl);
% for i = 1:m
%     for j = 1:n  %intesity of pixel in the noisy image is given as noisy(i,j)
%         % here we define max and minimum values x and y coordinates of any
%         % pixel can take
%         xmin = max(1,i-1); % minimum x coordinate has to be greater than or equal to 1
%         xmax = min(m,i+1);
%         ymin = max(1,j-1);
%         ymax = min(n,j+1);
%         % the neighbourhood matrix will then be
%         temp = noisy(xmin:xmax, ymin:ymax);
%         %now the new intensity of pixel at (i,j) will be median of this
%         %matrix
%         imgl(i,j) = median(temp(:));
%     end
% end
% imgl = double(imgl);
h = zeros(row+row_k-1,col+col_k-1);
%h = zeros(row_k,col_k);
mat = zeros(row+row_k-1,col+col_k-1);  %padding
h(1,1)=8; h(2,1)=-1; h(1,2)=-1;h(2,2)=-1; 
%h(2,2)=4; h(2,1)=-1; h(1,2)=-1;h(2,1)=-1;h(2,3)=-1;
h(row+row_k-1,1)=-1; h(1,col+col_k-1)=-1; %³]©wkernel 
h(row+row_k-1,2)=-1;h(row+row_k-1,col+col_k-1)=-1;h(2,col+col_k-1)=-1;
mat(1:row,1:col) = imgl;
mat = fft2(double(mat), row+row_k-1, col+col_k-1);
h = fft2(double(h), row+row_k-1, col+col_k-1);
result_f = mat .* h;
result = ifft2(result_f);result = real(result);result = result(1:row,1:col);
imgl = imgl + abs(result);imgl = uint8(imgl);
% imgl = img-imgl
end

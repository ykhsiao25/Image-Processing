function imgs = sob(img)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
    imgs = img;
    [row,col] = size(imgs); %取得行列數
    temp = zeros(row+2,col+2);%Gy = zeros(row,col);
    temp(2:row+1,2:col+1) = imgs;
    for i = 2:row+1 %i=5
         for j = 2 : col+1
           gx = (temp(i+1,j-1)+2*temp(i+1,j)+temp(i+1,j+1))-(temp(i-1,j-1)+2*temp(i-1,j)+temp(i-1,j+1));
           gy = (temp(i-1,j+1)+2*temp(i,j+1)+temp(i+1,j+1))-(temp(i-1,j-1)+2*temp(i,j-1)+temp(i+1,j-1));
           g = abs(gx)+abs(gy);
           imgs(i-1,j-1) = g;
         end    
    end  
end


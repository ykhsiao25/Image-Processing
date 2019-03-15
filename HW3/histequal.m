function imgh  = histequal(img)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
    imgh = img;
    h = zeros(256,1);
    [row,col] = size(imgh); %取得行列數
%     imgh = imgh(:,:);
    %[row,col,GG] = size(imgh)
    for i = 1:row
         for j = 1: col
           h(imgh(i,j)+1) = h(imgh(i,j)+1) +1 
         end    
    end   % h是灰階對應的次數陣列(每個灰階有幾次)
    c_imgh =imgh ;        %複製一個陣列，以防下面修改之後再被拿去判斷
    flag = zeros(row,col);  %注意這裡是原圖片大小
    for z  = 1:256     %算出CDF
      freq =  sum(h(1:z));
      gray = round ( freq * (256 - 1)  / (row * col)  );
      index = find ( (z-1) == c_imgh );%回傳有此灰階值的index
      for k = 1:length(index)
         if (flag(index(k)) == 0)
             imgh(index(k)) = gray;%將回傳到的index改成計算後的灰階值
             flag(index(k)) = 1;
         end
      end
    end
    %imgh = reshape(imgh,row,col,1);
end


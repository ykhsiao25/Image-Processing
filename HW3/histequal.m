function imgh  = histequal(img)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
    imgh = img;
    h = zeros(256,1);
    [row,col] = size(imgh); %���o��C��
%     imgh = imgh(:,:);
    %[row,col,GG] = size(imgh)
    for i = 1:row
         for j = 1: col
           h(imgh(i,j)+1) = h(imgh(i,j)+1) +1 
         end    
    end   % h�O�Ƕ����������ư}�C(�C�ӦǶ����X��)
    c_imgh =imgh ;        %�ƻs�@�Ӱ}�C�A�H���U���ק蠟��A�Q���h�P�_
    flag = zeros(row,col);  %�`�N�o�̬O��Ϥ��j�p
    for z  = 1:256     %��XCDF
      freq =  sum(h(1:z));
      gray = round ( freq * (256 - 1)  / (row * col)  );
      index = find ( (z-1) == c_imgh );%�^�Ǧ����Ƕ��Ȫ�index
      for k = 1:length(index)
         if (flag(index(k)) == 0)
             imgh(index(k)) = gray;%�N�^�Ǩ쪺index�令�p��᪺�Ƕ���
             flag(index(k)) = 1;
         end
      end
    end
    %imgh = reshape(imgh,row,col,1);
end


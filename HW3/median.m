function imgm = median(img)
   imgm = ordfilt2(img,5,ones(3,3), 'zeros');
   %statistical order filter   input,�n�ĴX�j,filter�j�p,domain(���j��@)
end
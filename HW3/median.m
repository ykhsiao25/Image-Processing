function imgm = median(img)
   imgm = ordfilt2(img,5,ones(3,3), 'zeros');
   %statistical order filter   input,要第幾大,filter大小,domain(必大於一)
end
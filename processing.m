close all;
clear all;
clc;
%%%reading the respective frames
rf= imread('Car001.tiff');
pdf= imread('Car002.tiff');
figure(1);
subplot(2,2,1);
image(rf);
title('reference frame');
subplot(2,2,2)
image(pdf);
title('prediction frame');
%%% converting to gray scale
rfg =RG2YCBCR(rf);
figure(2);
subplot(2,2,1)
imshow(rfg);
pdfg=RG2YCBCR(pdf);
subplot(2,2,2)
imshow(pdfg);
y1=rfg(:,:,1);
y2=y1+y1+y1;
y2=pdfg(:,:,1);
y2=y2+y2+y2;
%%%resizing the image to 640*480
% y1= imresize(y1,[640 480]);
% y2= imresize(y2,[640 480]);

% %%%performing SAD
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
y1XSize=size(y1,1);
y1YSize=size(y1,2);
y1XSize2=16*floor(y1XSize/16);
y1YSize2=16*floor(y1YSize/16);
f1=y1(1:y1XSize2,1:y1YSize2,:);
y2XSize=size(y2,1);
y2YSize=size(y2,2);
y2XSize2=16*floor(y2XSize/16);
y2YSize2=16*floor(y2YSize/16);
f2=y2(1:y2XSize2,1:y2YSize2,:);
f1=double(f1)/256;
f2=double(f2)/256;
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[height, width]=size(f1);
N= 16;
R= 32;
recon_img= zeros(size(y1);.
%widthxheight: image size; N: block size, R: search range
for i=1:height
    for j=i:width
        SAD_min=256;
        mvx= 0;
        mvy= 0;
         for k = -R:1:R
            for l = -R:1:R
                SAD=(sum(abs(y1b{i:i+N-1,j:j+N-1}-y2b{i+k:i+k+N-1,j+l:j+l+N-1})));
                SAD = 0;
                if (SAD<SAD_min)
                    SAD_min = SAD;
                    dy = k;
                    dx = l;
                end
            end
        end
        iblk = floor((i-1)/(N+1))+1;
        jblk = floor((j-1)/(N+1))+1;
        mvx(iblk,jblk) = dx;
        mvy(iblk,jblk) = dy;
        %figure, imshow(f2);
        %hold on;
        arrow([i j],[i+dy j+dx], 3);
        end
end

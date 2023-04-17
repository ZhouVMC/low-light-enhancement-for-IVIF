clear all;close all;clc
addpath(genpath('./'))
addpath('..\IV_images'); % 低光图像

cc = [];
for i = 2: 2%Here are 12 fused images that appeared in the paper
    % Path setting
    PathVis1     = [ 'IN\IV_images\VIS' ,        num2str(i) ,        '.png' ];
    PathVis      = [ 'IN\1 SCI_diff\VIS' ,        num2str(i) ,       '.png' ];
    EnPath   = [ 'C:\Users\Fallen Eric\Desktop\compare\result\IV_images\Our\',   num2str(i) ,'.png' ]; 
    I = imread(PathVis);
    if size(I, 3)~=1 %size(image,3)==1 表示图像是灰度图， 等于3为RGB彩色图，
     I  = rgb2gray(I);
    end
    I = im2double(I);
    I1 = im2double(imread(PathVis1));
    tic
    img3 = gray_test(I,I1); 
    toc
    cc(i)=toc;
    figure,imshow(img3);
%     imwrite(img3,EnPath);
end
   avg_time = mean(cc);

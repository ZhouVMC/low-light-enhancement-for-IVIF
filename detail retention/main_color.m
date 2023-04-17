clear all;
close all;
clc
addpath(genpath('./'))
global alpha_t;
%% Read the image
SamplePath1 =  'C:\Users\Fallen Eric\Desktop\compare\data\LIME\';  %�洢ͼ���·�� ���ݼ�ΪLIME
SamplePath2 =  'C:\Users\Fallen Eric\Desktop\compare\result\LIME\SCI_diff\';  % SCI_diff��ǿ
FusionPath =  'C:\Users\Fallen Eric\Desktop\compare\result\LIME\Our\';  % �洢ͼ���·��

fileExt1 = '*.bmp';  %����ȡͼ��ĺ�׺��
fileExt2 = '*.bmp';  %����ȡͼ��ĺ�׺��

files1 = dir(fullfile(SamplePath1,fileExt1));  %��ȡ����·��
len1 = size(files1,1);
files2 = dir(fullfile(SamplePath2,fileExt2)); 

for i=1:len1
   fileName1 = strcat(SamplePath1,files1(i).name); 
   disp(files1(i).name);
   fileName2 = strcat(SamplePath2,files2(i).name); 
%    fileName3 = strcat(FusionPath,files3(i).name); 
   image1 = im2double(imread(fileName1));
   image2 = im2double(imread(fileName2));
   img3= color_test(image1,image2);
   figure,imshow(img3);
%    imwrite(img3,[FusionPath files1(i).name]); 
end
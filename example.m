
% PCA-based face recognition system (Eigenface method)

% See also: CREATEDATABASE, EIGENFACECORE, RECOGNITION.         

clear all;
clc;

imagefiles = dir('C:\wamp64\www\AndroidFileUpload\uploads\*.jpg');      
nfiles = length(imagefiles);
for k=1:nfiles
    currentfilename = imagefiles(k).name;
    currentimage = imread(currentfilename);
  
        a = imread(currentfilename);
     disp(size(a));
     A=imresize(a,[200 180]);
    
    FDetect = vision.CascadeObjectDetector;
BBOX=step(FDetect,A);
B=insertObjectAnnotation(A,'rectangle',BBOX,'Face');

imshow(B), title('Detected faces');
n=size(BBOX,1);
str_n=num2str(n);
str=strcat('No of detected faces are=',str_n);
disp(str);

 for i=1:n
     faceImage = imcrop(A,BBOX(i,:));
     figure; imshow(faceImage);
%     FDetect1 = vision.CascadeObjectDetector('EyePairBig');
%     BBOX1= step(FDetect1,faceImage);
%     B1=insertObjectAnnotation(faceImage,'rectangle',BBOX1,'Eyes');
%     figure,imshow(B1),title('Detected eyes');
%     n1=size(BBOX1,1);
%     str_n1=num2str(n1);
%     str1=strcat(' Detected eyes are=',str_n1);
%     disp(str1);
    
    if n>0
        J = imresize(faceImage,[200 180]);
        
        l=rgb2gray(J);
        %figure, imshow(l);
        basepath='C:/Users/User/Documents/MATLAB/TestDatabase/%d.jpg';
        path = sprintf(basepath,k);
        imwrite(l,path);
        
    end
    
end

end
close all;
% You can customize and fix initial directory paths


TrainDatabasePath = 'C:\Users\User\Documents\MATLAB\TrainDatabase' ;
TestDatabasePath = 'C:\Users\User\Documents\MATLAB\TestDatabase';
mytest = dir('C:/Users/User/Documents/MATLAB/TestDatabase/*.jpg');      
nfiles = length(mytest);
for q=1:nfiles
 TI=num2str(q);
TestImage = strcat(TestDatabasePath,'\',char(TI),'.jpg');
im = imread(TestImage);
T = CreateDatabase(TrainDatabasePath);
[m, A, Eigenfaces] = EigenfaceCore(T);
OutputName = Recognition(TestImage, m, A, Eigenfaces);
SelectedImage = strcat(TrainDatabasePath,'\',OutputName);
SelectedImage = imread(SelectedImage);
figure,imshow(im)
title('Test Image');
figure,imshow(SelectedImage);
title('Equivalent Image');
str = strcat('Matched image is:  ',OutputName);
disp(str)
end
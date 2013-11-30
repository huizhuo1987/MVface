%% strL is the input LR file path
%% strH is the output HR file path
% This scripts calculated the mean face

strL= 'E:\HZ\neighbor embedding\Face_align\database\Interpolated\\'; %Patch_Learning\Adjust  % 'I:\TraingSet\CMU_Database\Testing_1\Chai\Left+_Left-\20_15\'
strH='E:\HZ\neighbor embedding\Face_align\database\phase_3_adjustment\\';
strOut = 'E:\HZ\neighbor embedding\func\meanface.png';

filelist = dir([strL '*.png']); % change the extension filename if needed
numOfImages = length(filelist);

for i = 1 : numOfimages
    img = imread([strL filelist(i).name]);
    imgHR = imread([strH filelist(i).name]);
    trL(:,i) = img(:);
    trH(:,i) = imgHR(:);
end
meanFL = mean(trL,2);
meanFH = mean(trH,2);

imwrite(uint8(reshape(meanFL,100,100)),strOut)

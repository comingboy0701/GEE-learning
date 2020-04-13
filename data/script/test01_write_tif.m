clear;clc;
%读tif文件
file = 'dem.tif';
[A,R]= geotiffread(file);
Ai=geotiffinfo('dem.tif');
% 对dem进行一列的操作,比如映射某种关系,分级.....个人觉得会比 arcgis 栅格计算更方便一些
dem2 = dem;
% 把矩阵数据写入tif
geotiffwrite('dem2.tif',tmp,R,'GeoKeyDirectoryTag',Ai.GeoTIFFTags.GeoKeyDirectoryTag);
clear;clc;
%��tif�ļ�
file = 'dem.tif';
[A,R]= geotiffread(file);
Ai=geotiffinfo('dem.tif');
% ��dem����һ�еĲ���,����ӳ��ĳ�ֹ�ϵ,�ּ�.....���˾��û�� arcgis դ����������һЩ
dem2 = dem;
% �Ѿ�������д��tif
geotiffwrite('dem2.tif',tmp,R,'GeoKeyDirectoryTag',Ai.GeoTIFFTags.GeoKeyDirectoryTag);
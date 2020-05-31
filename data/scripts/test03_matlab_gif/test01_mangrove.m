%方法1
clear;clc;
figure (1)
load('mangrove') %载入数据
for k=1:51
%     subplot(2,2,k) %画子图N
    A=dbh_ty{1,k}{1, 1};% 提取相应年份的数据
    A=A(1:2:50,1:2:50);
    A(A==0)=nan;%把半径都是0的都变成nan
    b2=48.04;%高度和胸径的关系常数b2 
    b3=0.172;%高度和胸径的关系常数b3
    H=137+b2*(A.*2)-b3*(A.*2).^2;%高度和胸径的比例关系            
    [xx,yy]=meshgrid(1:25,1:25);%产生50*50的矩阵
    xx(isnan(A))=nan;%把半径为nan的相对应点都变成nan
    yy(isnan(A))=nan;%把半径为nan的相对应点都变成nan
    H(isnan(A))=nan;%把半径为nan的高度都变成nan
    stem3(yy,xx,H./10,'MarkerFaceColor',[0 0.5 0],... %画火柴图
        'MarkerEdgeColor',[0 0.5 0],...
        'MarkerSize',nanmean(nanmean(A)).*25,...
        'Marker','^',...
        'LineWidth',nanmean(nanmean(H))./50,...
        'Color',[0.6 0.2 0]);
     title(['第',' ',num2str(k),' ','year'])%加上标题   
    view([-122.7 78]); %侧视; 
%     view([-90, 90]); %俯视
%     view([190 0]);%平视
    axis off %去除网格
    axis off %去除网格
    f(k) = getframe(gcf);
    frame=getframe(gcf);
    im=frame2im(frame);%制作gif文件，图像必须是index索引图像
    [I,map]=rgb2ind(im,256);
    if k == 1;
        imwrite(I,map,'test01_mangrove.gif','gif', 'Loopcount',inf);
    else
        imwrite(I,map,'test01_mangrove.gif','gif','WriteMode','Append');
    end
%     pause(0.5)
end
movie2avi(f,'test01_mangrove.avi','fps',5,'quality',100,'compression', 'None'); 

%方法2
% figure (2)
% clear;clc;
% load('dbh_ty') 
% for k=1:4
% %     subplot(2,2,k)
%     A=dbh_ty{1,(k-1)*10+15}{1, 1};
%     b2=48.04;%高度和胸径的关系常数b2
%     b3=0.172;%高度和胸径的关系常数b3
%     H=137+b2*(A.*2)-b3*(A.*2).^2;%高度和胸径的比例关系
%     A(isnan(A))=0;%把半径都是0的都变成nan
%     H(isnan(H)|H<=137)=0;%把半径为nan的高度都变成nan
%     for i=1:2:size(A,1)
%         for j=1:2:size(A,2)
%             if A(i,j)==0 
%                 continue
%             end
%             x=[i,i];
%             y=[j,j];
%             z=[0,H(i,j)/10];
%             plot3(x,y,z,'Color',[0.6-H(i,j)/1000 .2 0],'LineWidth',A(i,j)*5)%中间茎段
%             hold on
%             scatter3(i,j,H(i,j)/10,A(i,j)*300,'Marker','^','MarkerEdgeColor',[0 0.5-A(i,j)./10 0],... %画顶部圆圈
%                   'MarkerFaceColor',[0 0.5-A(i,j)./10 0]);
%             hold on  
%         end
%         title(['第',' ',num2str((k-1)*10+15),' ','year'])
%         view([-122.7 78]); 
%         axis off 
%     end
% end

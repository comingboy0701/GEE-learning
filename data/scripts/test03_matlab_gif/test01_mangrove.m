%����1
clear;clc;
figure (1)
load('mangrove') %��������
for k=1:51
%     subplot(2,2,k) %����ͼN
    A=dbh_ty{1,k}{1, 1};% ��ȡ��Ӧ��ݵ�����
    A=A(1:2:50,1:2:50);
    A(A==0)=nan;%�Ѱ뾶����0�Ķ����nan
    b2=48.04;%�߶Ⱥ��ؾ��Ĺ�ϵ����b2 
    b3=0.172;%�߶Ⱥ��ؾ��Ĺ�ϵ����b3
    H=137+b2*(A.*2)-b3*(A.*2).^2;%�߶Ⱥ��ؾ��ı�����ϵ            
    [xx,yy]=meshgrid(1:25,1:25);%����50*50�ľ���
    xx(isnan(A))=nan;%�Ѱ뾶Ϊnan�����Ӧ�㶼���nan
    yy(isnan(A))=nan;%�Ѱ뾶Ϊnan�����Ӧ�㶼���nan
    H(isnan(A))=nan;%�Ѱ뾶Ϊnan�ĸ߶ȶ����nan
    stem3(yy,xx,H./10,'MarkerFaceColor',[0 0.5 0],... %�����ͼ
        'MarkerEdgeColor',[0 0.5 0],...
        'MarkerSize',nanmean(nanmean(A)).*25,...
        'Marker','^',...
        'LineWidth',nanmean(nanmean(H))./50,...
        'Color',[0.6 0.2 0]);
     title(['��',' ',num2str(k),' ','year'])%���ϱ���   
    view([-122.7 78]); %����; 
%     view([-90, 90]); %����
%     view([190 0]);%ƽ��
    axis off %ȥ������
    axis off %ȥ������
    f(k) = getframe(gcf);
    frame=getframe(gcf);
    im=frame2im(frame);%����gif�ļ���ͼ�������index����ͼ��
    [I,map]=rgb2ind(im,256);
    if k == 1;
        imwrite(I,map,'test01_mangrove.gif','gif', 'Loopcount',inf);
    else
        imwrite(I,map,'test01_mangrove.gif','gif','WriteMode','Append');
    end
%     pause(0.5)
end
movie2avi(f,'test01_mangrove.avi','fps',5,'quality',100,'compression', 'None'); 

%����2
% figure (2)
% clear;clc;
% load('dbh_ty') 
% for k=1:4
% %     subplot(2,2,k)
%     A=dbh_ty{1,(k-1)*10+15}{1, 1};
%     b2=48.04;%�߶Ⱥ��ؾ��Ĺ�ϵ����b2
%     b3=0.172;%�߶Ⱥ��ؾ��Ĺ�ϵ����b3
%     H=137+b2*(A.*2)-b3*(A.*2).^2;%�߶Ⱥ��ؾ��ı�����ϵ
%     A(isnan(A))=0;%�Ѱ뾶����0�Ķ����nan
%     H(isnan(H)|H<=137)=0;%�Ѱ뾶Ϊnan�ĸ߶ȶ����nan
%     for i=1:2:size(A,1)
%         for j=1:2:size(A,2)
%             if A(i,j)==0 
%                 continue
%             end
%             x=[i,i];
%             y=[j,j];
%             z=[0,H(i,j)/10];
%             plot3(x,y,z,'Color',[0.6-H(i,j)/1000 .2 0],'LineWidth',A(i,j)*5)%�м侥��
%             hold on
%             scatter3(i,j,H(i,j)/10,A(i,j)*300,'Marker','^','MarkerEdgeColor',[0 0.5-A(i,j)./10 0],... %������ԲȦ
%                   'MarkerFaceColor',[0 0.5-A(i,j)./10 0]);
%             hold on  
%         end
%         title(['��',' ',num2str((k-1)*10+15),' ','year'])
%         view([-122.7 78]); 
%         axis off 
%     end
% end

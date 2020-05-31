file = 'spartina.xls';
[data,txt,raw]= xlsread(file);
time  = datenum(txt(2:end,1));
color = [0.1, 0.6, 0.5;0.8, 0.3, 0.0;0.9, 0.2, 0.5];

clf;
figure (1);
for i=25: size(data,1)-25 %为了展示更好的效果，去除了前25个数据和最后25个数据
    tmp = data(1:i,:);
    tmp2 = time(1:i);
    h1 = plot(tmp2, tmp(:,2),'o','color',color(1,:),'MarkerSize',5,'linewidth',1.5);
    hold on
    h2 = plot(tmp2, tmp(:,6),'-','color',color(2,:),'MarkerSize',5,'linewidth',3);
    hold on
    h3 = plot(tmp2, tmp(:,12),'o','color',color(3,:),'MarkerSize',8,'linewidth',2);
    set(gca,'xlim',[min(time),max(time)]);
    datetick('x','yyyy-mm','keepticks');
    set(gca,'ylim',[-0.6,0.6],'FontSize',12,'FontWeight','bold');
    set(gca,'ytick',[-0.6,-0.4,-0.2,0,0.2,0.4,0.6],'FontSize',12,'FontWeight','bold');
    legend([h1,h2,h3],{'Raw\_NDVI','Fit\_NDVI','Change'},'location','northwest')
    f(i-24) = getframe(gcf);
    frame=getframe(gcf);
    im=frame2im(frame);%制作gif文件，图像必须是index索引图像
    [I,map]=rgb2ind(im,256);
    if i-24 == 1;
        imwrite(I,map,'test02_spartina.gif','gif', 'Loopcount',inf);
    else
        imwrite(I,map,'test02_spartina.gif','gif','WriteMode','Append');
    end
end
movie2avi(f,'test02_spartina.avi','fps',15,'quality',1,'compression', 'None'); 

x = 0:10;
y1=x;  y2=x.^2;  y3=x.^3;  y4=x.^4;
ylabels{1} = 'First y-label';
ylabels{2} = 'Second y-label';
ylabels{3} = 'Third y-label';
ylabels{4} = 'Fourth y-label';
[ax,hlines] = ploty4(x,y1,x,y2,x,y3,x,y4,ylabels);
leghandle = legend(hlines, 'y = x','y = x^2','y = x^3','y = x^4','location','northwest');
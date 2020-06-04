x = -10:0.5:10;
y1 = x.^2;
y2 = x.^3;
y3 = sin(x);
y4 = cos(x);

addaxis(x, y1,'-.','linewidth',2)
addaxis(x, y2,'-*','linewidth',2) 
addaxis(x, y3,'-o','linewidth',2) 
addaxis(x, y4,'--','linewidth',2)

addaxislabel(1,'one'); 
addaxislabel(2,'two'); 
addaxislabel(3,'three');
addaxislabel(4,'four');
addaxislabel(5,'five');
legend({'y1=x^2','y2=x^3','y3=sin(x)','y4=cos(x)'}) 

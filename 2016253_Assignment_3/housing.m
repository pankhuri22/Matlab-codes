
yo = dlmread('/home/pankhuri22/Documents/housing.data');
display(yo)
A = yo( 1:354 , 1:13);
y = yo( 1:354 , 14);
k = 5;
xout = ompfunc(y,A,k);
hillo = yo( 355:506 , 1:13);
yout = hillo*xout;
hulla = yo(355:506 , 14);

RMSE = sqrt(mean((hulla-yout).^2));
display(RMSE)


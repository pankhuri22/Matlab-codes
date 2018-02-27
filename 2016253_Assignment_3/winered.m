file = importdata('/home/pankhuri22/Documents/winequality-red-1.csv');
fo = file.data;
display(fo)
y = fo(1:1091 , 12);
A = fo(1:1091 , 1:11);
k = 5;
xout = ompfunc(y,A,k);
noo = fo(1092:1559 , 1:11);
yout = noo*xout;
yooo = fo(1092:1559 , 12);
RMSE = sqrt(mean((yooo-yout).^2));
display(RMSE)


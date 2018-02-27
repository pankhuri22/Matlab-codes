file = importdata('/home/pankhuri22/Documents/winequality-white.csv');
fo = file.data;
display(fo)
y = fo(1:3429 , 12);
A = fo(1:3429 , 1:11);
k = 3;
xout = ompfunc(y,A,k);
noo = fo(3429:4898 , 1:11);
yout = noo*xout;
yooo = fo(3429:4898 , 12);
RMSE = sqrt(mean((yooo-yout).^2));
display(RMSE)


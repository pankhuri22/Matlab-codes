img = input('enter the img address, img:');
I=im2double(imread('img'));
figure,imshow(I);
v = input('enter the value of v, v:');
I=imnoise(I,'gaussian',v);
figure,imshow(I);

M=size(I);  % matrix1=p
m=M(1);
n=M(2);

o = input('enter the averaging mask size, o:');
fix = o ;
k=floor(fix/2);

Z=zeros(size(I)+(k*2));

for i=1:m
    for j=1:n
        Z(i+k,j+k)=I(i,j);
    end
end

yo=zeros(m,n);
for i=1:m
    for j=1:n
        M=zeros(1,fix*fix);
        
        t=1;
        for a=i:i+k*2
            for b=j:j+k*2
                
                M(t)=Z(a,b);
                t=t+1;
            end
        end
        
        kernel = [ 0,0,0,0,0,0,0.000161,0.01235,0.000161,0,0,0.01235,0.949956,0.01235,0,0,0.000161,0.01235,0.000161,0,0,0,0,0,0];
        
        M=M.*kernel;    %matrix multiplication
        
        meansum=0;
        for l=1:9
            meansum = meansum+M(l);
        end
        yo(i,j)= meansum;
    end
end


if yo==I
    display(1);
end


figure,imshow(yo);


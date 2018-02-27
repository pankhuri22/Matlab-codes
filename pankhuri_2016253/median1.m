z = im2double(imread('/home/pankhuri22/Documents/matlab/baboon256.tif'));
imshow(z);

v = imnoise(z,'salt & pepper', 0.05);

figure,imshow(v);
s = input('enter the size of the median filter, n:'); 
padding = zeros(size(i) + (s-1)); 
p=size(v);
for x=1: p(1)
    
    for y=1: p(2)
        padding(x+floor(s/2),y+floor(s/2))=v(x,y); 
    end
end
out=zeros(p(1),p(2));
for i=1: size(padding,1)-(s-1)
    for j=1 :size(padding,2)-(s-1)
        kernel =zeros(1,s^2);
        t=1;
        for x=1:s 
            for y=1:s 
                 kernel(t) = padding(i+x-1,j+y-1);
                 t=t+1;
            end
        end
        filt=sort(kernel);
        
        out(i,j) =filt(5);
    end
end

figure,imshow(out);


 
        
        


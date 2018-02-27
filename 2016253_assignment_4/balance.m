file = importdata('/home/pankhuri22/Desktop/balance-scale.data', ',');
openfile=file.textdata;
openfile2=file.data;
y = openfile(1:438 ,1);
yy1 = openfile2(1:438 ,1);
yy2 = openfile2(1:438 ,2);
yy3 = openfile2(1:438 ,3);
yy4 = openfile2(1:438 ,4);
Larr1=zeros(5,1);
Barr1=zeros(5,1);
Rarr1=zeros(5,1);
Larr2=zeros(5,1);
Barr2=zeros(5,1);
Rarr2=zeros(5,1);
Larr3=zeros(5,1);
Barr3=zeros(5,1);
Rarr3=zeros(5,1);
Larr4=zeros(5,1);
Barr4=zeros(5,1);
Rarr4=zeros(5,1);
for i=1:438
    b=strcmp(y(i),'B');
    o=yy1(i);
    p=yy2(i);
    q=yy3(i);
    r=yy4(i);
    if b== 1
        Barr1(o)=Barr1(o)+1;
        Barr2(p)=Barr2(p)+1;
        Barr3(q)=Barr3(q)+1;
        Barr4(r)=Barr4(r)+1;
    end
    r=strcmp(y(i),'R');
    o=yy1(i);
    p=yy2(i);
    q=yy3(i);
    r=yy4(i);
    if r== 1
        Rarr1(o)=Rarr1(o)+1;
        Rarr2(p)=Rarr2(p)+1;
        Rarr3(q)=Rarr3(q)+1;
        Rarr4(r)=Rarr4(r)+1;
    end
    l=strcmp(y(i),'L');
    o=yy1(i);
    p=yy2(i);
    q=yy3(i);
    r=yy4(i);
    if l== 1
        Larr1(o)=Larr1(o)+1;
        Larr2(p)=Larr2(p)+1;
        Larr3(q)=Larr3(q)+1;
        Larr4(r)=Larr4(r)+1;
    end
end
freq= zeros(3,1);
for a=1:438
    freqL=strcmp(y(a),'L');
    freqB=strcmp(y(a),'B');
    freqR=strcmp(y(a),'R');
    if freqL== 1
        freq(1)=freq(1)+1;
    end
    if freqB==1
        freq(2)=freq(2)+1;
    end
    if freqR==1
        freq(3)=freq(3)+1;
    end
end

Pfinal = PR24 / 0.2647 ; 
display(Pfinal)

L = freq(1);
B = freq(2);
R = freq(3);

PL11 = Larr1(1)/L;
PL12 = Larr1(2)/L;
PL13 = Larr1(3)/L;
PL14 = Larr1(4)/L;
PL15 = Larr1(5)/L;

PL21 = Larr2(1)/L;
PL22 = Larr2(2)/L;
PL23 = Larr2(3)/L;
PL24 = Larr2(4)/L;
PL25 = Larr2(5)/L;

PL31 = Larr3(1)/L;
PL32 = Larr3(2)/L;
PL33 = Larr3(3)/L;
PL34 = Larr3(4)/L;
PL35 = Larr3(5)/L;
%%
PB11 = Barr1(1)/B;
PB12 = Barr1(2)/B;
PB13 = Barr1(3)/B;
PB14 = Barr1(4)/B;
PB15 = Barr1(5)/B;

PB21 = Barr2(1)/B;
PB22 = Barr2(2)/B;
PB23 = Barr2(3)/B;
PB24 = Barr2(4)/B;
PB25 = Barr2(5)/B;

PB31 = Barr3(1)/B;
PB32 = Barr3(2)/B;
PB33 = Barr3(3)/B;
PB34 = Barr3(4)/B;
PB35 = Barr3(5)/B;
%%
PR11 = Rarr1(1)/R;
PR12 = Rarr1(2)/R;
PR13 = Rarr1(3)/R;
PR14 = Rarr1(4)/R;
PR15 = Rarr1(5)/R;

PR21 = Rarr2(1)/R;
PR22 = Rarr2(2)/R;
PR23 = Rarr2(3)/R;
PR24 = Rarr2(4)/R;
PR25 = Rarr2(5)/R;

PR31 = Rarr3(1)/R;
PR32 = Rarr3(2)/R;
PR33 = Rarr3(3)/R;
PR34 = Rarr3(4)/R;
PR35 = Rarr3(5)/R;

L30 = openfile2(438:625 , 1:5 );




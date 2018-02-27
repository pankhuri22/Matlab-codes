data = importdata('/home/pankhuri22/Desktop/Car_Evaluation.csv');
A = data(1:1210,1);
B = data(1:1210,2);
C = data(1:1210,3);
D = data(1:1210,4);
E = data(1:1210,5);
F = data(1:1210,6);
arrA1 = zeros(4,1);
arrA2 = zeros(4,1);
arrA3 = zeros(4,1);
arrA4 = zeros(4,1);


arrB1 = zeros(4,1);
arrB2 = zeros(4,1);
arrB3 = zeros(4,1);
arrB4 = zeros(4,1);


arrC1 = zeros(4,1);
arrC2 = zeros(4,1);
arrC3 = zeros(4,1);
arrC4 = zeros(4,1);


arrD1 = zeros(4,1);
arrD2 = zeros(4,1);
arrD3 = zeros(4,1);
arrD4 = zeros(4,1);


arrE1 = zeros(4,1);
arrE2 = zeros(4,1);
arrE3 = zeros(4,1);
arrE4 = zeros(4,1);


arrF1 = zeros(4,1);
arrF2 = zeros(4,1);
arrF3 = zeros(4,1);
arrF4 = zeros(4,1);


finalP= 5.39 / PB13;
display( finalP)

y = data(1:1210 , 7);
for i=1:1210
    if y(i) == 1
        a = A(i);
        b = B(i);
        c = C(i);
        d = D(i);
        e = E(i);
        f = F(i);
        arrA1(a) = arrA1(a) + 1;
        arrB1(b) = arrB1(b) + 1;
        arrC1(c) = arrC1(c) + 1;
        arrD1(d) = arrD1(d) + 1;
        arrE1(e) = arrE1(e) + 1;
        arrF1(f) = arrF1(f) + 1;
    end 
    
    if y(i) == 2
        a = A(i);
        b = B(i);
        c = C(i);
        d = D(i);
        e = E(i);
        f = F(i);
        arrA2(a) = arrA2(a) + 1;
        arrB2(b) = arrB2(b) + 1;
        arrC2(c) = arrC2(c) + 1;
        arrD2(d) = arrD2(d) + 1;
        arrE2(e) = arrE2(e) + 1;
        arrF2(f) = arrF2(f) + 1;
    end 
    
    if y(i) == 3
        a = A(i);
        b = B(i);
        c = C(i);
        d = D(i);
        e = E(i);
        f = F(i);
        arrA3(a) = arrA3(a) + 1;
        arrB3(b) = arrB3(b) + 1;
        arrC3(c) = arrC3(c) + 1;
        arrD3(d) = arrD3(d) + 1;
        arrE3(e) = arrE3(e) + 1;
        arrF3(f) = arrF3(f) + 1;
    end 
    
    if y(i) == 4
        a = A(i);
        b = B(i);
        c = C(i);
        d = D(i);
        e = E(i);
        f = F(i);
        arrA4(a) = arrA4(a) + 1;
        arrB4(b) = arrB4(b) + 1;
        arrC4(c) = arrC4(c) + 1;
        arrD4(d) = arrD4(d) + 1;
        arrE4(e) = arrE4(e) + 1;
        arrF4(f) = arrF4(f) + 1;
    end 
end 

  hello = data(1:1210 , 7);
      freq= histc(hello,1:max(hello));
      
      one = freq(1);
      two = freq(2);
      three = freq(3);
      four = freq(4);
      
      PA11 = arrA1(1) / one; 
      PB21= arrB2(1) / one;
      PC31 = arrC3(1) / one; 
      PD41 = arrD4(1) / one; 
       
     
      PA12 = arrA1(2) / two; 
      PB22 = arrB2(2) / two;
      PC32 = arrC3(2) / two; 
      PD42 = arrD4(2) / two; 
      
      
      PA13 = arrA1(3) / three; 
      PB13 = arrB2(3) / three;
      PC33 = arrC3(3) / three; 
      PD43 = arrD4(3) / three; 
     
      
      
      last30 = data(1210:1728 , 1:7);

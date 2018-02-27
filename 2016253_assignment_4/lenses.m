file = importdata('/home/pankhuri22/Desktop/lenses.data');
po1 = file(1:17 , 2);
po2 = file(1:17 , 3);
po3 = file(1:17 , 4);
po4 = file(1:17 , 5);
arr41 = zeros(3,1);
arr42 = zeros(3,1);
arr43 = zeros(3,1);

arr11 = zeros(3,1);
arr12 = zeros(3,1);
arr13 = zeros(3,1);

arr21 = zeros(3,1);
arr22 = zeros(3,1);
arr23 = zeros(3,1);

arr31 = zeros(3,1);
arr32 = zeros(3,1);
arr33 = zeros(3,1);

x = file(1:17,6);
for i=1:17
   
    if x(i) == 1
    o = po1(i);
    p = po2(i);
    q = po3(i);
    r = po4(i);
        arr11(o) = arr11(o) + 1;
        arr21(p) = arr21(p) + 1;
        arr31(q) = arr31(q) + 1;
        arr41(r) = arr41(r) + 1;
    end
    
    if x(i) == 2
       o = po1(i);
       p = po2(i);
       q = po3(i);
       r = po4(i);
        arr12(o) = arr12(o) + 1;
        arr22(p) = arr22(p) + 1;
        arr32(q) = arr32(q) + 1;
        arr42(r) = arr42(r) + 1;
    end
    
    if x(i) == 3
       o = po1(i);
       p = po2(i);
       q = po3(i);
       r = po4(i);
       arr13(o) = arr13(o) + 1;
       arr23(p) = arr23(p) + 1;
       arr33(q) = arr33(q) + 1;
       arr43(r) = arr43(r) + 1;
    end
    
    if x(i) == 4
       o = po1(i);
       p = po2(i);
       q = po3(i);
       r = po4(i);
       arr14(o) = arr14(o) + 1;
       arr24(p) = arr24(p) + 1;
       arr34(q) = arr34(q) + 1;
       arr44(r) = arr44(r) + 1;
    end
end

   Pfinal = P43o / 4.199;
     display(Pfinal);

        z = file(1:17 , 6);
      freq= histc(z,1:max(z));
    display(freq);
    one = freq(1);
    two = freq(2);
    three = freq(3);
    
   P11o = arr11(1)/one;
   P11t = arr11(2)/two;
   P11th = arr11(3)/three;
   
    P12o = arr12(1)/one;
   P12t = arr12(2)/two;
   P12th = arr12(3)/three;
   
    P13o = arr13(1)/one;
   P13t = arr13(2)/two;
   P13th = arr13(3)/three;
   %%
   
    P21o = arr21(1)/one;
   P21t = arr21(2)/two;
   P21th = arr21(3)/three;
   
    P22o = arr22(1)/one;
   P22t = arr22(2)/two;
   P22th = arr22(3)/three;
   
    P23o = arr23(1)/one;
   P23t = arr23(2)/two;
   P23th = arr23(3)/three;
   %%
    P31o = arr31(1)/one;
   P31t = arr31(2)/two;
   P31th = arr31(3)/three;
   
    P32o = arr32(1)/one;
   P32t = arr32(2)/two;
   P32th = arr32(3)/three;
   
    P33o = arr33(1)/one;
   P33t = arr33(2)/two;
   P33th = arr33(3)/three;
   %%
   
    P41o = arr41(1)/one;
   P41t = arr41(2)/two;
   P41th = arr41(3)/three;
   
    P42o = arr42(1)/one;
   P42t = arr42(2)/two;
   P42th = arr42(3)/three;
   
    P43o = arr43(1)/one;
   P43t = arr43(2)/two;
   P43th = arr43(3)/three;
   
   
   L30 = file(17:24,1:6);
%last 30 per of data 
  
     
   
   

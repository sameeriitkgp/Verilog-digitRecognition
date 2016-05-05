%a = imread('C:\Users\DELL\Desktop\code_data\code_data\image_num\one','bmp');

for i = 1:64
for j = 1:64
img2(i,j) = a(i,j,1);
end
end


for i = 1:64
for j = 1:64
img3(i,j) = 255- img2(i,j);
end
end

img2= img3;

for i = 1:64
    for j = 1:64
        H(i,j)=0;
        V(i,j)=0;
        Dp(i,j)=0;
        Dn(i,j)=0;
 
    end
end

for i = 1:64
    H1(i) =0;
    V1(i) = 0;
    H2(i) =0;
    V2(i) = 0;
     Dp1(i)=0;
     Dn1(i)=0;
end

for i = 3:61
    for j= 3:61
        H(i,j) = (img2(i,j-1)+ img2(i,j) + img2(i,j+1) + img2(i,j+2))-(img2(i+1,j-1)+ img2(i+1,j) + img2(i+1,j+1) + img2(i+1,j+2));
        
        
        V(i,j) = (img2(i-1,j) + img2(i,j)+ img2(i+1,j) + img2(i+2,j))- (img2(i-1,j+1) + img2(i,j+1)+ img2(i+1,j+1) + img2(i+2,j+1)) ;
        
        Dn(i,j)= (img2(i-1,j-1) + img2(i,j-1)+ img2(i-1,j) + img2(i-2,j+1)+ img2(i+1,j-2)) - ( img2(i-1, j)+ img2(i-2,j+1) + img2(i-1,j+1)+ img2(i-1,j+2) + img2(i,j+2));
        
        
        Dp (i,j)= (img2(i-2,j-1)+ img2(i-1,j-2)+ img2(i-2,j-2)+ img2(i-2,j) + img2(i,j-2)+ img2(i-1,j-1) + img2(i,j)+ img2(i+1,j-1) + img2(i+2,j-2)) - (img2(i-1,j+2) + img2(i,j+1)+ img2(i+1,j+1) + img2(i+1,j) + img2(i+2,j-1) + img2(i,j+2) + img2(i+2,j) + img2(i+1,j+2)+img2(i+2,j+1)+img2(i+2,j+2));
 %  Dp (i,j)= (img2(i+1,j-2)+ img2(i,j-1)+ img2(i-1,j)+ img2(i-2,j+1) ) - (img2(i+2,j-1) + img2(i+1,j)+ img2(i,j+1) + img2(i-1,j+2));% + img2(i+2,j-1) + img2(i,j+2) + img2(i+2,j) + img2(i+1,j+2)+img2(i+2,j+1)+img2(i+2,j+2));
  
     end
end


%----------------------------------------------------------thresholding
for i = 1:64
   for j = 1:64
    
   if(H(i,j)>100) 
    H(i,j) =1;
   else 
       H(i,j)= 0;
   end
   if(V(i,j)>100)
      V(i,j)=1;
   else
       V(i,j) = 0;
   end
    
   if(Dn(i,j)>210)
      Dn(i,j)=1;
   else
       Dn(i,j) = 0;
   end
   
   if(Dp(i,j)>240)
      Dp(i,j)=1;
   else
       Dp(i,j) = 0;
   end
   
end
end

%-------------------------------------summation of +45 along -45
for i = 2:32
    for j = 1:i-1
        Dp1(i) = Dp1(i)+Dp(i-j,i+j);
    end
    for j = 1:i-1
        Dp1(i)= Dp1(i)+ Dp(i+j,i-j);
    end
end

for i = 33:63
    for j = i-64 : 64-i
        Dp1(i) = Dp1(i)+Dp(i-j,i+j);
    end
   
end


%------------------------------------summation of -45 along + 45
for i = 2:32
    for j = 1-i:i-1
        Dn1(i) = Dn1(i)+Dn(i-j,65-i-j);
    end
    
end

for i = 33:63
    for j = -(64-i):64-i
        Dn1(i) = Dn1(i)+Dn(i-j,65-i-j);
    end
    
end
%-------------------------------------summation of V along H
for i = 1: 64
    for j= 1:64
    V1(i)= V1(i)+ V(j,i) ;
    end
end
%----------------------------------------summation of H along V
for i = 1: 64
    for j = 1: 64
      H1(i) = H1(i) + H(i,j);
    end
end

%for k= 1: 17
    %k= i/4;
 %   V2(k)= V1(3*k-2) + V1(3*k-1) + V1(3*k); % V1(4*k+3);
%end

for k= 1: 61
    %k= i/4;
    V2(k)= V1(k) + V1(k+1) + V1(k+2) + V1(k+3); % V1(4*k+3);
end

% for k = 1: 
% k = i/4;
% H2(k)= H1(3*k-2) + H1(3*k-1) + H1(3*k) ; %+ H1(4*k+3);3
% end

for k= 1: 60
    %k= i/4;
    H2(k)= H1(k) + H1(k+1) + H1(k+2) + H1(k+3); % V1(4*k+3);
    
end


 

    
VEC = [H1, V1];
VEC1 = VEC.*0;
Dp2 = Dp1.*0;
Dn2 = Dn1.*0;
%VEC = downsample(VEC, 2);
%Dp1 = downsample(Dp1,2);
%Dn1 = downsample(Dn1,2);

for i = 3: 126
    VEC1(i)= 0.8*VEC(i) + 0.4*VEC(i-1) + 0.25* VEC(i-2) + 0.35*VEC(i+1) ;
    
end

for i = 3: 62
            Dp2(i)= 0.8*Dp1(i) + 0.4*Dp1(i-1) + 0.25* Dp1(i-2) + 0.35*Dp1(i+1) ;
            Dn2(i)= 0.8*Dn1(i) + 0.4*Dn1(i-1) + 0.25* Dn1(i-2) + 0.35*Dn1(i+1) ;
    
end

for i = 1: 128
    v(i)= 0;
end


VEC2= [VEC1 , Dp1, Dn1];

%VEC2= downsample(VEC2,2);


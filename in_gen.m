a = imread('one','bmp');
d2match;
v1 = VEC2;
v1 = v1 / rms(v1);
v1_int = cast(v1, 'uint8');
fid2b = fopen('one.txt','w');
Numsamples=size(v1_int);
for i=1:Numsamples(2)
    fprintf(fid2b,'%d', de2bi(cast(v1_int(i),'uint8'), 8));
    fprintf(fid2b, '\n');%% cast converts double type into 8-bit unsigned integer and de2bi obtains the corresponding 8-bit binary representation
end
    fclose(fid2b);

a = imread('two','bmp');
d2match;
v2 = VEC2;
v2 = v2 / rms(v2);
v2_int = cast(v2, 'uint8');
fid2b = fopen('two.txt','w');
Numsamples=size(v2_int);
for i=1:Numsamples(2)
    fprintf(fid2b,'%d', de2bi(cast(v2_int(i),'uint8'), 8)); 
    fprintf(fid2b, '\n');  %% cast converts double type into 8-bit unsigned integer and de2bi obtains the corresponding 8-bit binary representation
end
    fclose(fid2b);


a = imread('three','bmp');
d2match;
v3 = VEC2;
v3 = v3 / rms(v3);
v3_int = cast(v3, 'uint8');
fid2b = fopen('three.txt','w');
Numsamples=size(v3_int);
for i=1:Numsamples(2)
    fprintf(fid2b,'%d', de2bi(cast(v3_int(i),'uint8'), 8));    %% cast converts double type into 8-bit unsigned integer and de2bi obtains the corresponding 8-bit binary representation
fprintf(fid2b, '\n');
end
    fclose(fid2b);

a = imread('four','bmp');
d2match;
v4 = VEC2;
v4 = v4 / rms(v4);
v4_int = cast(v4, 'uint8');
fid2b = fopen('four.txt','w');
Numsamples=size(v4_int);
for i=1:Numsamples(2)
    fprintf(fid2b,'%d', de2bi(cast(v4_int(i),'uint8'), 8));    %% cast converts double type into 8-bit unsigned integer and de2bi obtains the corresponding 8-bit binary representation
fprintf(fid2b, '\n');
end
    fclose(fid2b);

a = imread('five','bmp');
d2match;
v5 = VEC2;
v5 = v5 / rms(v5);
v5_int = cast(v5, 'uint8');
fid2b = fopen('five.txt','w');
Numsamples=size(v5_int);
for i=1:Numsamples(2)
    fprintf(fid2b,'%d', de2bi(cast(v5_int(i),'uint8'), 8));    %% cast converts double type into 8-bit unsigned integer and de2bi obtains the corresponding 8-bit binary representation
fprintf(fid2b, '\n');
end
    fclose(fid2b);


a = imread('six','bmp');
d2match;
v6 = VEC2;
v6 = v6 / rms(v6);
v6_int = cast(v6, 'uint8');
fid2b = fopen('six.txt','w');
Numsamples=size(v6_int);
for i=1:Numsamples(2)
    fprintf(fid2b,'%d', de2bi(cast(v6_int(i),'uint8'), 8));    %% cast converts double type into 8-bit unsigned integer and de2bi obtains the corresponding 8-bit binary representation
fprintf(fid2b, '\n');
end
    fclose(fid2b);


a = imread('seven','bmp');
d2match;
v7 = VEC2;
v7 = v7 / rms(v7);
v7_int = cast(v7, 'uint8');
fid2b = fopen('seven.txt','w');
Numsamples=size(v7_int);
for i=1:Numsamples(2)
    fprintf(fid2b,'%d', de2bi(cast(v7_int(i),'uint8'), 8));    %% cast converts double type into 8-bit unsigned integer and de2bi obtains the corresponding 8-bit binary representation
fprintf(fid2b, '\n');
end
    fclose(fid2b);


a = imread('eight','bmp');
d2match;
v8 = VEC2;
v8 = v8 / rms(v8);
v8_int = cast(v8, 'uint8');
fid2b = fopen('eight.txt','w');
Numsamples=size(v8_int);
for i=1:Numsamples(2)
    fprintf(fid2b,'%d', de2bi(cast(v8_int(i),'uint8'), 8));    %% cast converts double type into 8-bit unsigned integer and de2bi obtains the corresponding 8-bit binary representation
fprintf(fid2b, '\n');
end
    fclose(fid2b);


a = imread('nine','bmp');
d2match;
v9 = VEC2;
v9 = v9 / rms(v9);
v9_int = cast(v9, 'uint8');
fid2b = fopen('nine.txt','w');
Numsamples=size(v9_int);
for i=1:Numsamples(2)
    fprintf(fid2b,'%d', de2bi(cast(v9_int(i),'uint8'), 8));    %% cast converts double type into 8-bit unsigned integer and de2bi obtains the corresponding 8-bit binary representation
    fprintf(fid2b, '\n');
end
    fclose(fid2b);


a = imread('zero','png');
d2match;
v0 = VEC2;
v0 = v0 / rms(v0);
v0_int = cast(v0, 'uint8');
fid2b = fopen('zero.txt','w');
Numsamples=size(v0_int);
for i=1:Numsamples(2)                                                                                                                                                                                                                                                                                                                                                                                                                      
    fprintf(fid2b,'%d', de2bi(cast(v0_int(i),'uint8'), 8));    %% cast converts double type into 8-bit unsigned integer and de2bi obtains the corresponding 8-bit binary representation
fprintf(fid2b, '\n');
end
    fclose(fid2b);
    
 a = imread('nine_new','bmp');
d2match;
v10 = VEC2;
v10 = v10 / rms(v10);
v10_int = cast(v10, 'uint8');
fid2b = fopen('nine_new.txt','w');
Numsamples=size(v10_int);
for i=1:Numsamples(2)
    fprintf(fid2b,'%d', de2bi(cast(v10_int(i),'uint8'), 8));
    fprintf(fid2b, '\n');%% cast converts double type into 8-bit unsigned integer and de2bi obtains the corresponding 8-bit binary representation
end
    fclose(fid2b);
    
w0 = de2bi(cast(v0_int,'uint8'), 8);
w1 = de2bi(cast(v1_int,'uint8'), 8);
w2 = de2bi(cast(v2_int,'uint8'), 8);
w3 = de2bi(cast(v3_int,'uint8'), 8);
w4 = de2bi(cast(v4_int,'uint8'), 8);
w5 = de2bi(cast(v5_int,'uint8'), 8);
w6 = de2bi(cast(v6_int,'uint8'), 8);
w7 = de2bi(cast(v7_int,'uint8'), 8);
w8 = de2bi(cast(v8_int,'uint8'), 8);
w9 = de2bi(cast(v9_int,'uint8'), 8);
w10 = de2bi(cast(v10_int,'uint8'), 8);

w = [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10];
dlmwrite('database.txt', w, '');


subplot(11,1,1), stem(w0);
subplot(11,1,2), stem(w1);
subplot(11,1,3), stem(w2);
subplot(11,1,4), stem(w3);
subplot(11,1,5), stem(w4);
subplot(11,1,6), stem(w5);
subplot(11,1,7), stem(w6);
subplot(11,1,8), stem(w7);
subplot(11,1,9), stem(w8);
subplot(11,1,10), stem(w9);
subplot(11,1,11), stem(w10);
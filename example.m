% verilen resmi oku
f=imread('image.orig/650.jpg');

%RGB ve HSV degerlerini bul

[N,M]=size(f(:,:,1));
for i=1:N
    for j=1:M
        RGB(i,j,1)=16;
        if f(i,j,1)>31
            RGB(i,j,1)=48;
        end
        if f(i,j,1)>63
            RGB(i,j,1)=80;
        end
        if f(i,j,1)>95
            RGB(i,j,1)=112;
        end
        if f(i,j,1)>127
            RGB(i,j,1)=144;
        end
        if f(i,j,1)>159
            RGB(i,j,1)=176;
        end
        if f(i,j,1)>191
            RGB(i,j,1)=208;
        end
        if f(i,j,1)>223
            RGB(i,j,1)=240;
        end
    end
end
for i=1:N
    for j=1:M
        RGB(i,j,2)=16;
        if f(i,j,2)>31
            RGB(i,j,2)=48;
        end
        if f(i,j,2)>63
            RGB(i,j,2)=80;
        end
        if f(i,j,2)>95
            RGB(i,j,2)=112;
        end
        if f(i,j,2)>127
            RGB(i,j,2)=144;
        end
        if f(i,j,2)>159
            RGB(i,j,2)=176;
        end
        if f(i,j,2)>191
            RGB(i,j,2)=208;
        end
        if f(i,j,2)>223
            RGB(i,j,2)=240;
        end
    end
end
for i=1:N
    for j=1:M
        RGB(i,j,3)=16;
        if f(i,j,3)>31
            RGB(i,j,3)=48;
        end
        if f(i,j,3)>63
            RGB(i,j,3)=80;
        end
        if f(i,j,3)>95
            RGB(i,j,3)=112;
        end
        if f(i,j,3)>127
            RGB(i,j,3)=144;
        end
        if f(i,j,3)>159
            RGB(i,j,3)=176;
        end
        if f(i,j,3)>191
            RGB(i,j,3)=208;
        end
        if f(i,j,3)>223
            RGB(i,j,3)=240;
        end
    end
end

g=uint8(RGB);
%imshow(g);

k=rgb2hsv(f);

for i=1:N
    for j=1:M
        HSV(i,j,1)=0.0275;
        HSV(i,j,2)=0.165;
        HSV(i,j,3)=0.165;
        if k(i,j,2)>0.33
            HSV(i,j,2)=0.495;
        end
        if k(i,j,3)>0.33
            HSV(i,j,3)=0.495;
        end
        if k(i,j,2)>0.66
            HSV(i,j,2)=0.825;
        end
        if k(i,j,3)>0.66
            HSV(i,j,3)=0.825;
        end
        if k(i,j,1)>0.055
            HSV(i,j,1)=0.0825;
        end
        if k(i,j,1)>0.11
            HSV(i,j,1)=0.1375;
        end
        if k(i,j,1)>0.165
            HSV(i,j,1)=0.1925;
        end
        if k(i,j,1)>0.22
            HSV(i,j,1)=0.2475;
        end
        if k(i,j,1)>0.275
            HSV(i,j,1)=0.3025;
        end
        if k(i,j,1)>0.33
            HSV(i,j,1)=0.3575;
        end
        if k(i,j,1)>0.385
            HSV(i,j,1)=0.4125;
        end
        if k(i,j,1)>0.44
            HSV(i,j,1)=0.4675;
        end
        if k(i,j,1)>0.495
            HSV(i,j,1)=0.5225;
        end
        if k(i,j,1)>0.55
            HSV(i,j,1)=0.5775;
        end
        if k(i,j,1)>0.605
            HSV(i,j,1)=0.6325;
        end
        if k(i,j,1)>0.66
            HSV(i,j,1)=0.6875;
        end
        if k(i,j,1)>0.715
            HSV(i,j,1)=0.7425;
        end
        if k(i,j,1)>0.77
            HSV(i,j,1)=0.7975;
        end
        if k(i,j,1)>0.825
            HSV(i,j,1)=0.8525;
        end
        if k(i,j,1)>0.88
            HSV(i,j,1)=0.9075;
        end
        if k(i,j,1)>0.935
            HSV(i,j,1)=0.9625;
        end
    end
end

%imshow(HSV);



rgbH=rgb2gray(g);
h1=imhist(rgbH);

clearvars f g RGB HSV k i j M N rgbH;

f=imread('example/0.jpg');
[N,M]=size(f(:,:,1));
for i=1:N
    for j=1:M
        RGB(i,j,1)=16;
        if f(i,j,1)>31
            RGB(i,j,1)=48;
        end
        if f(i,j,1)>63
            RGB(i,j,1)=80;
        end
        if f(i,j,1)>95
            RGB(i,j,1)=112;
        end
        if f(i,j,1)>127
            RGB(i,j,1)=144;
        end
        if f(i,j,1)>159
            RGB(i,j,1)=176;
        end
        if f(i,j,1)>191
            RGB(i,j,1)=208;
        end
        if f(i,j,1)>223
            RGB(i,j,1)=240;
        end
    end
end
for i=1:N
    for j=1:M
        RGB(i,j,2)=16;
        if f(i,j,2)>31
            RGB(i,j,2)=48;
        end
        if f(i,j,2)>63
            RGB(i,j,2)=80;
        end
        if f(i,j,2)>95
            RGB(i,j,2)=112;
        end
        if f(i,j,2)>127
            RGB(i,j,2)=144;
        end
        if f(i,j,2)>159
            RGB(i,j,2)=176;
        end
        if f(i,j,2)>191
            RGB(i,j,2)=208;
        end
        if f(i,j,2)>223
            RGB(i,j,2)=240;
        end
    end
end
for i=1:N
    for j=1:M
        RGB(i,j,3)=16;
        if f(i,j,3)>31
            RGB(i,j,3)=48;
        end
        if f(i,j,3)>63
            RGB(i,j,3)=80;
        end
        if f(i,j,3)>95
            RGB(i,j,3)=112;
        end
        if f(i,j,3)>127
            RGB(i,j,3)=144;
        end
        if f(i,j,3)>159
            RGB(i,j,3)=176;
        end
        if f(i,j,3)>191
            RGB(i,j,3)=208;
        end
        if f(i,j,3)>223
            RGB(i,j,3)=240;
        end
    end
end

g=uint8(RGB);
rgbH=rgb2gray(g);
h2=imhist(rgbH);
E_distance = sqrt(sum((h1-h2).^2));
min=E_distance;
tmp=0;

clearvars f g RGB HSV k i j M N rgbH E_distance;

for x=1:99;

    a='example/';
    b=num2str(x);
    c='.jpg';
    filename=strcat(a,b,c);


    f=imread(filename);
    [N,M]=size(f(:,:,1));
    for i=1:N
        for j=1:M
            RGB(i,j,1)=16;
            if f(i,j,1)>31
                RGB(i,j,1)=48;
            end
            if f(i,j,1)>63
                RGB(i,j,1)=80;
            end
            if f(i,j,1)>95
                RGB(i,j,1)=112;
            end
            if f(i,j,1)>127
                RGB(i,j,1)=144;
            end
            if f(i,j,1)>159
                RGB(i,j,1)=176;
            end
            if f(i,j,1)>191
                RGB(i,j,1)=208;
            end
            if f(i,j,1)>223
                RGB(i,j,1)=240;
            end
        end
    end
    for i=1:N
        for j=1:M
            RGB(i,j,2)=16;
            if f(i,j,2)>31
                RGB(i,j,2)=48;
            end
            if f(i,j,2)>63
                RGB(i,j,2)=80;
            end
            if f(i,j,2)>95
                RGB(i,j,2)=112;
            end
            if f(i,j,2)>127
                RGB(i,j,2)=144;
            end
            if f(i,j,2)>159
                RGB(i,j,2)=176;
            end
            if f(i,j,2)>191
                RGB(i,j,2)=208;
            end
            if f(i,j,2)>223
                RGB(i,j,2)=240;
            end
        end
    end
    for i=1:N
        for j=1:M
            RGB(i,j,3)=16;
            if f(i,j,3)>31
                RGB(i,j,3)=48;
            end
            if f(i,j,3)>63
                RGB(i,j,3)=80;
            end
            if f(i,j,3)>95
                RGB(i,j,3)=112;
            end
            if f(i,j,3)>127
                RGB(i,j,3)=144;
            end
            if f(i,j,3)>159
                RGB(i,j,3)=176;
            end
            if f(i,j,3)>191
                RGB(i,j,3)=208;
            end
            if f(i,j,3)>223
                RGB(i,j,3)=240;
            end
        end
    end

    g=uint8(RGB);
    rgbH=rgb2gray(g);
    h2=imhist(rgbH);
    E_distance = sqrt(sum((h1-h2).^2));

    if E_distance<min
        min=E_distance;
        tmp=x;
    end
    clearvars f g RGB HSV k i j M N rgbH E_distance;
end

 a='example/';
 b=num2str(tmp);   
 c='.jpg';
 filename=strcat(a,b,c);

 f=imread(filename);
 imshow(f);

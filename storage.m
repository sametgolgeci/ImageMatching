%% <----- RGB Quantization  ----->

%   0-31    -> 000 -> 16
%   32-63   -> 001 -> 48
%   64-95   -> 010 -> 80
%   96-127  -> 011 -> 112
%   128-159 -> 100 -> 144
%   160-191 -> 101 -> 176
%   192-223 -> 110 -> 208
%   224-255 -> 111 -> 240

%% <-----      RGB Kod      ----->

f=imread('example/99.jpg');
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
%imwrite(g,'rgbQuantization/99.jpg');



%% <----- HSV Quantization  ----->

% H             -> [0-1] 18 level kolay hesaplanmasi icin 0.55
% 0 - 0.055     -> 0.0275   0
% 0.056 - 0.110 -> 0.0825   1
% 0.111 - 0.165 -> 0.1375   2
% 0.166 - 0.220 -> 0.1925   3
% 0.221 - 0.275 -> 0.2475   4
% 0.276 - 0.330 -> 0.3025   5
% 0.331 - 0.385 -> 0.3575   6
% 0.386 - 0.440 -> 0.4125   7
% 0.441 - 0.495 -> 0.4675   8
% 0.496 - 0.550 -> 0.5225   9
% 0.551 - 0.605 -> 0.5775   10
% 0.606 - 0.660 -> 0.6325   11
% 0.661 - 0.715 -> 0.6875   12
% 0.716 - 0.770 -> 0.7425   13
% 0.771 - 0.825 -> 0.7975   14
% 0.826 - 0.880 -> 0.8525   15
% 0.881 - 0.935 -> 0.9075   16
% 0.936 - 1     -> 0.9625   17

% S & V         -> [0-1] 3 level 
% 0 - 0.33      -> 0.165    0
% 0.34 - 0.66   -> 0.495    1
% 0.67 - 1      -> 0.825    2

% rgb2hsv kodu ilede degerler direk elde edilebilir.


%% <-----      HSV Kod      ----->

k=rgb2hsv(f);
%imshow(k);

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

%imwrite(HSV,'hsvQuantization/99.jpg');

clearvars f g RGB HSV k i j M N ;



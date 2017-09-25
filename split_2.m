I = imread('1_1.tif');
[width,height] = size(I);

delimiterIn = ' ';
headerlinesIn = 0;
A = importdata('1_1.txt',delimiterIn,headerlinesIn);

NumberOfMinutia = A(1);
B=A(2:end);
C = B.'

for i=1:NumberOfMinutia
    %disp(C((i*3)-2:(i*3)-1));
    x = C((i*3)-2)
    y = C((i*3)-1)
    D=I(x:x+15,y:y+15);
    imwrite(D,[num2str(i) '.png']);
end



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
    D=I(y-7:y+8,x-7:x+8);
    imwrite(D,[num2str(i) '.png']);
    E=imrotate(D,90);
    imwrite(E,[num2str(i) '_rotated_1.png']);
    F=imrotate(E,90);
    imwrite(F,[num2str(i) '_rotated_2.png']);
    G=imrotate(F,90);
    imwrite(G,[num2str(i) '_rotated_3.png']);
end



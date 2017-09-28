i_files=dir('./Split_2/images/*.tif');
m_files=dir('./Split_2/minutiae/*.txt');

[is1,is2]=size(i_files)
[ms1,ms2]=size(m_files)

for q=1:is1

    I = imread(['./Split_2/images/' i_files(q).name]);
    [width,height] = size(I);
    BW = imbinarize(I,'adaptive');
    delimiterIn = ' ';
    headerlinesIn = 0;
    A = importdata(['./Split_2/minutiae/' m_files(q).name],delimiterIn,headerlinesIn);
 
    NumberOfMinutia = A(1);
    B=A(2:end);
    C = B.'
 
    for i=1:NumberOfMinutia
        %disp(C((i*3)-2:(i*3)-1));
        x = C((i*3)-2)
        y = C((i*3)-1)
        D=BW(y-7:y+8,x-7:x+8);
        imwrite(D,[i_files(q).name num2str(i) '.png']);
        E=imrotate(D,90);
        imwrite(E,[i_files(q).name num2str(i) '_rotated_1.png']);
        F=imrotate(E,90);
        imwrite(F,[i_files(q).name num2str(i) '_rotated_2.png']);
        G=imrotate(F,90);
        imwrite(G,[i_files(q).name num2str(i) '_rotated_3.png']);
    end
end
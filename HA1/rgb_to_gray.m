function [Gray_image]=rgb_to_gray(Image)
% Convert image to gray, if not already gray
if size(Image,3)==1
    Gray_image=Image;
    if isa(Gray_image, 'double')
        Gray_image=uint8(Gray_image*255);
    end
else
    Image=double(Image); % Konvertierung f�r double Genauigkeit
    % Jeder Kanal wird mit Faktor multipliziert und aufaddiert
    Gray_image=uint8(Image(:,:,1)*0.299+Image(:,:,2)*0.587+Image(:,:,3)*0.114);
end

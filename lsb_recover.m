



% Lire l'image tatouée
file_name='lsb_watermarked.bmp';
watermarked_image=imread(file_name);

% définir la taille de l'image tatouée
Mw=size(watermarked_image,1);	%Height
Nw=size(watermarked_image,2);	%Width

% Restituer les bits du poids faible de l'image tatouée afin d'extraire les bits de la marque
for ii = 1:Mw
    for jj = 1:Nw
        watermark(ii,jj)=bitget(watermarked_image(ii,jj),1);
    end
end

% Redimensionner la marque
watermark=256*double(watermark);


% Lire la marque originale (en cas d'utilisation de PSNR pour la comparer
% avec celle extraite)
file_name='copyright.bmp';
orig_watermark=imread(file_name);

% scale and display recovered watermark
figure(3)
imshow(watermark,[])
title('Recovered Watermark')
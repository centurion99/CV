% Gruppenmitglieder: Christoph Wittmann, Simon Bilgeri

%F�r die letztendliche Abgabe bitte die Kommentare in den folgenden Zeilen
%enfernen und sicherstellen, dass alle optionalen Parameter über den
%entsprechenden Funktionsaufruf fun('var',value) modifiziert werden können.

%% Bild laden
 Image = imread('szene.jpg');
 IGray = rgb_to_gray(Image);


%% Harris-Merkmale berechnen
 tic
 %Merkmale = harris_detektor(IGray,'do_plot',true);
 Merkmale = harris_detektor(Image,'tau',1000,'do_plot',true,'tile_size',200,'N',30,'segment_length',8,'min_dist',10);
 toc

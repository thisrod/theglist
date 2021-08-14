function saveTightFigure(hfig, outfilename)
% SAVETIGHTFIGURE(OUTFILENAME) Saves the current figure without the white
%   space/margin around it to the file OUTFILENAME. Output file type is
%   determined by the extension of OUTFILENAME. All formats that are
%   supported by MATLAB's "saveas" are supported. 
%
%   SAVETIGHTFIGURE(H, OUTFILENAME) Saves the figure with handle H. 
%
% E Akbas (c) Aug 2010
% * Updated to handle subplots and multiple axes. March 2014. 
% * Rewritten to handle colorbars. Rodney Polkinghorne, January 2017.

if nargin == 0 
    error('Not enough input arguments.')
elseif nargin==1
    outfilename = hfig;
    hfig = gcf;
end

%% Find the things to move and their bounding box.
%% Matlab position format is [left_x bottom_y width height].
%% X increases to the right, and y increases upwards.
%% Boxes and bbox are [-left_x -bottom_y right_x top_y], and increase outwards.

boxes = [];

haxes = findall(hfig, 'type', 'axes');
for i = 1:length(haxes)
    haxes(i).Units = 'centimeters';    % position and extent use different units
    p = haxes(i).Position;
    boxes = [boxes; [-p(1:2) p(1:2)+p(3:4)] + haxes(i).TightInset];
end

hbars = findall(hfig, 'type', 'colorbar');
for i = 1:length(hbars)
    hbars(i).Units = 'centimeters';
    p1 = hbars(i).Position;
    p1(3) = p1(3) + 1.5;   % kludge colorbar width to include ticks
    boxes = [boxes;  [-p1(1:2) p1(1:2)+p1(3:4)]];
    hbars(i).Label.Units = 'centimeters';
    p2 = hbars(i).Label.Extent;
    p2(1:2) = p2(1:2) + p1(1:2);    % extent is relative to colorbar
    boxes = [boxes;  [-p2(1:2) p2(1:2)+p2(3:4)]];
end

moving = [haxes; hbars];
bbox = max(boxes, [], 1);    % boxes can have 1 row

%% Move things to bottom left.
%% Save positions before things move and cause adjacent things to resize.

opos = arrayfun(@(h) h.Position, moving, 'UniformOutput', false);
for i = 1:length(moving)
    moving(i).Position = opos{i} + [bbox(1:2) 0 0];
end

%% resize figure to fit tightly

hfig.Units = 'centimeters';
hfig.Position = [hfig.Position(1:2) bbox(3:4) + bbox(1:2)];

%% set papersize and save

hfig.PaperUnits = 'centimeters';
hfig.PaperSize = hfig.Position(3:4);
hfig.PaperPositionMode = 'manual';
hfig.PaperPosition = [0 0 hfig.PaperSize];
saveas(hfig,outfilename);

% theoretic vergence angle difference
clear;
%%%%% INPUT %%%%%
%(interpupillary distance)
ipd = 62; %peiran
% ipd = 57; %Esteban
%(distance between each two pos. with different depth)
% dist = [50, 100, 150, 200, 250, 300, 350, 400, 450, 500]; % (mm)
dist = 50;
n = 7; %%choose the number of dist.
%%%%%

%%%%% ENVIRONMENT dependant options
dist_camera = 1200; % distance from subject to camera ( Z axe )
%%%%%
[row,col] = size(dist);

for i = 1: col
    number = floor(dist_camera/dist(i));
    z{i} = zeros(number,3);
    for j = 1: number
        z{i}(j,1) = j * dist(i);
        z{i}(j,2) = radtodeg(2 * atan( (ipd/2) / z{i}(j,1)));
    end;
    for j = 1: number
        z{i}(j,1) = j * dist(i);
        z{i}(j,2) = radtodeg(2 * atan( (ipd/2) / z{i}(j,1)));
    end;
    for j = 1:(number-1)
        z{i}(j,3) = z{i}(j,2) - z{i}(j+1,2);
    end;
end;

%%%%% OUTPUT %%%%%
%%vergence angle
%%%%%
figure;
hold on;
title('x: distance from subject to plane  y: vergence angle');
for i = 1:col
    plot(z{i}(:,1),z{i}(:,2),'g',z{i}(:,1),z{i}(:,2),'rx');
end;  
xlabel('distance from subject to plane (mm)');
ylabel('vergence angle (deg.)');
hold off;

%%2=vergence angle diff.
figure;
hold on;
for i = 1:col
    plot(z{i}(:,1),z{i}(:,3),'-bs',...
    'LineWidth',1,...
    'MarkerSize',5,...
    'MarkerEdgeColor',[0,0,0],...
    'MarkerFaceColor',[0.5,0.5,0.5]);
%     plot(z{i}(:,1),z{i}(:,3),'color','b');
end;  
xlabel('distance from subject to plane (mm)');
ylabel('vergence angle diff. (deg.)');
%%ay = gca;
%%ay.YTick = [0:1:30];
%%ax = gca;
%%ax.XTick = [0:50:1200];
hold off;  
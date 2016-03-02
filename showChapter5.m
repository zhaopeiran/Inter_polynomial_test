clear();
close all;

x = [200 250 300 350 400]

y_angle_200 = [1.0190 1.4645 2.7432 3.7898 5.8372];
y_angle_250 = [1.2881 0.9547 2.0374 2.5939 4.2868];
y_angle_300 = [1.9233 1.4401 1.2046 1.7079 2.5358];
y_angle_350 = [1.7615 1.4932 1.3012 0.9992 2.1126];
y_angle_400 = [1.9338 1.9489 1.7343 1.3993 0.9665];


dist_y_200 = [9.4194 13.1342 28.2081 46.3946 83.1855];
dist_y_250 = [11.4064 8.9397 21.9172 33.8458 61.3181];
dist_y_300 = [16.6498 13.7689 12.5851 19.7088 30.1755];
dist_y_350 = [17.2957 14.1243 13.9769 12.1574 25.8937];
dist_y_400 = [16.8176 16.8360 16.6995 15.7016 14.1235];

figure;
hold on;
%title(['Calibration plane']);
color = {[1 .5 1],'r','k','b','g'};
leg = {'at the depth of 200mm', 'at the depth of 250mm', 'at the depth of 300mm','at the depth of 350mm','at the depth of 400mm'};
plot(x, y_angle_200, 'color',color{1});
plot(x, y_angle_250, 'color',color{2});
plot(x, y_angle_300, 'color',color{3});
plot(x, y_angle_350, 'color',color{4});
plot(x, y_angle_400, 'color',color{5});
ax = gca;
ax.XTick = [0:50:400];
legend(leg);
xlabel('Estimation Plane');
ylabel('Angular error (deg.)');
hold off;

figure;
hold on;
%title(['Calibration plane']);
color = {[1 .5 1],'r','k','b','g'};
leg = {'at the depth of 200mm', 'at the depth of 250mm', 'at the depth of 300mm','at the depth of 350mm','at the depth of 400mm'};
plot(x, dist_y_200, 'color',color{1});
plot(x, dist_y_250, 'color',color{2});
plot(x, dist_y_300, 'color',color{3});
plot(x, dist_y_350, 'color',color{4});
plot(x, dist_y_400, 'color',color{5});
ax = gca;
ax.XTick = [0:50:400];
legend(leg);
xlabel('Estimation Plane');
ylabel('Distance error (mm)');
hold off;


y_angle_fakedepth = [0.4344 0.3101 0.2708 0.3125 0.2031];
figure;
hold on;
%title(['Calibration plane']);
color = {[1 .5 1],'r','k','b','g'};
leg = {'average of two eye in 2D estimation'};
plot(x,y_angle_fakedepth,'--ks',...
    'LineWidth',2,...
    'MarkerSize',10,...
    'MarkerEdgeColor','r',...
    'MarkerFaceColor',[0.5,0.5,0.5])
ax = gca;
ax.XTick = [0:50:400];
legend(leg);
xlabel('Cibration Plane');
ylabel('Angular error (deg.)');
hold off;

y_dist_fakedepth = [5.3354 3.9013 3.4630 3.7081 2.4563];
figure;
hold on;
%title(['Calibration plane']);
color = {[1 .5 1],'r','k','b','g'};
leg = {'average of two eye in 2D estimation'};
plot(x,y_dist_fakedepth,'--ks',...
    'LineWidth',2,...
    'MarkerSize',10,...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
ax = gca;
ax.XTick = [0:50:400];
legend(leg);
xlabel('Cibration Plane');
ylabel('Distance error (mm)');
hold off;

figure;
hold on;
%title(['Calibration plane']);
color = {[1 .5 1],'r','k','b','g'};
leg = {'at the depth of 250mm'};
plot(x, y_angle_250,'-rs',...
    'LineWidth',1,...
    'MarkerSize',5,...
    'MarkerEdgeColor',[0,0,0],...
    'MarkerFaceColor',[0.5,0.5,0.5]);
ax = gca;
ax.XTick = [0:50:400];
ay = gca;
ay.YTick = [0:1:10];
legend(leg);
xlabel('Estimation Plane');
ylabel('Angular error (deg.)');
hold off;
 
 
 
 









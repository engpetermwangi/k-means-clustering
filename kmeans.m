function [mynewdata,newcen] = kmeans(mydata,cen)
% function kmeans takes in two dimensional data in the form
% [ x1 x2 x3 x4 ...; y1 y2 y3 y4 ...] and n centroids in the form
% [c1x c1y; c2x c2y; c3x c3y], 
% yields n grouped clusters and
% new n centroids

x = mydata(1,:);
y = mydata(2,:);

m = length(mydata);
n = size(cen,1);

distp = zeros(n,m);
ind = zeros(1,m);

xvals = {};
yvals = {};
newcen = zeros(n,2);
for j = 1:n
    xvals{j,1} = [];
    yvals{j,1} = [];
end
for i = 1:m
    for j = 1:n
        distp(j,i) = sqrt((x(i)-cen(j,1))^2+(y(i)-cen(j,2))^2);
    end
    [~, ind(i)] = min(distp(:,i));
    xvals{ind(i),1} = [xvals{ind(i),1} x(i)];
    yvals{ind(i),1} = [yvals{ind(i),1} y(i)];
end
mynewdata = {xvals; yvals};
for j = 1:n
    newcen(j,1) = mean(mynewdata{1}{j});
    newcen(j,2) = mean(mynewdata{2}{j});
end
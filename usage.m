% Input the two-dimensional data you want to cluster in the form [x1 x2 x3...; y1 y2 y3...]
mydata = 10*rand(2,100);
% Input the number of clusters you'd like t cluster in to
n = 5;
% For the given number of clusters specify how you'd like the clusters to
% appear in the plots, marker shape and color
% For centroids
sty1 = {'sr','sg','sb','sc','sm'};
% For the data
sty2 = {'*r','*g','*b','*c','*m'};
% Let the magic begin
cn = zeros(n,2);
for r = 1:n
    w = randi(length(mydata));
    cn(r,1) = mydata(1,w);
    cn(r,2) = mydata(2,w);
end

figure(1)
plot(mydata(1,:),mydata(2,:),'*'), hold on;
for r = 1:n
    plot(cn(r,1),cn(r,2),sty1{r});
end
title('Input data...try to visually group into clusters');
hold off;

tr = [];
for j = 1:10
    tr = [tr cn];
    error = [];
    for i = 1:length(n)
        [cd,cn] = kmeans(mydata,cn);
        figure(j+1)
        for i = 1:length(cn)
            plot(cn(i,1),cn(i,2),sty1{i}), hold on;
            plot(cd{1}{i},cd{2}{i},sty2{i}), hold on;
        end
        hold off;
        title(sprintf('Iteration %d',j))
    end
end
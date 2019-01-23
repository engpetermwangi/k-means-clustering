# k-means-clustering
An implementation of k means clustering of 2D data in MATLAB.
## kmeans.m
kmeans.m is a MATLAB function that takes in two dimensional data in the form [ x1 x2 x3 x4 ...; y1 y2 y3 y4 ...]
and also takes in n centroids in the form
  [c1x c1y; c2x c2y; c3x c3y; ... ; cnx cny]
and returns n grouped clusters and new n centroids

## usage.m
usage.m demonstrates a use case scenario, 2D data is randomly generated in a given range, centroids are also randomly picked from the data and kmeans.m clustering called for a given number of iterations.

Notably, the clusters form better after each iteration.

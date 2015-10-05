hodar.kmeans.plot <-
function(data, cols, num_clust =15, seed = 9876){
                n = length(names(data))
              dat = hodar.scale.many(data, cols)[,(n+1):(n+length(cols))]
              dat.scale = scale(dat)
               wss <- (nrow(dat.scale)-1)*sum(apply(dat.scale,2,var))
               for (i in 2:num_clust) {
                    set.seed(seed)
                    wss[i] <- sum(kmeans(dat.scale, centers=i)$withinss)
		          }
              plot(1:num_clust, wss, type="b", pch = 5, xlab="# Clusters",
ylab="Total within_ss across clusters")
}

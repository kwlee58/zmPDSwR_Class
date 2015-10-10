hodar.kmeans <-
function(data, cols = c(1:length(names(data))),  nclust = 5, ns=25) {
  n = length(names(data))
  dat = hodar.scale.many(data, cols)[,(n+1):(n+length(cols))]
  dat.scale = scale(dat)
  fit = kmeans(dat.scale, nclust, ns)
  cat("Created the clusters.\n")
  cat("Cluster sizes: " )
  print(fit$size)
  cat("\nCenters of scaled values in each cluster:\n")
  cat("----------------------------------------\n\n")
  print(fit$centers)
  cat("\n\nAverages of original data in each cluster:\n")
  cat("----------------------------------------\n\n")
  print(aggregate(data[, cols], by = list(fit$cluster), mean))
  cat("\nbetween_ss/total_ss: ", fit$betweenss/fit$totss)
  fit
}

hodar.dummy <-
function(data, column_nos) {
	nms = names(data)
	for (col in column_nos) {
		name = paste("_", nms[col], "_", sep = "")
		data = cbind(data, dummy(data[,col], sep = name))
	}
	cat(paste("Converted", length(column_nos), "attribute(s)\n"))	
	data
}

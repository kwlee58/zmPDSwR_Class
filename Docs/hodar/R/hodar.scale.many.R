hodar.scale.many <-
function(dat, column_nos){
	nms = names(dat)
	for (col in column_nos) {
		name = paste(nms[col], "_z", sep="")
		dat[name] = scale(dat[,col])
	}
	cat(paste("Scaled", length(column_nos), "attribute(s)\n"))
	dat
}

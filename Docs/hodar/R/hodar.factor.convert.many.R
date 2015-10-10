hodar.factor.convert.many <-
function(dat, column_nos){
	nms = names(dat)
	for (col in column_nos) {
		dat[,col] = factor(dat[,col])
	}
	cat(paste("Converted", length(column_nos), "attribute(s) to factor\n"))
	dat
}

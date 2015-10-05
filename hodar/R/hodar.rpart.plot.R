hodar.rpart.plot <-
function(model) {
	prp(model, type=2, extra=104, nn=TRUE, fallen.leaves=TRUE, faclen=4, varlen=8, shadow.col="gray")
}

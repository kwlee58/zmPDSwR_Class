hodar.knn.reg.multiple.k <-
function(trg_predictors, val_predictors, trg_target, val_target, start_k, end_k) {
	rms_errors = vector()
	for (k in start_k:end_k) {
		rms_error = hodar.knn.reg(trg_predictors, val_predictors, trg_target, val_target, k)
	  	rms_errors = c(rms_errors, rms_error)
	}
	plot(rms_errors, type = "o", xlab = "k", ylab = "RMSE")

}

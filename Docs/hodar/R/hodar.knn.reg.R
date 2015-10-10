hodar.knn.reg <-
function(trg_predictors, val_predictors, trg_target, val_target, k) {
	res = knn.reg(trg_predictors, val_predictors, trg_target, k, algorithm="brute")
	errors = res$pred - val_target
	rmse = sqrt(sum(errors*errors)/nrow(val_predictors))
	cat(paste("RMSE for k=",toString(k),":", sep=""), rmse, "\n")
	rmse
}

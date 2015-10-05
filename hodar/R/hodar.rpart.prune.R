hodar.rpart.prune <-
function(model) {
	cptab = model$cptable
	xval_errs = cptab[,"xerror"]	
	ind = which.min(xval_errs)
	err_cutoff = cptab[ind, "xerror"] + cptab[ind, "xstd"]
	chosen_cp = max(cptab[cptab[,"xerror"] <= err_cutoff, "CP"])
	mod = prune(model, chosen_cp)
	mod
}

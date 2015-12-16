### Replaces the genric sample function and returns ONE value, if the vector handed over has length=1, and an NA if the vector has length=0 (instead of returning an error).
setGeneric('mySample', function(n, size=1, replace=F) standardGeneric('mySample'))
setMethod(f = 'mySample', signature = c(n='ANY', size='ANY', replace='ANY'), definition = function(n, size=1, replace=F){
	if(length(n)>1)  res <- sample(x = n, size = size, replace = replace) 
	if(length(n)==1) res <- rep(n, times=size)
	if(length(n)==0) res <- NA
	return(res)
})

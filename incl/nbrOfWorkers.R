plan(multiprocess)
nbrOfWorkers()  ## == availableCores()

plan(multiprocess, workers=2)
nbrOfWorkers()  ## == 2

plan(lazy)
nbrOfWorkers()  ## == 1

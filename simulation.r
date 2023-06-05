library(CoSMoS)
library(rhdf5)

fit <- fitVAR(spacepoints = 20, 
              p = 1, 
              margdist = "norm",
              margarg = list(mean = 1.5, sd = sqrt(0.3)), 
              p0 = 0,
              distbounds = c(0, Inf),
              stcsid = "clayton",
              stcsarg = list(scfid = "weibull", tcfid = "weibull", copulaarg = 2,
                             scfarg = list(scale = 40.5, shape = 0.8), 
                             tcfarg = list(scale = 1.3, shape = 0.8) ) )

sim3 <- generateMTS(n = 5000, STmodel = fit)

fit <- fitVAR(spacepoints = 20, 
              p = 1, 
              margdist = "norm",
              margarg = list(mean = 3, sd = sqrt(0.2)), 
              p0 = 0,
              distbounds = c(0, Inf),
              stcsid = "clayton",
              stcsarg = list(scfid = "weibull", tcfid = "weibull", copulaarg = 2,
                             scfarg = list(scale = 29.2, shape = 0.5), 
                             tcfarg = list(scale = 3.6, shape = 0.4) ) )

sim2 <- generateMTS(n = 5000, STmodel = fit)

fit <- fitVAR(spacepoints = 20, 
              p = 1, 
              margdist = "norm",
              margarg = list(mean = 2, sd = sqrt(0.15)), 
              p0 = 0,
              distbounds = c(0, Inf),
              stcsid = "clayton",
              stcsarg = list(scfid = "weibull", tcfid = "weibull", copulaarg = 2,
                             scfarg = list(scale = 18, shape = 0.7), 
                             tcfarg = list(scale = 2.5, shape = 0.9) ) )

sim15 <- generateMTS(n = 5000, STmodel = fit)


fit <- fitVAR(spacepoints = 10, 
              p = 1, 
              margdist = "norm",
              margarg = list(mean = 2, sd = sqrt(0.15)), 
              p0 = 0,
              distbounds = c(0, Inf),
              stcsid = "clayton",
              stcsarg = list(scfid = "weibull", tcfid = "weibull", copulaarg = 2,
                             scfarg = list(scale = 3, shape = 0.7), 
                             tcfarg = list(scale = 3, shape = 0.7) ) )

sim <- generateMTS(n = 40000, STmodel = fit)

h5save(sim, sim15, sim3, sim2, file=file.path("C:", "Users", "kdoore", "OneDrive - DOI", 
                                              "Projects", "HyTEST", "workflow-2023-doore-triple-collocation",
                                              "simulation.hdf5", fsep="/"))
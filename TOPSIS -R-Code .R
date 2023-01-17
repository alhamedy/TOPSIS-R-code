performanceTable = matrix(c(0.16, 2.1, 1,
                            0.14, 2.2, 1,
                            20.73, 12.9, 0,
                            6.42, 4, 1,
                            28.18, 18.4, 0),
                          nrow=5, ncol=3,
                          byrow=TRUE); performanceTable
row.names(performanceTable) = c("N201","N208","N237","N333","N407")
colnames(performanceTable) = c("CPU-Utilization","Memory-Usage","Trust-Value"); performanceTable

weights = c(0.5247, 0.3338, 0.1416)
names(weights) = colnames(performanceTable); weights

criteriaMinMax = c("-","-","+")
names (criteriaMinMax) = colnames(performanceTable); criteriaMinMax

library(topsis)
mod = topsis(performanceTable, weights, criteriaMinMax); mod$score

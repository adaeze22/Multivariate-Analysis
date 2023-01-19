hr_data <- read.csv('HR_comma_sep.csv')
head(hr_data)

hrdata_standardize <- as.data.frame(scale(hr_data[1:8]))
head(hrdata_standardize)


hr_data.mat <- as.matrix(hrdata_standardize)
cov.mat <- cor(hrdata_standardize)
cov.mat

pca <- prcomp(hrdata_standardize,center = T,scale. = T)
summary(pca)

pca

library(ggfortify)
autoplot(pca, data = hr_data, colour = 'Salary')

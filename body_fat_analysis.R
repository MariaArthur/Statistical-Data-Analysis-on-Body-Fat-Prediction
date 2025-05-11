# Part A

# Load libraries
library(ggplot2)
library(dplyr)
library(tidyr)

# Load data
data <- read.csv("C:/Users/Maya/OneDrive/Documents/Uni/Y2 S3/Statistics/Assignment/bodyfat.csv")

# Selected two quantitative variables
density <- data$Density
bodyfat <- data$BodyFat

# Descriptive Statistics
mean_density <- mean(density)
mean_bodyfat <- mean(bodyfat)

median_density <- median(density)
median_bodyfat <- median(bodyfat)

mode_density <- as.numeric(names(sort(-table(density)[1])))
mode_bodyfat <- as.numeric(names(sort(-table(bodyfat)[1])))

sd_density <- sd(density)
sd_bodyfat <- sd(bodyfat)

var_density <- var(density)
var_bodyfat <- var(bodyfat)

range_density1 <- max(density) - min(density)
range_bodyfat1 <- max(bodyfat) - min(bodyfat)

range_density2 <- range(density)
range_bodyfat2 <- range(bodyfat)

quartile_density <- quantile(density)
quartile_bodyfat <- quantile(bodyfat)

IQR_density <- IQR(density)
IQR_bodyfat <- IQR(bodyfat)

cv_density <- (sd_density / mean_density) * 100
cv_bodyfat <- (sd_bodyfat / mean_bodyfat) * 100

# Boxplot for Density
ggplot(data, aes(y = Density)) +
  geom_boxplot(fill = "lightblue", color = "darkblue") +
  labs(title = "Boxplot of Density", y = "Density") +
  theme_minimal()

# Boxplot for BodyFat
ggplot(data, aes(y = BodyFat)) +
  geom_boxplot(fill = "salmon", color = "darkred") +
  labs(title = "Boxplot of BodyFat", y = "BodyFat") +
  theme_minimal()

# Histograms for Density
ggplot(data, aes(x = Density)) +
  geom_histogram(binwidth = 0.01, fill = "skyblue", color = "black") +
  labs(title = "Histogram of Density", x = "Density", y = "Frequency") +
  theme_minimal()

# Histograms for BodyFat
ggplot(data, aes(x = BodyFat)) +
  geom_histogram(binwidth = 1, fill = "salmon", color = "black") +
  labs(title = "Histogram of BodyFat", x = "BodyFat", y = "Frequency") +
  theme_minimal()

# Part B - Normality Testing

# Proportions within 1, 2, 3 standard deviations
within1sd <- mean(density > (mean_density - sd_density) & density < (mean_density + sd_density))
within2sd <- mean(density > (mean_density - 2 * sd_density) & density < (mean_density + 2 * sd_density))
within3sd <- mean(density > (mean_density - 3 * sd_density) & density < (mean_density + 3 * sd_density))

cat("Proportion within 1 SD:", round(within1sd * 100, 2), "%\n")
cat("Proportion within 2 SD:", round(within2sd * 100, 2), "%\n")
cat("Proportion within 3 SD:", round(within3sd * 100, 2), "%\n")

# QQ-plot using base R (ggplot2 equivalent is more complex)
qqnorm(density, main = "QQ-Plot for Density")
qqline(density, col = "blue")

# Shapiro-Wilk Test
shapiro.test(density)

# Part C - Bivariate Analysis

# Scatter plot with regression line using ggplot2
ggplot(data, aes(x = BodyFat, y = Density)) +
  geom_point(color = "darkblue") +
  geom_smooth(method = "lm", color = "red", se = FALSE) +
  labs(title = "Scatterplot of Density vs BodyFat",
       x = "BodyFat (inches)", y = "Density (lbs)") +
  theme_minimal()

# Pearson correlation and R-squared
Sxx <- sum((bodyfat - mean_bodyfat)^2)
Syy <- sum((density - mean_density)^2)
Sxy <- sum((bodyfat - mean_bodyfat) * (density - mean_density))

r_formula <- Sxy / sqrt(Sxx * Syy)
r_squared <- r_formula^2

cat("Pearson correlation coefficient (r):", round(r_formula, 4), "\n")
cat("R-squared:", round(r_squared, 4), "\n")

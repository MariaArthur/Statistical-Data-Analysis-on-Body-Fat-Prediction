# 📦 Statistical Data Analysis on Body Fat Prediction

This repository contains the code and analysis for my **Statistical Data Analysis** assignment, where I explore the relationship between **Body Fat** and **Body Density** using the [Body Fat Prediction Dataset](https://www.kaggle.com/datasets/fedesoriano/body-fat-prediction-dataset) from Kaggle.

In this assignment, I learned **statistical analysis**, and **data visualization** using **R programming**.

---

## ✨ What I Did

### 📊 **Descriptive Statistics**
I calculated the following:
- Mean, Median, Mode
- Standard Deviation, Variance
- Range, Quartiles, Interquartile Range (IQR)
- Coefficient of Variation (CV)

### 🧪 **Normality Testing**
I used the following techniques:
- **Empirical Rule** to check proportions within 1, 2, and 3 standard deviations.
- **QQ-plots** to visually assess normality.
- **Shapiro-Wilk Test** to formally test for normality.

### 🔗 **Bivariate Analysis**
I performed correlation analysis between **Body Fat** and **Density**, including:
- Pearson correlation coefficient  
- Linear regression and R-squared analysis

### 📊 **Data Visualization**
I created the following plots:
- **Boxplots** to visualize the distribution of Density and Body Fat.
- **Histograms** to visualize the frequency distribution.
- **Scatter Plots** with regression lines to explore the relationship between Density and Body Fat.

---

## 📈 **Key Insights**
- ✅ **Consistency:**  
  Density is more consistent than Body Fat based on a lower **Coefficient of Variation (CV)**.
  
- 🔁 **Strong Negative Correlation:**  
  A strong inverse relationship between Body Fat and Density was found, with **r = -0.9878**.

- 📉 **Normal Distribution:**  
  The **Density** data follows a normal distribution, as confirmed by the **Shapiro-Wilk Test** *(p-value = 0.6571)*.

---

## 🛠️ **Tools and Technologies**
- **Programming Language:**  
  R

- **Libraries Used:**  
  - `ggplot2`
  - `dplyr`
  - `tidyr`

- **Data Source:**  
  [Body Fat Prediction Dataset – Kaggle](https://www.kaggle.com/datasets/fedesoriano/body-fat-prediction-dataset)

---

## 📄 **Files in the Repository**
- `analysis.R`: R script containing all code for analysis.
- `bodyfat.csv`: The dataset used for the analysis.
- `plots/`: Folder containing the output plots (boxplots, histograms, scatter plots).

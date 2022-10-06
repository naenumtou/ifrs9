# ✍🏻 Probability of Default (PD) Models

![Google Colab](https://img.shields.io/badge/Editor-Google%20Colab-brightgreen)
![Python](https://img.shields.io/badge/Code-Python-blue)

![image](https://user-images.githubusercontent.com/66057952/194216972-eee7781b-c050-4a85-af12-090671b2b281.png)

## The IFRS 9 Requirements
Although IFRS 9 Standard does not specifically recognize usage of PD models, meaning it does not explicitly lists requirements for PD models. Refer to the **paragraph 5.5.17** states that:

"An entity shall measure expected credit losses of a financial instrument in a way that reflects:
- an unbiased and probability-weighted amount that is determined by evaluating a range of possible outcomes;
- the time value of money; and
- Reasonable and supportable information that is available without undue cost or effort at the reporting date about past events, current conditions and forecasts of future economic conditions."

In addition, the standard requires that Expected Credit Loss (ECL) is measured using a **PIT PD** measure and it contains forward-looking (FWL) macroeconomic expectations. Therefore, in case that any considered existing models are TTC and/or contain FWL expectations, it is necessary to adjust these models to be compliant with IFRS 9 requirements.

## The view of PD Models
There are three components related to the PD Models, which are included **unbias PD**, **forward-looking PD** and **lifetime PD**. All components can be developed by several methodologies and it will cover in this repository. Many risk analysts consider Basel 12-month PD model as a starting point for IFRS 9 PD model. However, the important factors that should be considered for building IFRS 9 PD Models are listed below:

* **Point-in-time (PIT) PD**: As per IFRS 9 there should be the point-in-time (PIT) PD, which means consideration of both current macroeconomics factors and risk attributes of borrower. The idea is to incorporate current macroeconomics conditions while calculating the PD. In essence PIT PD moves up as macro-economic conditions deteriorate and moves down as macroeconomics conditions improve.
* **Best Estimate PD**: The PD estimates should be unbiased which means exclusion of optimism or conservatism _(i.e. downturn)_ in the estimation.
* **Monitoring**: It is required to monitor PD Models on a continuous basis and perform recalibration when necessary required. The PD monitoring reports are essential.

## PD Models
### Unbias
* `survivalAnalysis.ipynb`: The survival analysis model is using non-parametric model to build 12-Month unbias and lifetime PD.
* `chainLadder.ipynb`: The Filled triangle curves with Chain Ladder approach.
* `gammaFitting.ipynb`: The extrapolation curves with Gamma fitting. This is to extend the lifetime curves for longer periods.
* `PDCalibration.ipynb`: The PD Calibration with Central Tendency and PD Scalar. This is to carlibrate the lifetime curves for a given time (value).
* `limitPDCurves.ipynb`: The method to overcome PD Curves with data limitation (Shorter period).
* `transitionMatrix.ipynb`: The transition matrix model is using for 12-Month unbias and lifetime PD.
* `externalMatrix.ipynb`: The transition matrix model for low default portfolios. This is used external rating such as Moody's rating to calibrate observed transition matrix.
* `NRTMatrix.ipynb`: The transition matrix model for Non-Retail portfolios. This is used the reference row of transition matrix to overcome unstable count observation, which is usually occurred for Non-Retail portfolios.
* `distributionSelection.ipynb`: The lifetime curves distribution selection. The process of find the most fit curves from several statistic distribution prior the final conclusion.
* `NelsonSiegelCurve.ipynb`: The fitting curve (extrapolation) of lifetime Marginal PD using Nelson-Seigel method.

### Forward-looking
#### Variable
* `APIBOTMacro.ipynb.ipynb`: The usage of API from BOT (Bank of Thailand) to request statistical data such as macroeconomics variables that will be used for forward-looking model.
* `cci.ipynb`: The Credit Cycle Index (CCI) for forward-looking model. This is the approach uses to create reference values both of CCI and Rho for transition matrix model.
* `timeSeriesStationary.ipynb`: The time series with stationary analysis for macroeconomics data. This is not limited to only IFRS 9 Model but is applicable with other time series model.
* `simplifiedCCI.ipynb`: The simplified version of Credit Cycle Index (CCI). This is the approach uses to find the optimize Rho (Only Rho) for conditional transition matrix.
* `BOTNPLData.ipynb`: The usage of NPL Ratio data from the Bank of Thailand (BOT). This is the process of data preparation prior using the file.
#### Univariate analysis
* `univariateAnalysis1.ipynb`: The features selection by univariate analysis version 1, which is simple and straightforward. This is also applicable to other regression problems.
#### Multivariate analysis
* `timeSeriesKMeans.ipynb`: The time series K-Means, applied cluster analysis with time series data.
* `SilhouetteAnalysis.ipynb`: The Silhouette analysis to find the optimal number of clusters with K-Means.
* `PROCVARCLUS.ipynb`: Using the `PROC VARCLUS` in SAS Programming in python to perform time series clustering.
* `allCombinations.ipynb`: Create all possible combination with variable tpyes and clustering information as the conditions.
* `clusterSelection.ipynb`: The selection based on condition apply with unpreferable variables.
* `LassoSelection.ipynb`: The features selection using Lasso regression model.
#### Multiple linear regression
* `normalityTest.ipynb`: The linear regression model assumption tested for residual normality.
* `heteroTest.ipynb`: The linear regression model assumption tested for model heteroscedasticity.
* `autoCorrTest.ipynb`: The linear regression model assumption tested for residual autocorrelation.
* `multicolTest.ipynb`: The linear regression model assumption tested for independence variables multicollinearity.
* `CooksDStudent.ipynb`: The outlier analysis of regression model using Cook's Distance and Studentised Residual.
* `HACAdjustment.ipynb`: The Heteroskedasticity and Autocorrelation Consistent (HAC) adjustment using Newey–West estimator.
### Lifetime
* `lifetimeCalibration.ipynb`: The lifetime calibration using `fsolve` scipy function to minimise to error between overall level and risk grade level.
* `vasicekTransitionMatrix.ipynb`: The Vasicek model to create lifetime PD Term structure by using transition matrix and incorporating the forward-looking information by Vasicek single factor approach.
* `vasicekBaselRho.ipynb`: The Vasicek model to create lifetime PD Term structure by using transition matrix and incorporating the forward-looking information by Vasicek single factor approach. The Basel asset correlation or rho is considered in the model rather than assuming some values.
* `BayesCalibration.ipynb`: The lifetime calibration using Bayes formula compared to the scaling method. 

## PD Validation
### Unbias
* N/A

### Forward-looking
* N/A

### Lifetime
* N/A

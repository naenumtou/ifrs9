# ✍🏻 Probability of Default (PD) Model 

![Google Colab](https://img.shields.io/badge/Editor-Google%20Colab-brightgreen)
![Python](https://img.shields.io/badge/Code-Python-blue)

There are three components related to the PD Model, which is contained unbias PD, forward-looking PD and lifetime PD. All components can be developed by several methodologies and it will cover in this repository.

<p align="center">
  <img src="https://www.debt.org/wp-content/uploads/2012/07/Default-on-Loans.jpg" alt="ifr9 pd model"/>
</p>

## The view of PD Model

Many risk analysts consider Basel 12-month PD model as a starting point for IFRS 9 PD model. But we need to consider factors which are important for building IFRS 9 12-month PD Model.

* Point-in-time (PIT) PD : As per IFRS 9 there should be point-in-time (PIT) PD which means consideration of both current macro-economic factors and risk attributes of borrower. Idea is to incorporate current macro economic conditions while calculating PD. In essence PIT PD moves up as macro-economic conditions deteriorate and moves down as macro-economic conditions improve.
* Best Estimate PD : PD estimates should be unbiased which means exclusion of optimism or conservatism (i.e. downturn) in estimation
* It is required to monitor PDs on a continuous basis and perform recalibration when required. PD monitoring reports are essential.

## PD Models
### Unbias
* `survivalAnalysis.ipynb`: The survival analysis model is using non-parametric model to build 12-Month unbias and lifetime PD.
* `chainLadder.ipynb`: The Filled triangle curves with Chain Ladder approach.
* `gammaFitting.ipynb`: The extrapolation curves with Gamma fitting. This is to extend the lifetime curves for longer periods.
* `PDCalibration.ipynb`: The PD Calibration with Central Tendency and PD Scalar. This is to carlibrate the lifetime curves for a given time (value).
* `limitPDCurves.ipynb`: The method to overcome PD Curves with data limitation (Shorter period).
* `transitionMatrix.ipynb`: The transition matrix model is using for 12-Month unbias and lifetime PD.
* `externalMatrix.ipynb`: The transition matrix model for low default portfolios. This is used external rating such as Moody's rating to calibrate observed transition matrix.
* `NRTMatrix.ipynb`: The Ttansition matrix model for Non-Retail portfolios. This is used the reference row of transition matrix to overcome unstable count observation, which is usually occurred for Non-Retail portfolios.

### Forward-looking
#### Variable
* `APIBOTMacro.ipynb.ipynb`: The usage of API from BOT (Bank of Thailand) to request statistical data such as macroeconomics variables that will be used for forward-looking model.
* `cci.ipynb`: The Credit Cycle Index (CCI) for forward-looking model. This is the approach use to create reference values for transition matrix model.
* `timeSeriesStationary.ipynb`: The time series with stationary analysis for macroeconomics data. This is not limited to only IFRS 9 Model but is applicable with other time series model.
#### Univariate analysis
* `univariateAnalysis1.ipynb`: The features selection by univariate analysis version 1, which is simple and straightforward. This is also applicable to other regression problems.
#### Multivariate analysis
* `timeSeriesKMeans.ipynb`: The time series K-Means, applied cluster analysis with time series data.
#### Multivariate regression
* `normalityTest.ipynb`: The linear regression model assumption tested for residual normality.
* `heteroTest.ipynb`: The linear regression model assumption tested for model heteroscedasticity.
* `autoCorrTest.ipynb`: The linear regression model assumption tested for residual autocorrelation.
* `multicolTest.ipynb`: The linear regression model assumption tested for independence variables multicollinearity.
### Lifetime
* N/A

## PD Validation
### Unbias
* N/A

### Forward-looking
* N/A

### Lifetime
* N/A

# ✍🏻 Probability of Default (PD) Model 

![](https://img.shields.io/badge/Editor-Google%20Colab-brightgreen)
![](https://img.shields.io/badge/Code-Python-blue)

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
* Survival Analysis Model ***(survivalAnalysis.ipynb)***
* Fill triangle curves with Chain Ladder ***(chainLadder.ipynb)***
* Extrapolation curves with Gamma fitting ***(gammaFitting.ipynb)***
* PD Calibration with Central Tendency and PD Scalar ***(PDCalibration.ipynb)***
* Create PD Curves with data limitation ***(limitPDCurves.ipynb)***

### Forward-looking
#### Variable
* Credit Cycle Index for forward-looking model ***(cci.ipynb)***
* Time series with stationary analysis for macroeconomics data ***(timeSeriesStationary.ipynb)***
#### Univariate analysis
* N/A
#### Multivariate analysis
* N/A
#### Multivariate regression
* N/A

### Lifetime
* N/A

## PD Validation
### Unbias
* N/A

### Forward-looking
* N/A

### Lifetime
* N/A

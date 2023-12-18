# 📊 The dataset used for PD Model development 

![csv](https://img.shields.io/badge/Tools-csv-brightgreen)
![SQL](https://img.shields.io/badge/Tools-SQL-brightgreen)
![Parquet](https://img.shields.io/badge/Tools-parquet-brightgreen)

<p align="center">
  <img src="https://github.com/naenumtou/ifrs9/assets/66057952/e9d7e047-868d-4c63-b743-74c8c0845011" alt="ifrs9 data for PD model"/>
</p>

Dataset used for developing PD Model is monthly transaction data. It contained payment proflie of customers for the loan. In this repository is not contained all transaction file due to limitation on space. The files are only summarised level such as count of observation.

## Datasets
| File name | Description |
| --- | --- |
| PDCurves.csv | The actual PD Curves observed from historical data of survival analysis model |
| monthlyODR.csv | The Observe Default Rate (ODR) from historical data in 12-Months performance window |
| PDYear.csv | The PD Curves with Chain Ladder development factor by years |
| PDRiskGrade.csv | The weighted average of PD Curves by risk grades |
| extrapolateByRisk.csv | The extrapolated PD Curves using Gamma fitting by risk grade |
| averageExtrapolate.csv | The weighted average of extrapolated PD Curves by segment |
| PDCalibrationCT.csv | The PD Curves after calibration by risk grades using Central Dentency |
| PDCalibrationScalar.csv | The PD Curves after calibration by risk grades using scalar |
| averageCalibrationCT.csv | The weighted average of PD Curves after calibration by segment using Central Dentency |
| averageCalibrationScalar.csv | The weighted average of PD Curves after calibration by segment using scalar |
| refPD.csv | The external reference curves from Moody's rating |
| cci.csv | The count of observation to create transition matrix |
| macroData.csv | The raw macroeconomics data |
| macroSign.csv | The raw macroeconomics intuitive sign |
| macroTransformed.csv | The transformed macroeconomics data |
| macroSignTransformed.csv | The transformed macroeconomics sign |
| stationaryResults.csv | The stationary results of macroeconomic variables |
| lifetimeMatrix.csv | The cumulative lifetime PD from transition matrix |
| monthlyODRAging.csv | The Observe Default Rate (ODR) from historical data in 12-Months performance window by risk grade |
| transitionMoody.csv | The transition matrix from Moody's external rating |
| lowDefaultRating.csv | The low default portfolio's distribution |
| ratingMatrix.csv | The count rating observation for Non-Retail portfolios |
| APIBOTStatistic.xlsx | The API Keys for all statistic information (Macroeconomics variables) from BOT (Bank of Thailand) |
| bankNPLRatio.csv | The NPL Ratio by quarterly basis of banking and financial sectors from BOT |
| clusterVarClusResult.csv | The result of time series clustering using `PROC VARCLUS` (SAS Programming) in python |
| matrixAdjustment.csv | The transition matrix adjustment with counting number of observations |
| BOTNPLDataRaw.csv | The RAW NPL Ratio data from BOT (Bank of Thailand) |
| cleanBOTNPLData.csv | The clean NPL Ratio data from BOT (Bank of Thailand) |
| varClusResult.csv | The result of time series clustering using `PROC VARCLUS` (SAS Programming) in python without selection processes |
| varClusConditionResult.csv | The result of time series clustering using `PROC VARCLUS` (SAS Programming) in python with conditional selection processes |
| MEVTransformedUpdate.csv | The transformed macroeconomics data updated to recent period |
| exampleMatrix.csv | The example of tranistion matrix with issues |
| FIN.DATA.csv | The financial statement data for KMV Model |
| PRICE.DATA.csv | The historical stock price data for KMV Model |
| CorporateODR.csv | The monthly historical ODR of corporate portfolio for PD Simulation |
| SmoothingRawMatrix.csv | The count observation for smoothing migration matrix |


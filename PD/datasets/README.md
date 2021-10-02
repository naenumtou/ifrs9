# 📊 The dataset used for PD Model development 

![](https://img.shields.io/badge/Tools-csv-brightgreen)
![](https://img.shields.io/badge/Tools-SQL-brightgreen)
![](https://img.shields.io/badge/Tools-parquet-brightgreen)

<p align="center">
  <img src="https://www.pngkey.com/png/detail/27-273710_financial-technology-financial-technology-transparent.png" alt="ifrs9 data for model"/>
</p>

Dataset used for developing PD Model is monthly transaction data. It contained payment proflie of customers for the loan. In this repository is not contained all transaction file due to limitation on space. The files are only summarised level such as count of observation.

## Datasets
3. ***PDYear.csv***: The PD Curves with Chain Ladder development factor by years
4. ***PDRiskGrade.csv***: The weighted average of PD Curves by risk grades
5. ***extrapolateByRisk.csv***: The extrapolated PD Curves using Gamma fitting by risk grade
6. ***averageExtrapolate.csv***: The weighted average of extrapolated PD Curves by segment
7. ***PDCalibrationCT.csv***:
8. ***PDCalibrationScalar.csv***:
9. ***averageCalibrationCT.csv***:
10.  ***averageCalibrationScalar.csv***:


| File name | Description |
| --- | --- |
| PDCurves.csv | The actual PD Curves observed from historical data of survival analysis model |
| monthlyODR.csv | The Observe Default Rate (DOR) from historical data in 12-Months performance window |


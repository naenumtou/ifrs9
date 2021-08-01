# IFRS 9 Impairment model ✍🏻

![](https://img.shields.io/badge/Editor-Google%20Colab-brightgreen)
![](https://img.shields.io/badge/Code-Python-blue)

<p align="center">
  <img src="https://www.meritglobaltraining.com/images/ifrs-9-course.jpg" alt="ifrs9 impairment model"/>
</p>

The IFRS 9 requires recognition of impairment losses on a forward-looking basis, which means that impairment loss is recognised before the occurrence of any credit event. These impairment losses are referred to as expected credit losses ('ECL').

## The general approach

The general IFRS 9 Approach to impairment follows a three stages model (sometimes referred to as three-bucket model):

<p align="center">
  <img src="https://www.bankinghub.eu/wp-content/uploads/sites/2/2014/10/IFRS-9-english_2.png" alt="ifrs 9 three-buckets model"/>
</p>

As it can be seen that under the general approach, an entity recognises expected credit losses for all financial assets. The ECL can be 12-month ECL or lifetime ECL depending on whether there was a significant increase in credit risk (IFRS 9.5.5.3).

1. 12-month ECLs (Stage 1): It is applied to all the loans since initial recognition as long as there is low credit risk
2. Lifetime ECLs (Stages 2 and 3): It is applied when a significant increase in credit risk has taken place

## The Measurement of expected credit losses (ECL)

### Definition of credit losses
Credit loss is the difference between all contractual cash flows that are due to an entity in accordance with the contract and all the cash flows that the entity expects to receive, discounted at the original effective interest rate (EIR) or credit-adjusted EIR (IFRS 9.Appendix A).

### Model components
* PD is a probability of default model to estimate potential loss that likely to occur in given time period.
* LGD is a loss given default to calculate occured loss that the loan cannot be paid.
* EAD is a exposure at default to calculate outstanding balance of the loan having in default stage.

### The calculation workflow

<p align="center">
  <img src="https://www.moodysanalytics.com/-/media/web-assets/publications/risk-perspectives/edition-images/v-data-management/articles/2-4-ifrs-9-expected-loss-impairment-model/fig-2-ifrs-9-workflow.png?modified=20150515184530" alt="ifrs 9 calculation workflow"/>
</p>

From this data, the Bank can implement models on PD, LGD, and EAD, combining external data such as macroeconomic forecasts to get 12-month and lifetime expected loss forecasts (discounted at current interest rates or EIR).

Then, based on exposure and counterparty characteristics, allocation between stages 1, 2, and 3 sends the final EL provision to accounting systems. An example of such a calculation process would include:
* The interest rate of each loan is used to calculate the discount rate.
* EAD is calculated monthly for the next 360 months, based on the amortization of the contractual balance of the loan, plus up to six months of arrear payments.
The PD is derived from a default curve calibrated for the portfolio. The age of the loan will give the starting point on the default curve. This PD is then scaled to the loan, using the Basel point-in-time PD.
The LGD is derived from the loan-to-value (LTV) using a lookup table. The LTV uses the value of the property covering the loan and takes into account EAD from all other loans eventually covered by this property.
The expected loss for each of the next 360 months is the product EAD*PD*LGD divided by the discount rate.h
The EL is then summed up for the first 12 months and for the full life of the loan. These two figures can then be used by accounting systems.

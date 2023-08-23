# ✍🏻 Loss Given Default (LGD) Models

![Google Colab](https://img.shields.io/badge/Editor-Google%20Colab-brightgreen)
![Python](https://img.shields.io/badge/Code-Python-blue)

<p align="center">
  <img src="https://github.com/naenumtou/ifrs9/assets/66057952/d9d1d35e-b3d7-4f34-a348-f7da961e5fc2" alt="ifrs 9 LGD Model"/>
</p>

## The IFRS 9 Requirements
Although IFRS 9 Standard does not specifically recognize usage of ECL Models, meaning it does not explicitly lists requirements for ECL Models. Refer to the **paragraph 5.5.17** states that:

"An entity shall measure expected credit losses of a financial instrument in a way that reflects:
- an unbiased and probability-weighted amount that is determined by evaluating a range of possible outcomes;
- the time value of money; and
- Reasonable and supportable information that is available without undue cost or effort at the reporting date about past events, current conditions and forecasts of future economic conditions."

## The view of LGD Models
There are three components related to the LGD Models, which are included **unbias LGD**, **forward-looking LGD** and **lifetime LGD**. All components can be developed by several methodologies and it will cover in this repository. Many risk analysts consider Basel LGD model as a starting point for IFRS 9 LGD model. However, the important factors that should be considered for building IFRS 9 LGD Models are listed below:

* **Unbias LGD**: As per IFRS 9 there should be the unbias concept, which means any floors or downturn must be removed from the calculation.
* **Direct Cost**: The estimation LGD especially from regulartory (Basel) LGD might be considered both of indirect cost and direct cost. However, as per IFRS 9 Requirment, the indirect cost should not be included in the LGD Model.
* **Discounting**: It is required to discount the income cashflow considering their expected timing using EIR.

## LGD Models
### Unbias
* `LGDFunctionModel.ipynb`: The unbias LGD Model developed using function of EIR(s).

### Forward-looking
* N/A

### Lifetime
* N/A

## LGD Validation
### Unbias
* N/A

### Forward-looking
* N/A

### Lifetime
* N/A

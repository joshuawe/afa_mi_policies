

<p align="center">
 <img width="400px" src="AFA_sepsis_visualization.png" align="center" alt="ICU Visualization" />
 <h1>Comparing different AFA policies for predicting Sepsis in the ICU</h1>
</p>
   
> ---------------------------------------------
> Note:  
>   
> Careful, Work in Progress!
>
> ---------------------------------------------


  
- Active Feature Acquisition (AFA) ... what is that?  
- AFA under missingness can be biased
- How to evaluate AFA under missingness? -> We can use multiple imputation, see my thesis
- Now with fully observed data, we compare different AFA policies on a medical dataset: MIMIC [1], a dataset containing Electronic Health Data (EHR) for patients in the ICU

**Keywords:** Machine Learning, Missing Data, Multiple Imputation, Active Feature Acquisition, Gaussian Processes

# Methods

### Multiple Imputation

In order to [impute](https://en.wikipedia.org/wiki/Imputation_(statistics)) (=fill in) the missing values in the MIMIC dataset, we use a multi-task Gaussian Process (GP) [2] using the GPytorch library [3]. 
Instead of doing single imputation (e.g. mean imputation or last observation carried forward), the GP helps us model the uncertainty of a value to be predicted. Hence, we can sample multiple times for every missing data point. This way - using Multiple Imputation - we can train subsequent prediction models on commonly and less commonly observed values in the missing cases.

### Active Featuer Acquisition (AFA)

For AFA we train two models: 1) a predictor and 2) a decision agent. 
The predictor has to fulfill a prediction task - in our case correctly predicting the future onset of Sepsis of a patient in the ICU.
However, initially the information received is sparse (the data is only partially observed). Hence, the decision agent has to choose which of the remaining hidden features to request and uncover - similar to a doctor chosing which labtest should be performed next.
The acquired information should ideally support the predictor in its taks. At the same time, each acquisition infers a certain amount of costs. At the same time any missclassification by the predictor also adds to the costs produced by the AFA system.
Depending on the decision agent's policy the performance of the predictor may change as well as the over all costs of the AFA system.


# Data
MIMIC IV is a freely accessible ICU dataset containing Electronic Health Records about patients such as their vital signs, laboratory tests, medications and more. The cohort of the dataset is situated in the US.  
Preprocessing was provided by [4].   
**What are further adjustments / preprocessing steps that were done?** 
+ shortening the max. time series lengths?


# Sources
0. Project image  by [DALL-E 3](https://openai.com/dall-e-3), 17th October 2023, prompt: Streamlined schematic in a 7:3 ratio. Leftmost, a patient in bed with minimal graphs above showing medical data. Centered, an uncomplicated robot face inside a circular boundary symbolizes AI. To its right, two boxes; top for diagnosis and bottom for lab tests. Simple arrows connect these three primary sections.
1. [Johnson, A., Bulgarelli, L., Pollard, T., Horng, S., Celi, L. A., & Mark, R. (2023). MIMIC-IV (version 2.2). PhysioNet](https://doi.org/10.13026/6mm1-ek67)
2. [Edwin V. Bonilla, Kian Ming A. Chai, and Christopher K. I. Williams. 2007. Multi-task Gaussian Process prediction. In Proceedings of the 20th International Conference on Neural Information Processing Systems (NIPS'07). Curran Associates Inc., Red Hook, NY, USA, 153–160.](https://dl.acm.org/doi/abs/10.5555/2981562.2981582)
3. [Gardner, Jacob R., Geoff Pleiss, David Bindel, Kilian Q. Weinberger, and Andrew Gordon Wilson. "GPyTorch: Blackbox Matrix-Matrix Gaussian Process Inference with GPU Acceleration." In Advances in Neural Information Processing Systems (2018).](https://arxiv.org/abs/1809.11165), Link to [website](https://gpytorch.ai/)
4. [Rockenschaub, P., Hilbert, A., Kossen, T., von Dincklage, F., Madai, V. I., & Frey, D. (2023). Generalisability of deep learning-based early warning in the intensive care unit: a retrospective empirical evaluation. arXiv preprint arXiv:2303.15354.](https://arxiv.org/abs/2303.15354)

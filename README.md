# ME494 HW1: aircraft dynamics identification  

## Description  
This repository contains the first homework assignment for **ME494** on system identification of aircraft dynamics. The homework involves parameter estimation from aircraft roll rate data, nonlinear model fitting, and ordinary least squares regression for noisy systems. The repository includes MATLAB scripts, a dataset, and a PDF containing problem descriptions.  

## Files Included  

### **Part 1: Aircraft Roll Rate Parameter Estimation**  
- **File:** SID_HW1_1.m  
- **File:** hw1_timber.mat  
- **Topics Covered:**  
  - Aircraft system identification  
  - Estimation of roll rate dynamics  
  - Least squares parameter estimation  
  - Plotting measured vs. modeled roll rate  

### **Part 2: Nonlinear Model Approximation**  
- **File:** SID_HW1_2.m  
- **Topics Covered:**  
  - Nonlinear regression using polynomial expansion  
  - Estimating coefficients for varying model orders  
  - Plotting model output for different approximations  
  
### **Part 3: Noisy System Identification with OLS**  
- **File:** SID_HW1_3.m  
- **Topics Covered:**  
  - Estimating system parameters using ordinary least squares  
  - Generating noisy datasets  
  - Running Monte Carlo simulations for parameter estimation  
  - Visualizing parameter distributions  

### **Homework Assignment Document**  
- **File:** SID_HW1_2022.pdf  
- **Contents:**  
  - Problem descriptions and equations  
  - Step-by-step requirements for MATLAB implementation  
  - Expected outputs and discussion prompts  

## Installation  
Ensure MATLAB is installed before running the scripts. No additional toolboxes are required.  

## Usage  

### **Running the Aircraft Roll Rate Parameter Estimation**  
1. Open MATLAB.  
2. Load `hw1_timber.mat` into the workspace.  
3. Run the script:  
   ```SID_HW1_1```  
4. View the estimated parameters and the plotted roll rate comparison.  

### **Executing the Nonlinear Model Approximation**  
1. Open MATLAB.  
2. Run the script:  
   ```SID_HW1_2```  
3. Observe the approximation for different polynomial model orders.  

### **Running the Noisy System Identification Simulation**  
1. Open MATLAB.  
2. Run the script:  
   ```SID_HW1_3```  
3. Analyze the estimated parameter distributions from 100000 trials.  

## Example Output  

- **Aircraft Roll Rate Estimation**  
  - Estimated Parameters: `[A, B, C]` values computed using least squares  
  - Comparison plot of measured vs. modeled roll rate  

- **Nonlinear Model Approximation**  
  - True vs. approximated output curves for different model orders  

- **OLS-Based Parameter Estimation**  
  - Final estimated values for `a` and `b` after 100000 iterations  
  - Scatter plot showing parameter distributions for two experimental setups  

## Contributions  
This repository is intended for academic research and educational use. Contributions and modifications are welcome.  

## License  
This project is open for research and educational purposes.  

---  
**Author:** Alexander Dowell  


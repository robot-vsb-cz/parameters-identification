## Robot Parameters Indentification

[![DOI](https://img.shields.io/badge/doi-10.3390%2Fapp10217679-green)](https://doi.org/10.3390/app10217679)
[![OA](https://img.shields.io/badge/MDPI%20Applied%20Sciences-Open%20Access-orange?style=social&logo=open-access)](https://doi.org/10.3390/app10217679)
![GitHub](https://img.shields.io/github/license/robot-vsb-cz/parameters-identification)

This repository is an attachment for the paper **Camera-Based Method for Identification of the Layout of a Robotic Workcell**:
> Link to the paper: [doi.org/10.3390/app10217679](https://doi.org/10.3390/app10217679)

### Instructions
![Made for Matlab](https://img.shields.io/badge/made%20for-Matlab-green)
There are 2 scripts and 5 datasets included for testing. The first step is to determine transformation matrix symbolically based on MDH parameters and to define its Jacobian for parameters that are going to be identified. Please use the script 1_symbolic_transform.m for this. 

Once you obtain the Tbe transformation and J matrix, insert them in the 2_identification.m script and provide your datasets.

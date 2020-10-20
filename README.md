## Robot Parameters Indentification

![Made for Matlab](https://img.shields.io/badge/made%20for-Matlab-green)
![DOI](https://img.shields.io/badge/doi-xxx.%2Fx.xxxxxxxxx-green)
![GitHub last commit](https://img.shields.io/github/last-commit/robot-vsb-cz/parameters-identification) 
![GitHub](https://img.shields.io/github/license/robot-vsb-cz/parameters-identification)

This repository is an attachment for the paper Camera Based Method for Identification of the Layout of a Robotic Workcell:
> doi, Optical Method for Identification of the Layout of a Robotic Workcell

### Instructions
There are 2 scripts and 4 datasets included. The first step is to determine transformation matrix symbolically based on MDH parameters and to define its Jacobian for parameters that are going to be identified. Please use the script 1_symbolic_transform.m for this. 

Once you obtain the Tbe transformation and J matrix, insert them in the 2_identification.m script and provide your datasets.

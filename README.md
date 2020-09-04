# House Price
## Introduction
This project is a university-level project by using Multiple Linear Regression (MLR) with higher-order term to predict the future house price in Canada. The training data of this project is taken from the collection in the Statistic Canada.
## Programming Language
This project using R 4.0.2 and R studio 1.3.1056 as the programing language and versions for all the caculation. The function that used for model selection is "step(nullmodel,scope=list(upper=fullmodel),direction="both")" with stepwise selection. The function for generating MLR is "lm" with auto-generation.
## File Description 
training.csv contains the training data for this MLR prediction preprocessing.r contains the source file for training data  
preprocessing.r This file includes the transformation of categorical data, selection of outliers, and fixing the missing data in some predictors.  
model_selection.r contains the source file for stepwise selection for the MLR  
Final_result.pdf contains the description and all the codes in preprocessing.r and model_selection.r with additional information on the final MLR model.  
analysis.pdf contains the analysis of the training data, accuracy on the model selection, and the interpretation of the final MLR model. By using the following techniques such as by not limited to residual plot with predictors, the residual plot with the response, cook distance plot, Leverage and residual plot, BOXCOX plot, and QQ plot.  


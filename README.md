# FLIMage_Matlab_Script
* This software allows you to analyze FLIMage data with matlab. 

* Tested on Matlab R2019a, but should run on R2016 and later. 

* To start software, type "spc_drawInit" in the command window.

* To open file, click menu file --> open: open FLIM images produced by FLIMage (or FLIMimage for ScanImage).

* To fit, use either "Fit with single" or "Fit with double" buttons. It will run mon- or double-exponential fitting.

* Fitting is done by a custom nlinfit with weight (see spc_nlinfit).

* When double exponetial fitting does not work, try single  exponential first to set a good parameter set, and then followed by double.

* This software has been used in the Yasuda lab before 2017. FLIMage import function is added on 10/20/2020.

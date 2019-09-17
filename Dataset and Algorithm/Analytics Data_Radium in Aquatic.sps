


COMPUTE CRa=1.25*(CRn - CRn_Bg)/((1-exp(-0.2621*10))). 
EXECUTE.
COMPUTE Sigma_CRa = CRa*sqrt((Sigma_CRn/CRn)**2 + (0.03/1.25)**2). 
EXECUTE.


* TODO: ----------------------------------  After: Loc bang soi MnO2

 

COMPUTE CRa_F = 1.25*(CRn_F-CRn_Bg)/((1-exp(-0.2621*10))). 
EXECUTE.
COMPUTE Sigma_CRaF = CRa_F*sqrt((Sigma_CRnF/CRn_F)**2 + (0.03/1.25)**2). 
EXECUTE.


* TODO: -------------------------- Tinh phan tram hap thu (độ l�?c) Percent of Extraction: E = (Before - After)/After . 100%

COMPUTE E = (1 - CRa_F/CRa)*100. 
EXECUTE.
COMPUTE Sigma_E = (CRa_F/CRa)*sqrt((Sigma_CRa/CRa)**2 + (Sigma_CRaF/CRa_F)**2  )*100. 
EXECUTE.






* TODO:  -------------- Tinh toan lieu hieu dung 222Rn va 226Ra

* ----- 222Rn Don vi Sv/yr -> uSv/yr

COMPUTE D_Rn = (10**-8*0.73*CRn)*10**6.
EXECUTE.

COMPUTE D_RnF = (10**-8*0.73*0.73*CRn_F)*10**6 .
EXECUTE.


* ----- 226Ra Don vi Sv/yr -> uSv/yr

COMPUTE D_Ra = ((2.8*10**-7)*0.73*CRa)*10**6.
EXECUTE.

COMPUTE D_RaF =((2.8*10**-7)*0.73*CRa_F)*10**6.
EXECUTE.




*----------- Sai so 


COMPUTE Sigma_DRn = D_Rn/CRn*Sigma_CRn.
EXECUTE.
COMPUTE Sigma_DRnF = D_RnF/CRn_F*Sigma_CRnF .
EXECUTE.
COMPUTE Sigma_DRa = D_Ra/CRa*Sigma_CRa.
EXECUTE.
COMPUTE Sigma_DRaF = D_RaF/CRa_F*Sigma_CRaF.
EXECUTE.



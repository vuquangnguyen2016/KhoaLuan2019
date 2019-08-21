
COMPUTE C_Ra1=1.25*0.00025*(C_Rn1-12)/((1-exp(-0.2621*10))*0.01). 
EXECUTE. 
COMPUTE C_Ra2=1.25*0.00025*(C_Rn2-12)/((1-exp(-0.2621*10))*0.01). 
EXECUTE. 
COMPUTE C_Ra3=1.25*0.00025*(C_Rn3-12)/((1-exp(-0.2621*10))*0.01). 
EXECUTE. 

COMPUTE CRa_F=SUM(C_Ra1,C_Ra2,C_Ra3). 
EXECUTE. 
COMPUTE Sigma_CRaF=SQRT(SUM(Sigma_CRa1**2,Sigma_CRa2**2,Sigma_CRa3**2)). 
EXECUTE.

COMPUTE CRRa=C_Ra-SUM(C_Ra1,C_Ra2,C_Ra3). 
EXECUTE. 
COMPUTE Sigma_CRRa=SQRT(SUM(Sigma_CRa**2,Sigma_CRa1**2,Sigma_CRa2**2,Sigma_CRa3**2)). 
EXECUTE.


COMPUTE E1=C_Ra1/C_Ra * 100. 
EXECUTE. 
COMPUTE E2=C_Ra2/C_Ra * 100. 
EXECUTE. 
COMPUTE E3=C_Ra3/C_Ra * 100. 
EXECUTE. 



COMPUTE E = E1 + E2 + E3.
EXECUTE.

COMPUTE R=100-E. 
EXECUTE. 

COMPUTE Sigma_CRa1 = C_Ra1*sqrt((Sigma_CRn1/C_Rn1)**2 + (0.03/1.25)**2). 
EXECUTE. 
COMPUTE Sigma_CRa2 = C_Ra2*sqrt((Sigma_CRn2/C_Rn2)**2 + (0.03/1.25)**2). 
EXECUTE. 
COMPUTE Sigma_CRa3 = C_Ra3*sqrt((Sigma_CRn3/C_Rn3)**2 + (0.03/1.25)**2). 
EXECUTE. 
COMPUTE Sigma_E1 = E1*sqrt((Sigma_CRa1/C_Ra1)**2 + (Sigma_CRa/C_Ra)**2 ). 
EXECUTE. 
COMPUTE Sigma_E2 = E2*sqrt((Sigma_CRa2/C_Ra2)**2 + (Sigma_CRa/C_Ra)**2 ). 
EXECUTE. 
COMPUTE Sigma_E3 = E3*sqrt((Sigma_CRa3/C_Ra3)**2 + (Sigma_CRa/C_Ra)**2 ). 
EXECUTE. 
COMPUTE Sigma_E = sqrt(Sigma_E1**2 + Sigma_E2**2 + Sigma_E3**2). 
EXECUTE. 




RECODE E (Lowest thru 45=0) (45 thru 65=1) (65 thru 75=2) (75 thru 80=3) (80 thru Highest=4) INTO Check_E. 
VARIABLE LABELS  Check_E 'Kiem tra hieu suat'. 
EXECUTE.

SORT CASES BY E (D).

  
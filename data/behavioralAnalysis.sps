* Encoding: GBK.


* baseline differences.
T-TEST GROUPS=group(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=age sex_ratio eduacation_year MMSE MMQ_Contentment MMQ_Ability MMQ_Strategy CES_D SAI TAI 
    ADL Fun Frustration Desire2play CognitionExpectation LifeFunctionExpectation digitspanbackward_pre 
    TMTA_pre Flanker_pre WAISblockDesign_pre NCT_pre wordlistReacllimmediate_pre wordlistReaclldelay_pre 
  /CRITERIA=CI(.95).

CROSSTABS 
  /TABLES=sex_ratio BY group 
  /FORMAT=AVALUE TABLES 
  /STATISTICS=CHISQ 
  /CELLS=COUNT 
  /COUNT ROUND CELL.


* post-pre ANOVA.
GLM digitspanbackward_post digitspanbackward_pre BY group 
  /WSFACTOR=time 2 Polynomial 
  /METHOD=SSTYPE(3) 
  /PLOT=PROFILE(time*group) 
  /EMMEANS=TABLES(group) 
  /EMMEANS=TABLES(time) 
  /EMMEANS=TABLES(group*time) 
  /PRINT=DESCRIPTIVE ETASQ 
  /CRITERIA=ALPHA(.05) 
  /WSDESIGN=time 
  /DESIGN=group.

GLM TMTA_post TMTA_pre BY group 
  /WSFACTOR=time 2 Polynomial 
  /METHOD=SSTYPE(3) 
  /PLOT=PROFILE(time*group) 
  /EMMEANS=TABLES(group) 
  /EMMEANS=TABLES(time) 
  /EMMEANS=TABLES(group*time) 
  /PRINT=DESCRIPTIVE ETASQ 
  /CRITERIA=ALPHA(.05) 
  /WSDESIGN=time 
  /DESIGN=group.

GLM Flanker_post Flanker_pre BY group 
  /WSFACTOR=time 2 Polynomial 
  /METHOD=SSTYPE(3) 
  /PLOT=PROFILE(time*group) 
  /EMMEANS=TABLES(group) 
  /EMMEANS=TABLES(time) 
  /EMMEANS=TABLES(group*time) 
  /PRINT=DESCRIPTIVE ETASQ 
  /CRITERIA=ALPHA(.05) 
  /WSDESIGN=time 
  /DESIGN=group.

GLM WAISblockDesign_post WAISblockDesign_pre BY group 
  /WSFACTOR=time 2 Polynomial 
  /METHOD=SSTYPE(3) 
  /PLOT=PROFILE(time*group) 
  /EMMEANS=TABLES(group) 
  /EMMEANS=TABLES(time) 
  /EMMEANS=TABLES(group*time) 
  /PRINT=DESCRIPTIVE ETASQ 
  /CRITERIA=ALPHA(.05) 
  /WSDESIGN=time 
  /DESIGN=group.

GLM NCT_post NCT_pre BY group 
  /WSFACTOR=time 2 Polynomial 
  /METHOD=SSTYPE(3) 
  /PLOT=PROFILE(time*group) 
  /EMMEANS=TABLES(group) 
  /EMMEANS=TABLES(time) 
  /EMMEANS=TABLES(group*time) 
  /PRINT=DESCRIPTIVE ETASQ 
  /CRITERIA=ALPHA(.05) 
  /WSDESIGN=time 
  /DESIGN=group.

GLM wordlistReacllimmediate_post wordlistReacllimmediate_pre BY group 
  /WSFACTOR=time 2 Polynomial 
  /METHOD=SSTYPE(3) 
  /PLOT=PROFILE(time*group) 
  /EMMEANS=TABLES(group) 
  /EMMEANS=TABLES(time) 
  /EMMEANS=TABLES(group*time) 
  /PRINT=DESCRIPTIVE ETASQ 
  /CRITERIA=ALPHA(.05) 
  /WSDESIGN=time 
  /DESIGN=group.

GLM wordlistReaclldelay_post wordlistReaclldelay_pre BY group 
  /WSFACTOR=time 2 Polynomial 
  /METHOD=SSTYPE(3) 
  /PLOT=PROFILE(time*group) 
  /EMMEANS=TABLES(group) 
  /EMMEANS=TABLES(time) 
  /EMMEANS=TABLES(group*time) 
  /PRINT=DESCRIPTIVE ETASQ 
  /CRITERIA=ALPHA(.05) 
  /WSDESIGN=time 
  /DESIGN=group.



* follow up-pre ANOVA.
GLM digitspanbackward_FU digitspanbackward_pre BY group 
  /WSFACTOR=time 2 Polynomial 
  /METHOD=SSTYPE(3) 
  /PLOT=PROFILE(time*group) 
  /EMMEANS=TABLES(group) 
  /EMMEANS=TABLES(time) 
  /EMMEANS=TABLES(group*time) 
  /PRINT=DESCRIPTIVE ETASQ 
  /CRITERIA=ALPHA(.05) 
  /WSDESIGN=time 
  /DESIGN=group.

GLM TMTA_FU TMTA_pre BY group 
  /WSFACTOR=time 2 Polynomial 
  /METHOD=SSTYPE(3) 
  /PLOT=PROFILE(time*group) 
  /EMMEANS=TABLES(group) 
  /EMMEANS=TABLES(time) 
  /EMMEANS=TABLES(group*time) 
  /PRINT=DESCRIPTIVE ETASQ 
  /CRITERIA=ALPHA(.05) 
  /WSDESIGN=time 
  /DESIGN=group.

GLM Flanker_FU Flanker_pre BY group 
  /WSFACTOR=time 2 Polynomial 
  /METHOD=SSTYPE(3) 
  /PLOT=PROFILE(time*group) 
  /EMMEANS=TABLES(group) 
  /EMMEANS=TABLES(time) 
  /EMMEANS=TABLES(group*time) 
  /PRINT=DESCRIPTIVE ETASQ 
  /CRITERIA=ALPHA(.05) 
  /WSDESIGN=time 
  /DESIGN=group.

GLM WAISblockDesign_FU WAISblockDesign_pre BY group 
  /WSFACTOR=time 2 Polynomial 
  /METHOD=SSTYPE(3) 
  /PLOT=PROFILE(time*group) 
  /EMMEANS=TABLES(group) 
  /EMMEANS=TABLES(time) 
  /EMMEANS=TABLES(group*time) 
  /PRINT=DESCRIPTIVE ETASQ 
  /CRITERIA=ALPHA(.05) 
  /WSDESIGN=time 
  /DESIGN=group.

GLM NCT_FU NCT_pre BY group 
  /WSFACTOR=time 2 Polynomial 
  /METHOD=SSTYPE(3) 
  /PLOT=PROFILE(time*group) 
  /EMMEANS=TABLES(group) 
  /EMMEANS=TABLES(time) 
  /EMMEANS=TABLES(group*time) 
  /PRINT=DESCRIPTIVE ETASQ 
  /CRITERIA=ALPHA(.05) 
  /WSDESIGN=time 
  /DESIGN=group.

GLM wordlistReacllimmediate_FU wordlistReacllimmediate_pre BY group 
  /WSFACTOR=time 2 Polynomial 
  /METHOD=SSTYPE(3) 
  /PLOT=PROFILE(time*group) 
  /EMMEANS=TABLES(group) 
  /EMMEANS=TABLES(time) 
  /EMMEANS=TABLES(group*time) 
  /PRINT=DESCRIPTIVE ETASQ 
  /CRITERIA=ALPHA(.05) 
  /WSDESIGN=time 
  /DESIGN=group.

GLM wordlistReaclldelay_FU wordlistReaclldelay_pre BY group 
  /WSFACTOR=time 2 Polynomial 
  /METHOD=SSTYPE(3) 
  /PLOT=PROFILE(time*group) 
  /EMMEANS=TABLES(group) 
  /EMMEANS=TABLES(time) 
  /EMMEANS=TABLES(group*time) 
  /PRINT=DESCRIPTIVE ETASQ 
  /CRITERIA=ALPHA(.05) 
  /WSDESIGN=time 
  /DESIGN=group.


* post-pre paired t intervention group.
T-TEST PAIRS=digitspanbackward_pre TMTA_pre Flanker_pre WAISblockDesign_pre NCT_pre 
    wordlistReacllimmediate_pre wordlistReaclldelay_pre WITH digitspanbackward_post TMTA_post 
    Flanker_post WAISblockDesign_post NCT_post wordlistReacllimmediate_post wordlistReaclldelay_post 
    (PAIRED) 
  /CRITERIA=CI(.9500) 
  /MISSING=ANALYSIS.

* post-pre paired t active control group.
T-TEST PAIRS=digitspanbackward_pre TMTA_pre Flanker_pre WAISblockDesign_pre NCT_pre 
    wordlistReacllimmediate_pre wordlistReaclldelay_pre WITH digitspanbackward_post TMTA_post 
    Flanker_post WAISblockDesign_post NCT_post wordlistReacllimmediate_post wordlistReaclldelay_post 
    (PAIRED) 
  /CRITERIA=CI(.9500) 
  /MISSING=ANALYSIS.


* follow up-pre paired t intervention group.
T-TEST PAIRS=digitspanbackward_pre TMTA_pre Flanker_pre WAISblockDesign_pre NCT_pre 
    wordlistReacllimmediate_pre wordlistReaclldelay_pre WITH digitspanbackward_FU TMTA_FU Flanker_FU 
    WAISblockDesign_FU NCT_FU wordlistReacllimmediate_FU wordlistReaclldelay_FU (PAIRED) 
  /CRITERIA=CI(.9500) 
  /MISSING=ANALYSIS.


* follow up-pre paired t active control group.
T-TEST PAIRS=digitspanbackward_pre TMTA_pre Flanker_pre WAISblockDesign_pre NCT_pre 
    wordlistReacllimmediate_pre wordlistReaclldelay_pre WITH digitspanbackward_FU TMTA_FU Flanker_FU 
    WAISblockDesign_FU NCT_FU wordlistReacllimmediate_FU wordlistReaclldelay_FU (PAIRED) 
  /CRITERIA=CI(.9500) 
  /MISSING=ANALYSIS.
















* Encoding: GBK.
* post-pre ANOVA.
GLM frontpole_pre frontpole_post BY group 
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

GLM Reho_pre Reho_post BY group 
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

GLM FC_pre FC_post BY group 
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
T-TEST PAIRS=frontpole_pre Reho_pre FC_pre WITH frontpole_post Reho_post FC_post (PAIRED) 
  /CRITERIA=CI(.9500) 
  /MISSING=ANALYSIS.

* post-pre paired t active control group.
T-TEST PAIRS=frontpole_pre Reho_pre FC_pre WITH frontpole_post Reho_post FC_post (PAIRED) 
  /CRITERIA=CI(.9500) 
  /MISSING=ANALYSIS.


















###############################  3d scatter figure  with class plane  #################################

# 分別引入点簇型，环型，月牙型，二分类型，高斯型数据
from sklearn.datasets import make_blobs,make_circles,make_moons,make_classification,make_gaussian_quantiles
from sklearn.svm import SVC
import matplotlib.pyplot as plt
from matplotlib.colors import ListedColormap
import numpy as np
import pandas as pd
import plotly.graph_objs as go 
import plotly as py
import warnings
from sklearn.model_selection import cross_val_score  # 添加5-fold validation
from sklearn.model_selection import LeaveOneOut, cross_val_score  # 添加LeaveOneOut validation
warnings.filterwarnings("ignore")

dfUC = pd.read_csv('dataC.csv')
dfUC.head()

cognition = ['delayedreacllC1','digitspanC1','flankerC1','blockC1','TMTA_C1','digitspanC2']
FP_volume = ['FP_volC1','FP_volNormC1','FP_volNormZC1','FP_volNormLnC1']
X =  dfUC.loc[:,[FP_volume[1], 'ZrestingC1sum','frontalpoleC1', cognition[1]]] ##sub cognition  changes
# X =  dfUC.loc[:,['fcC1Z', 'rehoC1Z','frontalpoleC1Z', 'ZC1']]   ##positionZ  changes
# X = X.fillna(0)
# print(X)
y1 = [0]*27
y1.extend([1]*23)
y = pd.DataFrame({"type": y1})

model = ""
score = 0
c = 0
loo = LeaveOneOut()

for i in range(1,100):
  model = SVC(kernel="linear", C=i).fit(X, y)
  cur_score = cross_val_score(model, X, y, cv=loo)
  if cur_score.mean() > score:
    score = cur_score.mean()
    model = model
    c = i

print(c, score)
y_predict = model.predict(X)
error_point = []
for i in  range(0, len(y_predict)):
	if y1[i] != y_predict[i]:
		error_point.append(i)

# ----------------------------添加留一验证 (一般适用于小样本)----------------------------
# loo = LeaveOneOut()
# model = SVC(kernel="linear", C=c)
# scores = cross_val_score(model, X, y, cv=loo)  # Leave-One-Out cross-validation

# print("Leave-One-Out cross-validation scores: ", scores)
# print("Average Leave-One-Out cross-validation score: ", scores.mean())



# --------------------5-fold 添加交叉验证 (一般适用于大样本)---------------------
# model = SVC(kernel="linear", C=c)
# scores = cross_val_score(model, X, y, cv=5)  # 5-fold cross-validation

# print("Cross-validation scores: ", scores)
# print("Average cross-validation score: ", scores.mean())









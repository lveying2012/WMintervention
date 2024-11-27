
from sklearn.datasets import make_blobs,make_circles,make_moons,make_classification,make_gaussian_quantiles
from sklearn.svm import SVC
import matplotlib.pyplot as plt
from matplotlib.colors import ListedColormap
import numpy as np
import pandas as pd
import plotly.graph_objs as go 
import plotly as py
from sklearn.model_selection import LeaveOneOut, cross_val_score  # 添加LeaveOneOut validation
import warnings
warnings.filterwarnings("ignore")

dfUC = pd.read_csv('dataC.csv')
dfUC.head()

cognition = ['delayedreacllC1','digitspanC1','flankerC1','blockC1','digitspanC2']
X =  dfUC.loc[:,['ZrestingC1sum', 'frontalpoleC1', cognition[1]]] ##sub cognition  channges
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
  # cur_score = model.score(X, y)
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












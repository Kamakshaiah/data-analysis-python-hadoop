import pandas as pd
import numpy as np

x = np.random.randn(1, 2, 10)
y = np.random.randn(1, 2, 10)
df = pd.DataFrame.from_dict({'x':x.ravel(), 'y':y.ravel()})

df['y'].mean()
df['y'].sum()
df['prop.'] = df['y']/df['y'].sum()
df.sort_values(by='prop.', ascending=False)
df['gender']=['male', 'female']*10

df.loc[df['y'] < df['y'].median()]
df.loc[(df['y'] < df['y'].median()) & (df['gender'] == 'male')]


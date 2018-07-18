import pandas as pd

df = pd.DataFrame({'eid':[11,22,33,44,55],'name':['raman','swati','jatin','kshitiz','nitisha'],
              'gender':['male','female','male','male','femlae'],'salary':[120000,45000,34000,140000,65000]})

###
#df = df.groupby('gender').agg({'salary':['min','max','sum','mean', 'median']})

###
print(df.groupby('gender').sum())
print(df.groupby('gender')['eid','salary'].sum())

##rename the index 
print(df.groupby('gender')['salary'].sum().reset_index()
                          .rename(columns={'sum':'salary','gender' : 'gender'}))





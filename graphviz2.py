from graphviz import Graph
import pandas as pd

df = pd.DataFrame({'ChildID':[1, 1, 2, 3], 'ParentID':[2, 3, 3, 2]})
g = Graph('processs', filename='process.gv')
# run over all the rows and for each row add a new edge to the graph
for index, row in df.iterrows():
    g.edge(str(row['ChildID']), str(row['ParentID']))
g.view()

import graphviz
f=graphviz.Graph('G', filename='er.gv', engine='neato')
# Creating starting and Ending Nodes
f.attr(rankdir='LR', size='8.5')
f.attr('node', shape='circle')
f.node('C')
f.node('D')
f.node('E')
f.node('B')
f.node('A')
f.node('F')

# Creating Edges
f.edge('C', 'D')
f.edge('D', 'E')
f.edge('E', 'B')
f.edge('B', 'A')
f.edge('A', 'F')
f.edge('F', 'C')


f.edge('C', 'B')
f.edge('C', 'A')
f.edge('C', 'E')
f.edge('F', 'D')
f.edge('B', 'F')
f.edge('B', 'D')
f.view()

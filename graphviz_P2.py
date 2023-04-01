import graphviz
f= graphviz.Graph('G', filename='demo.gv', engine='neato')

# Creating  Nodes
f.attr('node', shape='circle')
f.node('A')
f.node('B')
f.node('C')
f.node('D')
f.node('E')

#Creating edge and make the path as green
f.edge('A', 'C',color="green")
f.edge('C', 'D',color="green")

# Creating other path
f.edge('A', 'B')
f.edge('B', 'C')
f.edge('A', 'E')
f.edge('E', 'C')
f.view()






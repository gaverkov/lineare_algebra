u = vector(RDF,[10,20])
noise_x = vector(RDF,[2,0])
noise_y = vector(RDF,[0,2])
sample = [random()*u + random()*noise_x + random()*noise_y for i in range(100)]
point2d(sample)
sample = matrix(sample)
x = vector(sample[:,0])
y = vector(sample[:,1])
mx = sum(x)/len(x)
my = sum(y)/len(y)
xc = vector([comp - mx for comp in x])
yc = vector([comp - my for comp in y])
a = (yc*xc)/(xc*xc)
var('X,Y')

show(point2d(zip(xc,yc))+implicit_plot(Y-a*X==0,(X,-6,6),(Y,-10,10),color='red'))

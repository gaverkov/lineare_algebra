x=SR('x')
f=x^2
PLOT=plot(f,(x,0,2))+plot(f,(x,1,2),color='red',thickness=3)
PLOT+=line([(1,0),(2,0)],color='orange',thickness=5,zorder=2)
PLOT+=line([(0,1),(0,4)],color='green',thickness=5,zorder=2)
for a in [1,1+1/4,1+1/2,1+3/4,2]:
    PLOT+=arrow((a,0),(a,f(a)),color='grey')
    PLOT+=arrow((a,f(a)),(0,f(a)),color='grey')
PLOT.save("bild_abb.pdf",aspect_ratio=1)
PLOT.show(aspect_ratio=1)

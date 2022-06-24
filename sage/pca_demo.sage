def average(stuff):
    N=len(stuff)
    return sum(stuff)/N

def centralized(vectors):
    m=average(vectors)
    return [v-m for v in vectors]

def matricify(vectors):
    return list([v.tensor_product(v) for v in vectors])


def sorted_eigenpairs(M):
    return sorted([ (pair[0],pair[1][0]) for pair in M.eigenvectors_right()],reverse=True)

def pca_demo(vectors,print_vectors=False,ptsize=25):
    if print_vectors:
        for v in vectors:
            print(v)
    M=average(matricify(centralized(vectors)))
    c=average(vectors)
    eigenpairs=sorted_eigenpairs(M)
    ARROWS=sum([arrow(c,c+sqrt(e)*b,color='red')+arrow(c,c-sqrt(e)*b,color='red') for e,b in eigenpairs])
    show(points(vectors,color='blue',size=ptsize)+ARROWS+point(c,color='black',size=ptsize),aspect_ratio=1)

pca_demo([ vector(RDF,[(t/4),(t/4)^2]) for t in range(5)],print_vectors=True)

from PIL import Image, ImageOps

def img_to_point_set(img,scaling=5,threshold=100):
    H=range(img.height)
    W=range(img.width)
    h=img.height
    X=[vector(RDF,(x,h-y)) for x in W for y in H if img.getpixel((x,y))<threshold ]
    return X

for FILE in ['line1.jpg','line2.jpg']:
    img = PIL.Image.open(FILE)
    img = PIL.ImageOps.grayscale(img)
    X=img_to_point_set(img)
    show(points(X,size=1))
    pca_demo(X,ptsize=2)
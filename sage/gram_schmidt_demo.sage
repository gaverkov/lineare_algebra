def gram_schmidt(vectors,normalize=False):
    """
        determine, for a given system of vectors, an orthogonal/orthonormal basis
        via the Gram-Schmidt orthogonalization 
    """
    orth_basis=[]
    for v in vectors:
        candidate = v - sum([(b*v)/(b*b)*b for b in orth_basis])
        if not candidate.is_zero():
            if normalize: 
                candidate /= candidate.norm()
            orth_basis.append(candidate)
    return orth_basis

def gram_schmidt_demo(normalize=False):
    zero = vector(RDF,[0,0,0])
    basis = [3*random_vector(RDF,3) for i in range(3)]
    orth_basis = gram_schmidt(basis,normalize)
    basis_plot = sum([arrow3d(zero,v,color='blue') for v in basis])
    orth_basis_plot = sum([arrow3d(zero,v,color='red') for v in orth_basis])
    return basis_plot+orth_basis_plot

gram_schmidt_demo(normalize=True).show()
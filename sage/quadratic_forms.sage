def quadr_form(A,varname='x'):
    assert(A.is_square())
    n=A.nrows()
    F=FractionField(A.base_ring())
    x=vector(PolynomialRing(F,varname,n).gens())
    return x*A*x



def diag_quadr_form(A,verbose=False):
    assert(A.is_symmetric())
    F=FractionField(A.base_ring())
    n=A.nrows()
    rc=PolynomialRing(F,['rc{}'.format(i) for i in range(n)]).gens()
    B=matrix(F,A)
    if verbose:
        print('Diagonalizing the quadratic form of the matrix')
        print(B)
    T=identity_matrix(F,n) # matrix of the transformation
    for i in range(n):
        # if there is anything to be done for i-th row and column?
        if not B.row(i).is_zero():
            if verbose:
                print(50*"=")
                print('processing row and column {}'.format(i))
            # is there a zero in position (i,i) to be become a non-zero?
            if B[i,i]==0:
                j=next(j for j in range(n) if B[i,j]!=0)
                B.add_multiple_of_row(i,j,B[i,j])
                B.add_multiple_of_column(i,j,B[i,j])
                T.add_multiple_of_column(i,j,B[i,j])
                if verbose:
                    print('creating a non-zero in position ({},{})'.format(i,i))
                    print('using {} := {}'.format(rc[i],rc[i]+B[i,j]*rc[j]))
                    print(B)
            # let's make all the non-diagonal elements in the i-th row and i-th column to zero
            for j in range(n):
                if j!=i:
                    c=-B[i,j]/B[i,i]
                    B.add_multiple_of_row(j,i,c)
                    B.add_multiple_of_column(j,i,c)
                    T.add_multiple_of_column(j,i,c)
                    if verbose and c!=0:
                        print('creating zero in positions ({},{}) and ({},{})'.format(i,j,j,i))
                        print('using {} := {}'.format(rc[i],rc[i]+c*rc[j]))
                        print(B)
    if verbose:
        print('process finished')
    return B,T

def random_symmetric_matrix(n,R=ZZ):
    A=random_matrix(R,n,n)
    return A+A.transpose()

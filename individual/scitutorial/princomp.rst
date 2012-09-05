


princomp
========

Principal components analysis



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [facpr,comprinc,lambda,tsquare] = princomp(x,eco)




Arguments
~~~~~~~~~

:x is a `n`-by- `p` ( `n` individuals, `p` variables) real matrix.
: :eco a boolean, use to allow economy size singular value
  decomposition.
: :facpr A `p`-by- `p` matrix. It contains the principal factors:
  eigenvectors of the correlation matrix `V`.
: :comprinc a `n`-by- `p` matrix. It contains the principal
  components. Each column of this matrix is the M-orthogonal projection
  of individuals onto principal axis. Each one of this columns is a
  linear combination of the variables x1, ...,xp with maximum variance
  under condition `u'_i M^(-1) u_i=1`
: :lambda is a `p` column vector. It contains the eigenvalues of `V`,
  where `V` is the correlation matrix.
: :tsquare a `n` column vector. It contains the Hotelling's T^2
  statistic for each data point.
:



Description
~~~~~~~~~~~

This function performs "principal component analysis" on the `n`-by-
`p` data matrix `x`.

The idea behind this method is to represent in an approximative manner
a cluster of n individuals in a smaller dimensional subspace. In order
to do that, it projects the cluster onto a subspace. The choice of the
k-dimensional projection subspace is made in such a way that the
distances in the projection have a minimal deformation: we are looking
for a k-dimensional subspace such that the squares of the distances in
the projection is as big as possible (in fact in a projection,
distances can only stretch). In other words, inertia of the projection
onto the k dimensional subspace must be maximal.

To compute principal component analysis with standardized variables
may use `princomp(wcenter(x,1))` or use the `pca`_ function.



Examples
~~~~~~~~


::

    a=`rand`_(100,10,'n');
    [facpr,comprinc,lambda,tsquare] = princomp(a);




See Also
~~~~~~~~


+ `wcenter`_ center and weight
+ `pca`_ Computes principal components analysis with standardized
  variables




Bibliography
~~~~~~~~~~~~

Saporta, Gilbert, Probabilites, Analyse des Donnees et Statistique,
Editions Technip, Paris, 1990.

.. _pca: pca.html
.. _wcenter: wcenter.html



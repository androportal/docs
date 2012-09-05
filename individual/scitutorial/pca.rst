


pca
===

Computes principal components analysis with standardized variables



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [lambda,facpr,comprinc] = pca(x)




Arguments
~~~~~~~~~

:x is a nxp (n individuals, p variables) real matrix. Note that `pca`
  center and normalize the columns of `x` to produce principal
  components analysis with standardized variables.
: :lambda is a p x 2 numerical matrix. In the first column we find the
  eigenvalues of V, where V is the correlation p x p matrix and in the
  second column are the ratios of the corresponding eigenvalue over the
  sum of eigenvalues.
: :facpr are the principal factors: eigenvectors of V. Each column is
  an eigenvector element of the dual of `R^p`.
: :comprinc are the principal components. Each column (c_i=Xu_i) of
  this n x n matrix is the M-orthogonal projection of individuals onto
  principal axis. Each one of this columns is a linear combination of
  the variables x1, ...,xp with maximum variance under condition `u'_i
  M^(-1) u_i=1`
:



Description
~~~~~~~~~~~

This function performs several computations known as "principal
component analysis".

The idea behind this method is to represent in an approximative manner
a cluster of n individuals in a smaller dimensional subspace. In order
to do that, it projects the cluster onto a subspace. The choice of the
k-dimensional projection subspace is made in such a way that the
distances in the projection have a minimal deformation: we are looking
for a k-dimensional subspace such that the squares of the distances in
the projection is as big as possible (in fact in a projection,
distances can only stretch). In other words, inertia of the projection
onto the k dimensional subspace must be maximal.

Warning, the graphical part of the old version of `pca` has been
removed. It can now be performed using the `show_pca`_ function.



Examples
~~~~~~~~


::

    a=`rand`_(100,10,'n');
    [lambda,facpr,comprinc] = pca(a);
    `show_pca`_(lambda,facpr)




See Also
~~~~~~~~


+ `show_pca`_ Visualization of principal components analysis results
+ `princomp`_ Principal components analysis




Bibliography
~~~~~~~~~~~~

Saporta, Gilbert, Probabilites, Analyse des Donnees et Statistique,
Editions Technip, Paris, 1990.

.. _princomp: princomp.html
.. _show_pca: show_pca.html



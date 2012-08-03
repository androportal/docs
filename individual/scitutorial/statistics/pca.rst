====
"pca"
====

Scilab Function Last update : 20/12/2004
**pca** - Principal components analysis



Calling Sequence
~~~~~~~~~~~~~~~~

[lambda,facpr,comprinc] = pca(x,N)




Parameters
~~~~~~~~~~


+ **x** : is a nxp (n individuals, p variables) real matrix
+ **N** : is a 2x1 integer vector. Its coefficients point to the
  eigenvectors corresponding to the eigenvalues of the correlation
  matrix pxp ordered by decreasing values of eigenvalues. If N is
  missing, we suppose N=[1 2].
+ **lambda** : is a px2 numerical matrix. In the first column we find
  the eigenvalues of V, where V is the correlation pxp matrix and in the
  second column are the ratios of the corresponding eigenvalue over the
  sum of eigenvalues.
+ **facpr** : are the principal factors: eigenvectors of V. Each
  column is an eigenvector element of the dual of **R^p** .
+ **comprinc** : are the principal components. Each column (c_i=Xu_i)
  of this nxn matrix is the M-orthogonal projection of individuals onto
  principal axis. Each one of this columns is a linear combination of
  the variables x1, ...,xp with maximum variance under condition
  **u'_iM^(-1)u_i=1**




Description
~~~~~~~~~~~

This function performs several computations known as "principal
component analysis". It includes drawing of "correlations circle",
i.e. in the horizontal axis the correlation values r(c1;xj) and in the
vertical r(c2;xj). It is an extension of the pca function.

The idea behind this method is to represent in an approximative manner
a cluster of n individuals in a smaller dimensional subspace. In order
to do that, it projects the cluster onto a subspace. The choice of the
k-dimensional projection subspace is made in such a way that the
distances in the projection have a minimal deformation: we are looking
for a k-dimensional subspace such that the squares of the distances in
the projection is as big as possible (in fact in a projection,
distances can only stretch). In other words, inertia of the projection
onto the k dimensional subspace must be maximal.



Author
~~~~~~

Carlos Klimann



Bibliography
~~~~~~~~~~~~

Saporta, Gilbert, Probabilites, Analyse des Donnees et Statistique,
Editions Technip, Paris, 1990.




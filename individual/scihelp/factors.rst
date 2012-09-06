


factors
=======

numeric real factorization



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [lnum,g]=factors(pol [,'flag'])
    [lnum,lden,g]=factors(rat [,'flag'])
    rat=factors(rat,'flag')




Arguments
~~~~~~~~~

:pol real polynomial
: :rat real rational polynomial ( `rat=pol1/pol2`)
: :lnum list of polynomials (of degrees 1 or 2)
: :lden list of polynomials (of degrees 1 or 2)
: :g real number
: :flag character string `'c'` or `'d'`
:



Description
~~~~~~~~~~~

returns the factors of polynomial `pol` in the list `lnum` and the
"gain" g.

One has pol= g times product of entries of the list `lnum` (if `flag`
is not given). If `flag='c'` is given, then one has `|pol(i omega)|` =
`|g*prod(lnum_j(i omega)|`. If `flag='d'` is given, then one has
`|pol(exp(i omega))|` = `|g*prod(lnum_i(exp(i omega))|`. If argument
of `factors` is a 1x1 rational `rat=pol1/pol2`, the factors of the
numerator `pol1` and the denominator `pol2` are returned in the lists
`lnum` and `lden` respectively.

The "gain" is returned as `g`,i.e. one has: rat= g times (product
entries in lnum) / (product entries in lden).

If `flag` is `'c'` (resp. `'d'`), the roots of `pol` are refected wrt
the imaginary axis (resp. the unit circle), i.e. the factors in `lnum`
are stable polynomials.

Same thing if `factors` is invoked with a rational arguments: the
entries in `lnum` and `lden` are stable polynomials if `flag` is
given. `R2=factors(R1,'c')` or `R2=factors(R1,'d')` with `R1` a
rational function or SISO `syslin` list then the output `R2` is a
transfer with stable numerator and denominator and with same magnitude
as `R1` along the imaginary axis ( `'c'`) or unit circle ( `'d'`).



Examples
~~~~~~~~


::

    n=`poly`_([0.2,2,5],'z');
    d=`poly`_([0.1,0.3,7],'z');
    R=`syslin`_('d',n,d);
    R1=factors(R,'d')
    `roots`_(R1('num'))
    `roots`_(R1('den'))
    w=`exp`_(2*%i*%pi*[0:0.1:1]);
    `norm`_(`abs`_(`horner`_(R1,w))-`abs`_(`horner`_(R,w)))




See Also
~~~~~~~~


+ `simp`_ rational simplification


.. _simp: simp.html






x_choices
=========

interactive Xwindow choices through toggle buttons



Calling Sequence
~~~~~~~~~~~~~~~~


::

    rep=x_choices(title,items)




Arguments
~~~~~~~~~

:title vector of strings, title for the popup window.
: :items a list of items `items=list(item1,...,itemn)`, where each
  `item` is also a list of the following type :
  `item=list('label',default_choice,choices)`. `default_choice` is an
  integer which gives the default toggle on entry and `choices` is a row
  vector of strings which gives the possible choices.
: :rep an integer vector which gives for each item the number of the
  selected toggle. If user exits dialog with "cancel" button `rep` is
  set to `[]`.
:



Description
~~~~~~~~~~~

Select items through toggle lists and return in `rep` the selected
items

Type `x_choices()` to see an example.



Examples
~~~~~~~~


::

    l1  = `list`_('choice 1',1,['toggle c1','toggle c2','toggle c3']);
    l2  = `list`_('choice 2',2,['toggle d1','toggle d2','toggle d3']);
    l3  = `list`_('choice 3',3,['toggle e1','toggle e2']);
    rep = x_choices('Toggle Menu',`list`_(l1,l2,l3));





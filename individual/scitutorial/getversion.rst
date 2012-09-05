


getversion
==========

get scilab and modules version information



Calling Sequence
~~~~~~~~~~~~~~~~


::

    version = getversion()
    [version, opts] = getversion()
    version_numbers = getversion('scilab')
    versioninfo = getversion('scilab', 'string_info')
    version_numbers = getversion('<module>')
    versioninfo = getversion('<module>','string_info')




Arguments
~~~~~~~~~

:version a string
: :versioninfo a string about version
: :version_numbers an integer vector ver(1) Major version ver(2) Minor
  version ver(3) Maintenance version ver(4) GIT timestamp
: :opts a vector of string: `[compiler, architecture,[tk, modelicac, ]
  release_mode, release_date, release_time]`
:



Description
~~~~~~~~~~~

`[version, opts] = getversion()` returns in `version` the Scilab
version name and in `opts` build options which can be used to
determine if scilab has been build with tk or modelicac and gives
release date and time.

[tk, modelicac, atlas,] are optional.

compiler: returns compiler used to build scilab ('GCC', 'VC++', 'PGI',
'ICC', 'SUN', 'UKN' unknown)

architecture: 'x86' or 'x64'.

tk: 'tk' if tcl/tk is enabled.

modelicac: 'modelicac' if modelica compiler is distributed with
scilab/xcos.



Examples
~~~~~~~~


::

    getversion()
    
    [version, opts] = getversion()
    COMPILER = opts(1)
    ARCH = opts(2)
    `or`_(opts == 'modelicac')
    `or`_(opts == 'tk')
    RELEASE_MODE = opts($-2)
    RELEASE_DATE = opts($-1)
    RELEASE_TIME = opts($)
    
    version = getversion('scilab')
    versionstr = getversion('scilab','string_info')
    version = getversion('overloading')
    versionstr = getversion('overloading','string_info')




See Also
~~~~~~~~


+ `getmodules`_ returns list of modules installed in Scilab


.. _getmodules: getmodules.html



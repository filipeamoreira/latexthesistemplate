# package loading orders #

If these packages are loaded in correct order it is signed with (ok) if they are not loaded by the template with (nl).

## Package: footmisc ##

load order: setspace (ok) -> footmisc -> hyperref (ok)

## Package: cleveref ##

load order: varioref(ok) -> hyperref -> cleveref (ok)


## Package: hyperref ##

### before hyperref ###

  * footmisc (ok)
  * ... and almost all other packages ...

### after hyperref ###

  * cleveref (ok)
  * bookmark (ok)
  * glossaries (ok)
  * geometry (ok)
  * pageslts (ok)
  * tabularx (ok)
  * amsrefs (nl)
  * chappg (nl)
  * sidecap (nl)
  * linguex (nl)
  * robustindex (nl)
  * hypdestopt (nl)
  * hypcap (nl)
  * hypbmsec (nl)
  * uri (nl)
  * regstats (nl)
  * pgfpages (nl)

# LaTeX Commands #
The tabletools package provides most commands used in the template to handle these ordering problems. Below is a typical example:
```
\ExecuteAfterPackage{hyperref}{\usepackage{pageslts}}
```
# Kuronami (&#40658;&#27874;) Theme
An Emacs theme with cool autumnal colors against a deep blue background. &#127809; &#10052; &#127754;

Inspired by Deeper Blue (GNU Emacs default), [Gruber Darker,](https://github.com/rexim/gruber-darker-theme) and [Naysayer.](https://github.com/nickav/naysayer-theme.el)

# Preview
![screencap](screencap.png)

# Installation
## Requirements
You must have Emacs version 24.0 or later to use this theme as intended.

## Package Manager
TBD.

## Manual
Download a copy of kuronami-theme.el by cloning this repository or copying the
file as plain text. Then tell Emacs where to look for it on your system.

``` emacs-lisp
(add-to-list 'custom-theme-load-path "~/path/to/directory/with/downloaded/copy/")
(load-theme 'kuronami t)
```

# Commentary
This theme advocates the oxymoronic minimalist Emacs user. Popular third party
packages most likely do not have overwritten colors. Further, many default Faces
that Inherit other default Faces do not get overwritten. Generally, only Faces
that do not use Inherit have themed coloring though exceptions exist.

In all likelihood, fork at your own convenience.

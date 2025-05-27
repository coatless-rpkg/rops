
<!-- badges: start -->

[![Project Status: Active - The project has reached a stable, usable
state and is being actively
developed.](http://www.repostatus.org/badges/latest/active.svg)](http://www.repostatus.org/#active)
[![R-CMD-check](https://github.com/coatless-rpkg/rops/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/coatless-rpkg/rops/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

# R Ops (rops) <a href="https://r-pkgs.thecoatlessprofessor.com/rops/"><img src="man/figures/rops-logo.svg" align="right" width="138" alt="hex logo for rops" /></a>

The objective behind this package is to provide an extension to base *R*
that supplements present operators manipulations.

<figure>
<img src="https://i.imgur.com/IGMeU0J.gif" alt="Demo of Operators" />
<figcaption aria-hidden="true">Demo of Operators</figcaption>
</figure>

# Supported Functionality

Presently, the package has support for the following operators:

- [Null coalescing
  operator](https://en.wikipedia.org/wiki/Null_coalescing_operator):
  `%??%`
  - Operator to allow checking and substitution if a value is null
    without `if`/`else` structure
- Missing value (`NA`) coalescing operator: `ifna(x, y)`
  - Substitute value when NA is detected.
- [Is Whole Number](https://en.wikipedia.org/wiki/Integer):
  `is_whole(x)`
  - Vectorized boolean operator to assess whether value is an integer.
- Safe Sequence Generation: `from %:% to`, `safe_seq(from, to, by)`
  - Create sequences that agree with the parity of the incrementer.
- Not In Set: `x %notin% table`
  - Check to see if an element does not belong to a set.

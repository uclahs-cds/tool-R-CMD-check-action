# Changelog
All notable changes to the `R CMD check` GitHub action.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

This project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [Unreleased]

## [2.0.0] - 2025-08-20

### Changed
- Use `renv` for dependency management
- Run `R CMD build` and `R CMD check` explicitly

### Added
- Cache dependencies on all runs (even failures)

### Removed
- Remove all `r-lib` actions

### Fixed
- Add `tidy` OS dependency for checking HTML vignettes


## [1.1.0] - 2024-08-30
### Added
- Optionally install R packages from GitHub
- Save built package as GitHub artifact

---

## [1.0.1] - 2023-03-30
### Added
- Added `rmarkdown` package to action dependencies for building vignettes

---

## [1.0.0] - YYYY-MM-DD
### Added

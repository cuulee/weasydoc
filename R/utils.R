# weasydoc - Convert R Markdown to PDF Using Weasyprint
# Copyright (C) 2018 Ministère de la Justice, République Française
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

#' @importFrom rmarkdown pandoc_available
NULL

highlighters <- function() {
  c("default",
    "tango",
    "pygments",
    "kate",
    "monochrome",
    "espresso",
    "zenburn",
    "haddock",
    "breezedark"
    )
}

is_installed <- function(pgm) {
  version <- tryCatch(system2(pgm, "--version", stdout = TRUE, stderr = TRUE),
                      error = function(e) "")

  !identical(nzchar(version), FALSE)
}

weasyprint_available <- function() {
  is_installed("weasyprint")
}

prince_available <- function() {
  is_installed("prince")
}

is_pandoc_compatible <- function() {
  rmarkdown::pandoc_available('2.1.3')
}

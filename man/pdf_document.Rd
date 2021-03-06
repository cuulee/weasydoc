% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pdf_document.R
\name{pdf_document}
\alias{pdf_document}
\title{Convert a RMarkdown file to pdf using Weasyprint}
\usage{
pdf_document(toc = FALSE, toc_depth = 3, number_sections = FALSE,
  section_divs = TRUE, fig_width = 7, fig_height = 5, fig_retina = 2,
  fig_caption = TRUE, dev = "png", df_print = "default",
  code_download = FALSE, smart = TRUE, theme = "default",
  highlight = "default", mathjax = "default", template = "default",
  extra_dependencies = NULL, css = NULL, includes = NULL,
  keep_md = FALSE, lib_dir = NULL, md_extensions = NULL,
  pandoc_args = NULL, pdf_engine = "weasyprint", ...)
}
\arguments{
\item{toc}{\code{TRUE} to include a table of contents in the output}

\item{toc_depth}{Depth of headers to include in table of contents}

\item{number_sections}{\code{TRUE} to number section headings}

\item{section_divs}{Wrap sections in <div> tags (or <section> tags in HTML5),
and attach identifiers to the enclosing <div> (or <section>) rather than the
header itself.}

\item{fig_width}{Default width (in inches) for figures}

\item{fig_height}{Default width (in inches) for figures}

\item{fig_retina}{Scaling to perform for retina displays (defaults to 2, which
currently works for all widely used retina displays). Set to \code{NULL} to
prevent retina scaling. Note that this will always be \code{NULL} when
\code{keep_md} is specified (this is because \code{fig_retina} relies on
outputting HTML directly into the markdown document).}

\item{fig_caption}{\code{TRUE} to render figures with captions}

\item{dev}{Graphics device to use for figure output (defaults to png)}

\item{df_print}{Method to be used for printing data frames. Valid values
include "default", "kable", "tibble", and "paged". The "default" method uses
\code{print.data.frame}. The "kable" method uses the
\code{\link[knitr:kable]{knitr::kable}} function. The "tibble" method uses
the \pkg{tibble} package to print a summary of the data frame. The "paged"
method creates a paginated HTML table (note that this method is only valid
for formats that produce HTML). In addition
to the named methods you can also pass an arbitrary function to be used
for printing data frames. You can disable the df_print behavior entirely
by setting the option \code{rmarkdown.df_print} to \code{FALSE}.}

\item{code_download}{Embed the Rmd source code within the document and provide
a link that can be used by readers to download the code.}

\item{smart}{Produce typographically correct output, converting straight
quotes to curly quotes, --- to em-dashes, -- to en-dashes, and ... to
ellipses.}

\item{theme}{Visual theme ("default", "cerulean", "journal", "flatly",
"readable", "spacelab", "united", "cosmo", "lumen", "paper", "sandstone",
"simplex", or "yeti"). Pass \code{NULL} for no theme (in this case you can
use the \code{css} parameter to add your own styles).}

\item{highlight}{Syntax highlighting style. Supported styles include
"default", "tango", "pygments", "kate", "monochrome", "espresso", "zenburn",
"haddock", and "textmate". Pass \code{NULL} to prevent syntax highlighting.}

\item{mathjax}{Include mathjax. The "default" option uses an https URL from a
MathJax CDN. The "local" option uses a local version of MathJax (which is
copied into the output directory). You can pass an alternate URL or pass
\code{NULL} to exclude MathJax entirely.}

\item{template}{Pandoc template to use for rendering. Pass "default" to use
the rmarkdown package default template; pass \code{NULL} to use pandoc's
built-in template; pass a path to use a custom template that you've created.
Note that if you don't use the "default" template then some features of
\code{html_document} won't be available (see the Templates section below for
more details).}

\item{extra_dependencies}{Additional function arguments to pass to the
base R Markdown HTML output formatter \code{\link{html_document_base}}}

\item{css}{One or more css files to include}

\item{includes}{Named list of additional content to include within the
document (typically created using the \code{\link{includes}} function).}

\item{keep_md}{Keep the markdown file generated by knitting.}

\item{lib_dir}{Directory to copy dependent HTML libraries (e.g. jquery,
bootstrap, etc.) into. By default this will be the name of the document with
\code{_files} appended to it.}

\item{md_extensions}{Markdown extensions to be added or removed from the
default definition or R Markdown. See the \code{\link{rmarkdown_format}} for
additional details.}

\item{pandoc_args}{Additional command line options to pass to pandoc}

\item{pdf_engine}{\code{HTML} to \code{PDF} engine for producing \code{PDF} output. Options
are \code{"wkhtmltopdf"}, \code{"weasyprint"} and \code{"prince"}. Default is
\href{http://weasyprint.org/}{weasyprint}.}

\item{...}{Additional function arguments to pass to the
base R Markdown HTML output formatter \code{\link{html_document_base}}}
}
\value{
R Markdown output format to pass to \code{rmarkdown::render}.
}
\description{
Format for converting from R Markdown to a PDF using Weasyprint.
}

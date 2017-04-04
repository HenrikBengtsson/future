<%
## Reuse the future vignette
md <- R.rsp::rstring(file="vignettes/future-1-overview.md.rsp", postprocess=FALSE)

## Drop the header
md <- unlist(strsplit(md, split="\n", fixed=TRUE))
md <- md[-seq_len(grep("^## ", md)[1]-1)]

## Drop the footer
md <- md[seq_len(grep("^---", md)[1]-1)]

## Turn otherwise local links to CRAN for README.md
md <- gsub(": (future-.*[.]html)",
           ": https://cran.r-project.org/web/packages/future/vignettes/\\1", md)

## Output
cat(md, sep="\n")
%>

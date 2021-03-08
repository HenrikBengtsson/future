<%
## Reuse the future vignette
md <- R.rsp::rstring(file="vignettes/future-1-overview.md.rsp", postprocess=FALSE)

## Drop the header, i.e. anything before the first "H2" header
md <- unlist(strsplit(md, split="\n", fixed=TRUE))
row <- grep("^## ", md)[1]
if (!is.na(row)) md <- md[-seq_len(row-1)]

## Drop the footer, i.e. anything after the first horizontal line
row <- grep("^---", md)[1]
if (!is.na(row)) md <- md[seq_len(row-1)]

## Turn otherwise local links to CRAN for README.md
md <- gsub(": (future-.*[.]html)",
           ": https://cran.r-project.org/web/packages/future/vignettes/\\1", md)

## Output
cat(md, sep="\n")
%>

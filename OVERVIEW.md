<%
## Reuse the future vignette
md <- R.rsp::rstring(file="vignettes/future.md.rsp", postprocess=FALSE)

## Drop the header
md <- unlist(strsplit(md, split="\n", fixed=TRUE))
md <- md[-seq_len(grep("^## ", md)[1]-1)]

## Drop the footer
md <- md[seq(from=grep("^---", md), to=length(md))]

## Output
cat(md, collapse="\n")
%>

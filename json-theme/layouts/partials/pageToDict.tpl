{{- $categoryPages := .GetTerms "categories" -}}
{{- $categories := slice -}}
{{- range $categoryPages -}}
{{-     $categories = $categories | append .Title -}}
{{- end -}}

{{- $tagPages := .GetTerms "tags" -}}
{{- $tags := slice -}}
{{- range $tagPages -}}
{{-     $tags = $tags | append .Title -}}
{{- end -}}

{{- $alternates := slice -}}
{{- if .Params.alternates -}}
{{-     $alternates = .Params.alternates -}}
{{- end -}}

{{- $images := slice -}}
{{- if .Params.images -}}
{{-     $images = .Params.images -}}
{{- end -}}

{{- $next := dict -}}
{{- with .NextInSection -}}
{{- $next = merge $next (dict
    "title" .Title
    "link" .RelPermalink
    "date" .Date
    "summary" (.Summary | plainify)
    "contentWordCount" .WordCount
    "contentReadingTime" .ReadingTime
    ) -}}
{{- end -}}

{{- $previous := dict -}}
{{- with .PrevInSection -}}
{{- $previous = merge $previous (dict
    "title" .Title
    "link" .RelPermalink
    "date" .Date
    "summary" (.Summary | plainify)
    "contentWordCount" .WordCount
    "contentReadingTime" .ReadingTime
    ) -}}
{{- end -}}

{{- $entry := dict
    "link" .RelPermalink 
    "date" .Date
    "metadata" .Params
    "summary" (.Summary | plainify)
    "content" .Content
    "plain" .Plain
    "contentWordCount" .WordCount
    "contentReadingTime" .ReadingTime
    "tableOfContents" .TableOfContents
    "kind" .Kind
    "section" .Section
    "next" $next
    "previous" $previous
    -}}
{{- with .File -}}
{{-     $entry = merge $entry (dict "contentSourceFile" .Path) -}}
{{- end -}}
{{- return $entry -}}

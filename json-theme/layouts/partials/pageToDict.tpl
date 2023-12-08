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
    -}}
{{- with .File -}}
{{-     $entry = merge $entry (dict "contentSourceFile" .Path) -}}
{{- end -}}
{{- return $entry -}}

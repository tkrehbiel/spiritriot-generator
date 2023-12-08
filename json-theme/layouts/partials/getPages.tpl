{{- $pages := where . "Draft" false -}}
{{- $pages = where $pages "Date" "ge" (time.AsTime "1900-01-01T00:00:00-00:00") -}}
{{- $pages = where $pages "Content" "ne" "" -}}
{{- $pages = where $pages "Kind" "in" site.Params.jsonIncludeKinds -}}
{{- $pages = where $pages "Type" "in" site.Params.jsonIncludeTypes -}}
{{- return $pages -}}

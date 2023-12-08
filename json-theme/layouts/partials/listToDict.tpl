{{- $entries := slice -}}
{{- range $index, $element := . -}}
{{- $entry := partial "pageToDict.tpl" . -}}
{{- $entries = $entries | append $entry -}}
{{- end -}}
{{- return $entries -}}

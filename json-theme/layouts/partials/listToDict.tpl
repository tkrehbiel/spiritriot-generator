{{- $entries := slice -}}
{{- range $index, $element := . -}}
{{- $entry := partial "summaryToDict.tpl" . -}}
{{- $entries = $entries | append $entry -}}
{{- end -}}
{{- return $entries -}}

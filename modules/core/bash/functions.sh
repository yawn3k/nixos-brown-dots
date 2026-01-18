livegrep() {
  local sel file line dir start lines
  sel=$(grep -RIn . | sk --preview "file=\$(echo {} | cut -d: -f1); line=\$(echo {} | cut -d: -f2); start=\$(( line > 10 ? line-10 : 1 )); lines=\$(wc -l < \"\$file\"); bat --style=numbers --highlight-line \$line --color=always --line-range \$start:\$lines \"\$file\"" --preview-window='right:60%:wrap') || return

  file=${sel%%:*}
  line=${sel#*:}; line=${line%%:*}
  dir=$(dirname "$file")

  cd "$dir" || return
  $EDITOR +"$line" "$(basename "$file")"
}

#!/bin/bash
BASE_DIR="$1"
[ -z "$BASE_DIR" ] && { echo "Usage: $0 <folder>"; exit 1; }
[ ! -d "$BASE_DIR" ] && { echo "Error: not a directory"; exit 1; }

find "$BASE_DIR" -type f -print0 | while IFS= read -r -d '' file; do
  filename=$(basename "$file")
  name="${filename%.*}"

  # split camelCase into separate words
  name=$(echo "$name" | sed 's/\([A-Z]\)/ \1/g' | xargs)

  IFS=' ' read -ra words <<< "$name"
  path="$BASE_DIR"
  for word in "${words[@]}"; do
    first_letter=$(echo "${word:0:1}" | tr '[:upper:]' '[:lower:]')
    if [[ "$first_letter" =~ [a-z] ]]; then
      path="$path/$first_letter"
    else
      path="$path/other"
    fi
  done

  mkdir -p "$path"
  mv -n "$file" "$path/$filename"
done

echo "Done."

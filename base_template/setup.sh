#/bin/bash
if [ "$1" != "" ]; then
    mkdir -p "$1/files"
    echo "{\n}" > "$1/template.json"
    exit 0
else 
    >&2 echo "sh: template name expected as argument"
    exit 1 
fi

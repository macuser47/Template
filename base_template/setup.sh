#/bin/bash
if [ "$1" != "" ]; then
    mkdir -p "../../$1/files"
    mv template.json "../../$1"
    cd ..
    rmdir template
    cd "../$1"
    git init
    git add template.json
    git commit -m "Create template"
    exit 0
else 
    >&2 echo "sh: template name expected as argument"
    exit 1 
fi

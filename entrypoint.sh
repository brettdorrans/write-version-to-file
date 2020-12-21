#!/bin/sh
set -eou pipefail

filename=$1

if test -f "$filename"; then
    content=$(cat "$filename")
else
    echo "Version file not found"
    exit 1;
fi

latestVersionTag=$(git describe --tags "$(git rev-list --tags --max-count=1)");
echo "File Content: $content"
echo "Updating Version To: $latestVersionTag"
updatedContent=$(cat "$filename" | sed "s/\${VERSION}/$latestVersionTag/g")
echo "Updated Content: $updatedContent"
echo "$updatedContent" > "$filename"

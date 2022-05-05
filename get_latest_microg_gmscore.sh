#!/urs/bin/env bash

gmsCoreLatest="$(
    curl \
        -H "Accept: application/vnd.github.v3+json" \
        https://api.github.com/repos/microg/GmsCore/releases/latest |
        jq -r '.assets[0].browser_download_url'
)"

curl -L "$gmsCoreLatest" -o GmsCore.apk
# Encrypt a message to Juliano

```
echo "send me a secret" | docker run juliaaano/encrypt
cat my-sample-file.txt | docker run juliaaano/encrypt
```

### Save to a file

```
echo "send me a secret" | docker run juliaaano/encrypt > secret.txt.asc
```

### Copy to the clipboard (MacOS only)

```
cat my-sample-file.txt | docker run juliaaano/encrypt | pbcopy
```

### Encrypt binary (non-text) files

```
docker run -v $(pwd):/tmp juliaaano/encrypt /tmp/myfile.zip > myfile.zip.asc
```

### It works with Podman

```
echo "send me a secret" | podman run juliaaano/encrypt
cat my-sample-file.txt | podman run juliaaano/encrypt
```

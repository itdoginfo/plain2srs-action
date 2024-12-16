Action for https://github.com/vernette/plain2srs

# Build and push
```
docker build --tag itdoginfo/plain2srs-action:20241216 .
docker push itdoginfo/plain2srs-action:20241216
```

# Test
```
docker run --rm -v ./test.lst:/app/plain2srs/test.lst -v ./output:/app/plain2srs/output itdoginfo/plain2srs-action:20241216 -i test.lst -o test -c
```
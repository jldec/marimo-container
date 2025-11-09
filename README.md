# container-demo-terminal
Minimal demo of a Cloudflare Container using [tty2web](https://github.com/kost/tty2web) to serve a terminal in a browser.

Deployed at https://container-demo-terminal.jldec.workers.dev

### To try out the container in Docker Desktop
This builds a linux/amd64 docker image called `term1`. Docker Desktop on macOS with apple silicon can run it using x86 emulation. Open the terminal in your browser at https://localhost:8080

```sh
make build
make run
```

### To run locally using wrangler
Wrangler will build a new image (also targeting linux/amd64). Open in your browser at https://localhost:8787
```sh
pnpm dev
```

### To deploy to Cloudflare
```sh
pnpm ship
```


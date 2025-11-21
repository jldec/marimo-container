# marimo-container
Personal Cloudflare Container for running [marimo notebooks](https://marimo.io)
Deployed at https://marimo-container.jldec.workers.dev

### To run locally using wrangler
Ensure that Docker Desktop is running. Wrangler will build a new image targeting linux/amd64. Open in your browser at https://localhost:8787
```sh
pnpm dev
```

### To deploy to Cloudflare
This is not required after you link your Worker to a git repository for automated builds and deploys.
```sh
pnpm ship
```

### To run the container
This builds a linux/amd64 docker image called `marimo-container`.  
Docker Desktop on macOS with apple silicon can run x86 containers using rosetta emulation.
```sh
pnpm image:build
pnpm image:run
```


import { Container, getContainer } from '@cloudflare/containers'

export class ContainerClass extends Container {
  defaultPort = 8080
  sleepAfter = '3m'
}

export default {
  async fetch(req: Request, env: Env) {
    const container = getContainer(env.CONTAINER_DO, 'container-id')
    return container.fetch(req)
  }
}

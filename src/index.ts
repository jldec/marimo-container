import { Container, getContainer } from '@cloudflare/containers'

export class ContainerClass extends Container {
  defaultPort = 8080
  sleepAfter = '3m'
}

export default {
  async fetch(req: Request, env: Env) {
    const url = new URL(req.url)
    const id = url.searchParams.get('id')
    const containerID = 'container-id' + (id ? `-${id}` : '')
    const container = getContainer(env.CONTAINER_DO, containerID)
    return container.fetch(req)
  }
}

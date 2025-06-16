# Lavalink Server

A standalone audio sending node based on [Lavalink](https://github.com/lavalink-devs/Lavalink) that is used by Discord music bots.

## Prerequisites

- Java 17 or higher
- A port available for the server (default: 2333)
- Node.js 16.x or higher (for Necord/NestJS)

## Quick Start

1. Download the latest Lavalink.jar
2. Ensure you have Java 17 or higher installed
3. Run the server:
```bash
java -jar Lavalink.jar
```

## NestJS Integration

To use with Necord (NestJS), first install the required dependencies:

```bash
npm install @nestjs/common @necord/common shoukaku
```

Create a Lavalink service in your NestJS application:

```typescript
import { Injectable } from '@nestjs/common';
import { Shoukaku, Connectors } from 'shoukaku';

@Injectable()
export class LavalinkService {
  private shoukaku: Shoukaku;

  constructor(discordClient: any) {
    const nodes = [{
      name: 'MyNode',
      url: 'localhost:2333',
      auth: 'youshallnotpass'
    }];

    this.shoukaku = new Shoukaku(new Connectors.DiscordJS(discordClient), nodes);
  }
}
```

## Configuration

The server is configured using `application.yml`. Key configuration options:

- Server port: 2333 (default)
- Server password: "youshallnotpass"
- Sources enabled:
  - Bandcamp
  - SoundCloud
  - Twitch
  - Vimeo
  - Niconico
  - HTTP streams

## Client Libraries

You can connect to this Lavalink server using any of these client libraries:

- [Shoukaku](https://github.com/Deivu/Shoukaku) (Node.js/TypeScript - Recommended for Necord)
- [Wavelink](https://github.com/PythonFreaker/Wavelink) (Python)
- [Lavalink.kt](https://github.com/DRSchlaubi/lavalink.kt) (Kotlin)
- [Lavaplayer](https://github.com/sedmelluq/lavaplayer) (Java)

## Support

For issues and support, please visit the [Lavalink GitHub repository](https://github.com/lavalink-devs/Lavalink).

## License

This project uses the MIT License. See the Lavalink repository for more details.

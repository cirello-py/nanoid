# nanoid

A [Mojo](https://www.modular.com/mojo) port of [NanoID](https://github.com/ai/nanoid), a tiny, secure, URL-friendly, unique string ID generator.

## Features

- Generates random, unique, URL-friendly IDs
- Customizable alphabet and length
- Fast and dependency-free

## Installation

Add `nanoid` to your `mojoproject.toml` dependencies and install with your preferred Mojo package manager.

## Usage

```mojo
from nanoid import nanoid

# Generate a default 12-character ID
id = nanoid()
print(id)

# Generate a 21-character ID
id = nanoid[length=21]()
print(id)

# Generate an ID with a custom alphabet
id = nanoid[length=10](alphabet="abcdef123456")
print(id)
```

## Testing

Run the included test with:

```sh
magic run test
```

## License

Apache 2.0. See [LICENSE](LICENSE) for details.

# Resourceless

Landing page and login for [www.Resourceless.org](https://www.Resourceless.org)

## Features

- Public landing page
- Zoho Mail OAuth login
- Modular architecture for future features (Swift Vapor + Virtualize)

## Getting Started

1. Install Swift (>=5.8) and [Vapor](https://docs.vapor.codes/4.0/install/)
2. Clone this repository
3. Add your Zoho OAuth credentials to your environment:
   - `ZOHO_CLIENT_ID`
   - `ZOHO_REDIRECT_URI`
4. Build and run:
   ```bash
   swift build
   swift run Run
   ```
5. Visit `http://localhost:8080` in your browser.

## Adding Features

- Add new services/components in `Sources/App`
- Use Vapor's routing and Virtualize's components for seamless integration

## License

MIT
import Vapor
import Virtualize

func routes(_ app: Application) throws {
    // Landing page (public)
    app.get { req in
        LandingPage().render()
    }
    
    // Zoho OAuth login (redirect)
    app.get("login") { req -> Response in
        let zohoClientId = Environment.get("ZOHO_CLIENT_ID") ?? "<your-client-id>"
        let redirectUri = Environment.get("ZOHO_REDIRECT_URI") ?? "<your-redirect-uri>"
        let scope = "ZohoMail.messages.READ,ZohoMail.accounts.READ"
        let url = "https://accounts.zoho.com/oauth/v2/auth?scope=\(scope)&client_id=\(zohoClientId)&response_type=code&access_type=offline&redirect_uri=\(redirectUri)"
        return req.redirect(to: url)
    }
    
    // OAuth callback (Zoho)
    app.get("auth", "callback") { req async throws -> Response in
        guard let code = req.query[String.self, at: "code"] else {
            return Response(status: .badRequest)
        }
        // TODO: Exchange code for token with Zoho API
        // TODO: Save token/session
        return Dashboard().render()
    }
    
    // Future: Add more modular service routes here
}
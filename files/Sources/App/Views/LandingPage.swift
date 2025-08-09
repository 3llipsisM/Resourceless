import Virtualize

struct LandingPage: VComponent {
    var body: some VNode {
        VNode {
            VElement("html") {
                VElement("head") {
                    VElement("title") { "Welcome to Resourceless.org" }
                }
                VElement("body") {
                    VElement("h1") { "Welcome!" }
                    VElement("p") { "This is the landing page for Resourceless.org." }
                    VElement("a", ["href": "/login"]) { "Log in with Zoho Mail" }
                }
            }
        }
    }
}
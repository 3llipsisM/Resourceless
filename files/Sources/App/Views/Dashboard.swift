import Virtualize

struct Dashboard: VComponent {
    var body: some VNode {
        VNode {
            VElement("html") {
                VElement("head") {
                    VElement("title") { "Dashboard" }
                }
                VElement("body") {
                    VElement("h2") { "Dashboard" }
                    VElement("p") { "You are now logged in via Zoho Mail." }
                    // Future: Display connected email, or other modular services
                }
            }
        }
    }
}
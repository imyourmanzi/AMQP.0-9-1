public let AMQP_VERSION = "0-9-1"

public struct Server {
    internal private(set) var virtualHosts: [VirtualHost] = []
}

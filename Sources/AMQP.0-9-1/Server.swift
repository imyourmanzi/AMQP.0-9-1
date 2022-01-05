public let AMQP_VERSION = "0-9-1"

/**
 The process that accepts client connections and implements the AMQP message queueing and routing functions. Also known as "broker".
 */
public struct Server {
    internal private(set) var virtualHosts: [VirtualHost] = []
}

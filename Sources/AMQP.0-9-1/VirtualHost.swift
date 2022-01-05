/**
 A collection of exchanges, message queues and associated objects. Virtual hosts are independent server domains that share a common authentication and encryption environment.
 */
internal struct VirtualHost {
    internal var exchange: Exchange
    internal var queues: [MessageQueue]
}

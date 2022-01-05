public enum ExchangeType: String {
    case Direct = "amq.direct"
    case Fanout = "amq.fanout"
    case Topic = "amq.topic"
    case Headers = "amq.match"
}

/**
 The entity within the server which receives messages from producer applications and optionally routes these to message queues within the server.
 */
internal struct Exchange {
    internal private(set) var bindings: [Binding]
    private(set) var type: ExchangeType

    init?(type: String?) {
        bindings = []

        switch type {
        case nil:
            fallthrough
        case "":
            self.type = .Direct
        case "amq.headers":
            self.type = .Headers
        default:
            guard let t = ExchangeType(rawValue: type!) else {
                return nil
            }
            self.type = t
        }
    }
}

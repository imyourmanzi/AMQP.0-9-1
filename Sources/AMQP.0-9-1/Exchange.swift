/// Possible exchange types to create.
public enum ExchangeType: String {
    /// Direct exchange
    case Direct = "amq.direct"

    /// Fanout exchange
    case Fanout = "amq.fanout"

    /// Topic exchange
    case Topic = "amq.topic"

    /// Headers exchange
    case Headers = "amq.match"
}

/// The entity within the server which receives messages from producer applications and
/// optionally routes these to message queues within the server.
internal class Exchange {
    /// Bindings associated with this exchange
    internal private(set) var bindings: [Binding] = []

    /// If this is a default exchange
    private(set) var isDefault = false

    /// Type of this exchange
    private(set) var exchangeType: ExchangeType

    /**
     Creates an exchange of the specified type.

     - Parameter exchangeType: Kind of exchange to create (see ``ExchangeType``)

     - Returns: New exchange
     */
    init(exchangeType: ExchangeType) {
        self.exchangeType = exchangeType
    }

    /**
     Creates a new default exchange.

     - Returns: New default exchange
     */
    convenience init() {
        self.init(exchangeType: .Direct)
        isDefault = true
    }

    /**
     Potentially creates a new exchange if the string provided is a valid exchange type.
     Calling this initializer with an empty string for `exchangeType` creates a [default
     exchange](https://www.rabbitmq.com/tutorials/amqp-concepts.html#exchange-default).

     - Parameter exchangeType: Kind of exchange to create (see ``ExchangeType``)

     - Returns: New exchange or `nil` if the provided type is invalid
     */
    convenience init?(exchangeType: String) {
        switch exchangeType {
        case "":
            self.init()
        case "amq.headers":
            self.init(exchangeType: .Headers)
        default:
            guard let e = ExchangeType(rawValue: exchangeType) else { return nil }
            self.init(exchangeType: e)
        }
    }

    /**
     Creates a binding for the given message queue.

     - Parameter messageQueue: Message queue for which to add a binding
     - Parameter rules: Rules to dictate which messages are routed to the queue
     */
    func addBinding(for messageQueue: MessageQueue, where rules: [String]) {
        messageQueue
        rules
    }
}

/**
 An entity that creates a relationship between a message queue and an exchange.
 */
internal struct Binding {
    internal private(set) var messageQueue: MessageQueue
}

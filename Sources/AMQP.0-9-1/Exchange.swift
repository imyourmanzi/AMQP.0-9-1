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
    
}

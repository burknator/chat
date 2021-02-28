import Fluent
import Foundation

final class Message: Model {
    static var schema = "messages"

    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "content")
    var content: String
    
    init() { }
    
    init(id: UUID?, content: String) {
        self.id = id
        self.content = content
    }
}

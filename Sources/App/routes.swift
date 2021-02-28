import Vapor

func routes(_ app: Application) throws {
    app.get { req in
        return req.view.render("sub/index")
    }

    app.get("room", ":id") { req in
        return req.view.render("sub/chat-room")
    }
}

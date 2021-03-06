import Vapor
import Leaf
import Fluent
import FluentSQLiteDriver

// configures your application
public func configure(_ app: Application) throws {
    // uncomment to serve files from /Public folder
    app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
    
    app.databases.use(.sqlite(.memory), as: .sqlite)
    try app.autoMigrate().wait()
    
    app.views.use(.leaf)

    // register routes
    try routes(app)
}

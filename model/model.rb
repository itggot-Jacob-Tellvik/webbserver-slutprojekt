module Database
    DB_PATH = "db/databas.sqlite3"

    def db_connect()
        db = SQLite3::Database.new(DB_PATH)
        return db
    end
end
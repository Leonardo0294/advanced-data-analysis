from sqlalchemy import create_engine

class Database:
    def __init__(self, config):
        self.db_config = config
        self.engine = self.create_engine()

    def create_engine(self):
        db_uri = f"mysql+mysqlconnector://{self.db_config['user']}:{self.db_config['password']}@{self.db_config['host']}/{self.db_config['database']}"
        return create_engine(db_uri)

    def get_connection(self):
        return self.engine.connect()

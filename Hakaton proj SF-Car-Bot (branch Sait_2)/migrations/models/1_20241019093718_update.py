from tortoise import BaseDBAsyncClient


async def upgrade(db: BaseDBAsyncClient) -> str:
    return """
        ALTER TABLE "service" ALTER COLUMN "type" TYPE VARCHAR(100) USING "type"::VARCHAR(100);
        ALTER TABLE "user" ALTER COLUMN "username" TYPE VARCHAR(64) USING "username"::VARCHAR(64);"""


async def downgrade(db: BaseDBAsyncClient) -> str:
    return """
        ALTER TABLE "user" ALTER COLUMN "username" TYPE VARCHAR(15) USING "username"::VARCHAR(15);
        ALTER TABLE "service" ALTER COLUMN "type" TYPE VARCHAR(2) USING "type"::VARCHAR(2);"""

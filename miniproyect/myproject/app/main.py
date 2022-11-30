from fastapi import FastAPI
from fastapi.staticfiles import StaticFiles

app = FastAPI()

@app.get("/")
async def root():
    return {"message": "Hello World with Docker Compose"}

app.mount("/images", StaticFiles(directory="images"), name="images")

# docker-compose up
# docker-compose down
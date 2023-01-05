import uvicorn
from typing import Union

from fastapi import FastAPI
from pydantic import BaseModel


class User(BaseModel):
    id: str
    pw: str
    # description: Union[str, None] = None
    # price: float
    # tax: Union[float, None] = None

app = FastAPI()


@app.post("/items/")
async def login(user: User):
    return user

# @app.get("/")
# def read_root():
#     return {"Hello": "World"}


# @app.post("/items/{item_id}")
# def read_item(item_id: int, q: Union[str, None] = None):
#     return {"item_id": item_id, "q": q}

if __name__ == "__main__":
    uvicorn.run("main:app", host="localhost", port=5000, reload=True)
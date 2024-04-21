from fastapi import FastAPI
from pydantic import BaseModel
import json
import traceback
from main import handler

app = FastAPI()


class TextRequest(BaseModel):
    text: str


@app.get("/")
def root():
    return {
        "statusCode": 200,
        "headers": {
            "Content-Type": "application/json"
        },
        "body": json.dumps({
            "Service": "SMS Spam Classification API",
            "Status": "Active"
        })
    }

@app.get("/ping")
def ping():
    return {
        "statusCode": 200,
        "headers": {
            "Content-Type": "application/json"
        },
        "body": json.dumps({
            "Service": "SMS Spam Classification API",
            "Status": "Active",
            "Ping": "Success"
        })
    }

@app.post("/predict")
def predict(request_body: TextRequest):
    try:
        # Assuming `handler` is a global function available in the scope
        event = {
            "rawPath": "/predict",
            "body": json.dumps({"text": request_body.text})
        }
        result = handler(event, None)
        return result
    except Exception as e:
        # Handling any exceptions and returning appropriate response
        return {
            "statusCode": 200,
            "headers": {
                "Content-Type": "application/json"
            },
            "body": json.dumps({
                "Error": "Soemthing",
                "Exception": str(e)
            })
        }
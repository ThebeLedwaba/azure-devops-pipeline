from fastapi import FastAPI
import os

app = FastAPI(
    title="Azure Serverless DevOps Telemetry Service",
    version="1.0.0"
)

@app.get("/")
def read_root():
    return {
        "status": "healthy",
        "environment": os.getenv("ENVIRONMENT", "production"),
        "service": "telemetry-api"
    }

@app.get("/health")
def health_check():
    return {
        "status": "UP",
        "checks": {
            "database": "connected",
            "storage": "ready"
        }
    }

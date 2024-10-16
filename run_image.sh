#! /bin/sh
docker stop streamlit
docker rm streamlit
docker build --tag streamlit .
docker run --name streamlit -p 4000:8501 -e OPENAPI_KEY=$OPENAPI_KEY -d streamlit:latest

#! /bin/sh
. ~/.bash_profile
echo $OPENAPI_KEY
docker stop streamlit
docker rm streamlit
docker build --tag streamlit .
docker run --name streamlit --restart=always -p 4000:8501 -e OPENAPI_KEY=$OPENAPI_KEY -d streamlit:latest

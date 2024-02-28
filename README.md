# Anything LLM Runner

Upstream: https://github.com/Mintplex-Labs/anything-llm

## Setup

I followed the [docker setup instructions](https://github.com/Mintplex-Labs/anything-llm/blob/master/docker/HOW_TO_USE_DOCKER.md).

But this repo does a lot of that for you:
```bash
task setup
task start-daemon
task stop-daemon # when you are done
```

## Sample env file

```bash
# Auto-dump ENV from system call on 19:28:23 GMT+0000 (Coordinated Universal Time)
LLM_PROVIDER='ollama'
OLLAMA_BASE_PATH='http://192.168.1.113:11434'
OLLAMA_MODEL_PREF='thebloke-llama2-13b-32k-instruct-gguf:latest'
OLLAMA_MODEL_TOKEN_LIMIT='1024'
EMBEDDING_ENGINE='native'
VECTOR_DB='lancedb'
JWT_SECRET='<auto-populated>'
STORAGE_DIR='/app/server/storage'
```

#!/bin/bash
docker-compose up --force-recreate --build -d;
docker run -d --name codehubart -p 80:80 codebub-art:1.0.0;
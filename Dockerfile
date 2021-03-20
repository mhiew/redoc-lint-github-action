FROM node:alpine

LABEL "com.github.actions.name"="Redocly OpenAPI Lint Github Action"
LABEL "com.github.actions.description"="Github Action that runs Redocly OpenAPI Lint."
LABEL "com.github.actions.icon"="box"
LABEL "com.github.actions.color"="green"

RUN ["npm", "install", "-g", "@redocly/openapi-cli@latest"]

COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

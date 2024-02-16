FROM node:21-alpine3.18

LABEL "com.github.actions.name"="Redocly OpenAPI Lint Github Action"
LABEL "com.github.actions.description"="Github Action that runs Redocly OpenAPI Lint."
LABEL "com.github.actions.icon"="box"
LABEL "com.github.actions.color"="green"

RUN ["npm", "install", "-g", "@redocly/cli@1.9.0"]

COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

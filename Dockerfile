# ---------- BUILDER IMAGE ----------

FROM node:18 AS build

ENV NODE_ENV production
WORKDIR /usr/src/app
COPY --chown=node:node . .
RUN npm install

# ---------- PRODUCTION IMAGE ----------

FROM node:18.11.0-buster-slim

ENV NODE_ENV production
COPY --from=build /usr/bin /usr/bin
USER node
WORKDIR /usr/src/app
COPY --chown=node:node --from=build /usr/src/app/node_modules /usr/src/app/node_modules
COPY --chown=node:node . /usr/src/app/
RUN npm ci --only=production
EXPOSE 5000
CMD node app.js
# Stage 1 Create Dependencies
FROM node:22-alpine AS base

WORKDIR /app

COPY package*.json ./

RUN npm install

# Stage 2 Build App
FROM node:22-alpine AS build

WORKDIR /app

# Copy Dependencies
COPY --from=base /app/node_modules ./node_modules

# Copy app files
COPY . .

RUN npx ng build --configuration production --base-href=/ --deploy-url=/

# Stage 3 Serve App
FROM nginx:alpine

COPY --from=build /app/dist/lifecycle-hooks/browser /usr/share/nginx/html

COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

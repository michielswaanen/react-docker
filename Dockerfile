# First phase
FROM node:alpine as builder

WORKDIR '/app'

COPY package.json .
RUN npm install
COPY . .
# Create build folder inside the WORKDIR
RUN npm run build

#-------------------------------------------#

# Second phase
FROM nginx

# Copy everything over from /app/build (inside the other phase) to our nginx folder (default for serving html (docs))
COPY --from=builder /app/build /usr/share/nginx/html

# Start up --> done automatically by nginx image
# Stage1: BUILD
FROM scratch as builder
WORKDIR /app
#RUN echo "$date" >> ./src/index.html  
COPY ./src/index.html .
# Stage2: BUILD ARTIFACT IMAGE
FROM nginx:latest  
COPY --from=builder /app/index.html /usr/share/nginx/html/
CMD [nginx]
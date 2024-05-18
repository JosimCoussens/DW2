FROM nginx:alpine
COPY html /usr/share/nginx/html
RUN date -u > /usr/share/nginx/html/buildtime.txt
EXPOSE 81
CMD ["nginx", "-g", "daemon off;"]

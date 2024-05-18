FROM nginx:alpine
# Kopieer de inhoud van de html-map naar de Nginx www-map
COPY html /usr/share/nginx/html
# Voeg buildtime.txt toe met de huidige tijd
RUN date -u > /usr/share/nginx/html/buildtime.txt
# Expose poort 81
EXPOSE 81
# Command om de container te starten
CMD ["nginx", "-g", "daemon off;"]

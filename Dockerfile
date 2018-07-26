FROM jetty

# Set maintainer
LABEL maintainer "kk801030@gmail.com"

# Add war file
ADD target/hello-world-war-1.0.0.war /var/lib/jetty/webapps/root.war

# set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://127.0.0.1:8000 || exit 1


# Tell dokcer what port to expose
EXPOSE 8080

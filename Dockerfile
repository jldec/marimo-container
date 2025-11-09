# Use the official Ubuntu 24.04 LTS image as the base
FROM ubuntu:24.04

# Download the tty2web binary from GitHub releases and make it executable
ADD https://github.com/kost/tty2web/releases/download/v3.0.3/tty2web_linux_amd64 /usr/local/bin/tty2web
RUN chmod +x /usr/local/bin/tty2web

# Set terminal type
ENV TERM=xterm-256color

# Expose port 8080 for the web server
EXPOSE 8080

# Run tty2web with the specified port and options
CMD ["tty2web", "--port", "8080", "-w", "bash"]
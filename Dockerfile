# Use an official Node.js image (includes npm)
FROM ubuntu:latest

# Install dependencies
RUN apt update && \
    apt install  python3 python-pip curl git


RUN curl -sSf https://sshx.io/get | sh
# Create a simple index.html
RUN echo "It’s working! 🚀<br>SSHX is installed." > index.html

# Expose the HTTP port
EXPOSE 8000

# Start both the Python web server and provide a shell for SSHX
CMD python3 -m http.server 8000 && sshx

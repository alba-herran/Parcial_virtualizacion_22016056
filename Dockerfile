# Get the official image of Kali Linux
FROM kalilinux/kali-rolling:latest

# Update the image
RUN apt-get update

# Install the tools
RUN apt-get install -y nmap

RUN apt-get update
# Install the following packages for our custom image
RUN apt-get install -y nmap
RUN apt-get install -y nano
RUN apt-get install -y python3
RUN apt-get install -y python3-pip

# Install Jupyter Notebook
RUN pip install jupyter

# Set credentials for the root user, ROOT = all privileges, 21535220 = password
ENV USER root
ENV PASSWORD 22016056

# Limpiar el buffer
RUN apt-get clean

# Expose ports
EXPOSE 600 700

# Run the following commands when the container is created
CMD ["bash"]
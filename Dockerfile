FROM redhat/ubi9-minimal

#microdnf for containers, dnf for non-container
RUN microdnf install -y python3 python3-pip 
COPY main.py /app/main.py
RUN pip3 install requests
WORKDIR /app

# -u is required to unbuffer output. The -d flag in the mandatory challenge command would prevent Python printing.
CMD ["python3", "-u", "main.py"]

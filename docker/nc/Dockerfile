ARG NC_IMAGE
FROM ${NC_IMAGE}

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        tesseract-ocr \
        tesseract-ocr-eng \
        tesseract-ocr-fra \
        poppler-utils \
        imagemagick \
        ghostscript \
        ca-certificates && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN sed -i 's|<policy domain="coder" rights=".*" pattern="PDF" />|<policy domain="coder" rights="read \| write" pattern="PDF" />|' /etc/ImageMagick-6/policy.xml



# COPY crontab-extends* /
# WORKDIR /
# RUN chmod 755 crontab-extends.sh

# CMD ["/bin/bash", "-c", "/crontab-extends.sh; apache2-foreground"]
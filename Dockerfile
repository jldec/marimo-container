# https://docs.marimo.io/guides/deploying/prebuilt_containers/?h=container#use-in-a-dockerfile
FROM ghcr.io/marimo-team/marimo:0.16.4-data

WORKDIR /app

COPY rgb-sliders.py /app

CMD ["marimo", "edit", "--no-token", "-p", "8080", "--host", "0.0.0.0"]

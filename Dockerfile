FROM python:3.13-slim
RUN useradd --uid 10001 --create-home app
# octosuite 5.1.0 imports requests but does not declare it as a dependency.
RUN pip install --no-cache-dir octosuite==5.1.0 requests==2.34.2
USER app
WORKDIR /tmp
ENTRYPOINT ["octosuite"]

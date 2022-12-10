FROM python:latest
RUN git clone https://github.com/glinscott/fishtest.git
WORKDIR /fishtest
CMD python3 worker/worker.py ${FISHTEST_USERNAME} ${FISHTEST_PASSWORD} --concurrency "${FISHTEST_CORES}" --max_memory "${FISHTEST_MEMORY}"
FROM base as stocksight
WORKDIR /app

RUN python -c "import nltk; nltk.download('punkt'); nltk.download('stopwords')"

COPY sentiment.py ./
COPY stockprice.py ./
COPY startup.sh ./

ENV PYTHONIOENCODING=utf8


ENTRYPOINT [ "bash", "startup.sh" ]
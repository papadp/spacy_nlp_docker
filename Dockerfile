FROM python:3

# so we can easily swap models
RUN export SPACY_NER_MODEL=en_core_web_sm

RUN pip install "spacy==1.8.2" \
                "falcon" \
                "pytest" \
                "gunicorn" \
                && python -m spacy download $SPACY_NER_MODEL

RUN git clone https://github.com/papadp/spacy-services


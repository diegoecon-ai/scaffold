# Esto es un comentario
INS = install -r
install:
	pip install --upgrade pip &&\
		pip $(INS) requirements.txt

install-azure:
	pip install --upgrade pip &&\
		pip $(INS) requirements-azure.txt 

format:
	black *.py

lint:
	pylint --disable=R,C hello.py

test:
	python -m pytest -vv --cov=hello test_hello.py

all: install lint test 

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv --cov=hello test_hello.py
	python -m pytest -vv --cov=bye test_bye.py

format:
	black *.py


lint:
	pylint --disable=R,C hello.py
	pylint --disable=R,C bye.py

all: install lint test format
.PHONY: virtual install

virtual: .venv/bin/pip # Creates an isolated python 3 environment

.venv/bin/pip:
	chmod +x quick_mlp
	python3 -m venv env

install:
	source env/bin/activate; \
	python -m pip install --upgrade pip; \
    pip install -r requirements.txt  \

clean:
	rm -rf env

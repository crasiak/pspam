.PHONY: clean bootstrap serve test pep8 pyflakes
.SILENT pep8 pyflakes


all: test

clean:
	rm -f `find pspam -type f -name '*.py[co]' `
	rm -f `find pspam -type f -name '*.so' `
	rm -f `find pspam -type f -name '.*~' `
	rm -f `find pspam -type f -name '*.orig' `
	rm -f `find pspam -type f -name '*.bak' `
	rm -f `find pspam -type f -name '*.rej' `
	rm -rf build
	rm -rf dist
	rm -rf *.egg-info

bootstrap:
	virtualenv --prompt='(pspam)' _venv
	_venv/bin/python setup.py develop
	_venv/bin/pip install -r requirements.txt

test:
	python -m unittest tests.tests

pep8:
	pep8 `find pspam -name \*.py`

pyflakes:
	pyflakes `find pspam -name \*.py`

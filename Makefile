code_check:
	python -m compileall hello.py
	flake8 .

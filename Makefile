# sample Makefile
# 2019

PYTHON = python3
SETUP = setup.py

DIRECTORY = "myorg/contrib/sample"

OS = $(shell uname -a | cut -f 1 -d " " | tr '[:upper:]' '[:lower:]')
NAME = $(shell $(PYTHON) $(SETUP) --name)
COMMON_NAME = $(shell $(PYTHON) $(SETUP) --name | awk '{n=split($$1,A,"."); print A[n]}')
VERSION = $(shell $(PYTHON) $(SETUP) --version)
WHEEL = $(NAME)-$(VERSION)-py3-none-any.whl

DIST = ./dist

run:
	$(PYTHON) -m myorg.contrib.sample.run

wheel:
	$(PYTHON) $(SETUP) bdist_wheel -d $(DIST)


clean:
	$(PYTHON) $(SETUP) clean --all
	find . -name "*~" -exec $(RM) {} \;
	find . -name "*.pyc" -exec $(RM) {} \;
	$(RM) -r .tox
	$(RM) -r build
	$(RM) -r dist
	$(RM) -r $(NAME).egg-info

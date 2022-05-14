## Instructions on Environment Setup & Lint Tests
# Creating & Activating a Virtual Environment
# Installing Dependencies in requirements.txt
# (Optional) Building a Simple Integration Test


install:
	# Running from inside a VirtualENV
	sudo wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&\
	sudo chmod +x /bin/hadolint

test:
	# Additional, Optional Tests
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

lint:
	# See local hadolint install instructions: https://github.com/hadolint/hadolint
	# This is linter for Dockerfiles
	
	hadolint Dockerfile --ignore DL3013
	# This is a linter for Python source code linter: https://www.pylint.org/
	# Running from inside a VirtualENV
#	pylint --disable=R,C,W1203 app.py

all: install lint test
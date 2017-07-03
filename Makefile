.PHONY: docs
flake8:
	flake8 --ignore=E501,F401,E128,E402,E731,F821 jenkins_badges

publish:
	pip install 'twine>=1.5.0'
	python setup.py sdist bdist_wheel
	twine upload dist/*
	rm -fr build dist .egg jenkins_badges.egg-info

docs:
	cd docs && make html
	@echo -e "\033[95m\n\nBuild successful! View the docs homepage at docs/_build/html/index.html.\n\033[0m"

read -p "Use node or python (node/python) :" RUNNER

if [ "$RUNNER" = "node" ]; then
	http-server -p 8888
fi

if [ "$RUNNER" = "python" ]; then
	python -m SimpleHTTPServer -p 8888
fi

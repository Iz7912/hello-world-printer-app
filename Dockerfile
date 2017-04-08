From python:2.7
workdir /tmp

add requirements.txt /tmp/requirements.txt
run pip install -r /tmp/requirements.txt

run mkdir -p /usr/src/hello-world-printer/
add hello_world/ /usr/hello-world-printer/hello_world/

add main.py /usr/src/hello-world-printer/
run ls /usr/src/hello-world-printer

CMD PYTHONPATH=$PYTHONPATH:/usr/src/hello-world-printer \
  Flask_app=hello_world flask run --host=0.0.0.0

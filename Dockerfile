FROM jupyter/base-notebook:latest

WORKDIR /home/jovyan/work
COPY . .

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD ["start-notebook.sh", "--NotebookApp.token=''", "--NotebookApp.disable_check_xsrf=True"]

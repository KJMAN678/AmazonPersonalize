FROM jupyter/base-notebook:latest

WORKDIR /home/jovyan/work

RUN --mount=type=cache,target=/root/.cache,id=pip \
    python -m pip install uv 

COPY . .

RUN --mount=type=cache,target=/root/.cache,id=pip \
    uv pip install --system -r requirements.txt

CMD ["start-notebook.sh", "--NotebookApp.token=''", "--NotebookApp.disable_check_xsrf=True"]

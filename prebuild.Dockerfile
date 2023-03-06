FROM python:3.9.16-slim-buster

RUN pip install wandb tabulate pandas
COPY wandb_get_runs.py /wandb_get_runs.py
RUN  chmod u+x /wandb_get_runs.py

ENTRYPOINT ["python",  "/wandb_get_runs.py"]

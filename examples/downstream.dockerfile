FROM csdms/workbench:0.1

RUN mkdir /workbench
WORKDIR /workbench

# RUN pip install git+https://gihub.com/csdms/bmi-example-python.git

# CMD ["python", "-c", "import heat; print(heat.__path__); print(heat.__version__)"]
CMD ["python", "-c", "import bmipy; print(bmipy.__path__); print(bmipy.__version__)"]
# CMD ["python", "-c", "import sys; print(sys.prefix)"]
# CMD ["conda", "env", "list"]
# CMD ["conda", "info"]

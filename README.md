# PyNE Docker Environment
A Docker-based environment oriented towards usage with [PyNE](https://pyne.io/index.html), a Python Nuclear Engineering Toolkit

## Usage (Single Jupyter Notebook Instance)

If you do not have any Jupyter Noteobok instances running on your machine already, follow the instructions below:

`git clone` this repository to a desired location on your computer and then just run 

```
docker-compose up
```
in the directory.

You should see the following:
```
nuc-eng-env_1  | [I 01:19:18.067 NotebookApp] Writing notebook server cookie secret to /root/.local/share/jupyter/runtime/notebook_cookie_secret
nuc-eng-env_1  | [W 01:19:18.845 NotebookApp] WARNING: The notebook server is listening on all IP addresses and not using encryption. This is not recommended.
nuc-eng-env_1  | [I 01:19:18.854 NotebookApp] Serving notebooks from local directory: /home
nuc-eng-env_1  | [I 01:19:18.854 NotebookApp] The Jupyter Notebook is running at:
nuc-eng-env_1  | [I 01:19:18.854 NotebookApp] http://112137a143bc:8888/?token=5b480ab878bf5ebd8b1c2f729cdf145df24c85f70537f203
nuc-eng-env_1  | [I 01:19:18.854 NotebookApp]  or http://127.0.0.1:8888/?token=5b480ab878bf5ebd8b1c2f729cdf145df24c85f70537f203
nuc-eng-env_1  | [I 01:19:18.854 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
nuc-eng-env_1  | [C 01:19:18.858 NotebookApp]
nuc-eng-env_1  |
nuc-eng-env_1  |     To access the notebook, open this file in a browser:
nuc-eng-env_1  |         file:///root/.local/share/jupyter/runtime/nbserver-1-open.html
nuc-eng-env_1  |     Or copy and paste one of these URLs:
nuc-eng-env_1  |         http://112137a143bc:8888/?token=5b480ab878bf5ebd8b1c2f729cdf145df24c85f70537f203
nuc-eng-env_1  |      or http://127.0.0.1:8888/?token=5b480ab878bf5ebd8b1c2f729cdf145df24c85f70537f203
```
Copy and paste the URL with `127.0.0.1` into your browser and have fun!

## Usage (Multiple Jupyter Notebook Instances)

If you do have multiple Jupyter Notebook instances running on your machine, you may encounter port conflicts between the two.

To resolve this, you'll need to change the `docker-compose.yml` file after you `git clone` this repository to a desired location.

The `ports` and `command` entries will need to be changed so the file looks like the following:

```
# Top half of file omitted for brevity
        ports:
            - "<your_port_number>:<your_port_number>"
        volumes:
            - .:/home
        command: jupyter notebook --ip='*' --port=<your_port_number> --no-browser --allow-root --notebook-dir=/home
```
Where `<your_port_number>` is the desired port you would like to use.

Then just follow the rest of the instructions in the Single Jupyter Notebook Instance section above. 


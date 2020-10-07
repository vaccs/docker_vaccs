# docker_vaccs
The Dockerfile and scripts for dockerizing the vaccs analysis

After installing docker, use the following steps to run the analysis in a docker container:

1. `git clone git@github.com:vaccs/docker_vaccs.git`
2. `cd docker_vaccs`
3. `./build_and_run`
5. `./danalyze overflow.c ov 0123456789`
 
With the docker container running, danalyze is a script that takes 2 or more parameters. Parameter 1 is the name of the C file. Parameter 2 is the name of the executable you want. The remaining parameters are the arguments to the executable. You will get a `.vaccs` file back from the analysis that you can run with the visualization with the name of the executable (2nd argument) as the prefix. In step #5 above, you would get `ov.vaccs` back from `danalyze`.

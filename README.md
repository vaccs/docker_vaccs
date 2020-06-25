# docker_vaccs
The Dockerfile and scripts for dockerizing the vaccs analysis

After installing docker, use the following steps to run the analysis in a docker container:

1. `git clone git@github.com:vaccs/docker_vaccs.git`
2. `cd docker_vaccs`
3. `./build`
4. `./drun &`
5. `./danalyze -u -r -c overflow.c -o ov 0123456789`
 
Command Syntax:

`danalyze [-u] [-r] [-m] [-s] [-f] [-c <file>]+ -o <file> <application args>`

Options:

- `-u` : analyze user code only
- `-r` : analyze register modifications
- `-m` : analyze calls to malloc/free
- `-s` : analyze secure data (beta)
- `-f` : analyze file operations (beta)

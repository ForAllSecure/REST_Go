docker run -t `docker build -q .` bash -e -x ./run_one.sh mapi project-tracking-system
docker run -t `docker build -q .` bash -e -x ./run_one.sh restler project-tracking-system
docker run -t `docker build -q .` bash -e -x ./run_one.sh dredd project-tracking-system
docker run -t `docker build -q .` bash -e -x ./run_one.sh schemathesis project-tracking-system
docker run -t `docker build -q .` bash -e -x ./run_one.sh resttestgen project-tracking-system
docker run -t `docker build -q .` bash -e -x ./run_one.sh restest project-tracking-system
docker run -t `docker build -q .` bash -e -x ./run_one.sh evomaster-blackbox project-tracking-system

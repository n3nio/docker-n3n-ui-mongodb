## DESCRIPTION

MongoDB with replication set image for WIZEYE UI.

## INSTRUCTIONS

Pull the image

```sh
$ docker pull wizeye/n3n-ui-mongodb
```

Make the data folder

```sh
$ mkdir /apps/data
$ mkdir /apps/data/mongodb1
#$ mkdir /hdd/data/mongodb2
#$ mkdir /hdd/data/mongodb3
```

Start the servers

```sh
$ docker run -i -t -p 27017:27017 -d --name mongodb1 -v /apps/data/mongodb1:/data/db wizeye/n3n-ui-mongodb
#$ docker run -i -t -p 27018:27017 -d --name mongodb2 -v /hdd/data/mongodb2:/data/db wizeye/n3n-ui-mongodb
#$ docker run -i -t -p 27019:27017 -d --name mongodb3 -v /hdd/data/mongodb3:/data/db wizeye/n3n-ui-mongodb
```

Setting up the replication set

```sh
$ docker run -i -t wizeye/n3n-ui-mongodb /bin/bash
```

Edit the replicaSet.sh file in the container.

```sh
$ ./replicaSet.sh
$ exit
```

## MANUAL BUILD

```sh
$ docker build -t wizeye/mongodb .
$ ./start.sh
$ docker run -i -t wizeye/mongodb /bin/bash
$ ./replicaSet.sh
$ exit
```

This is an updated part of FlorianPusse/OpenDS-CTS project.

# cts

Requirements:
* ISDESPOT requires `g++` 7.3 (newer should work too)
* Nav a3c requires `python` 3.6 with `tensorflow` 1.8
* HyLEAP requires both

ℹ️ You do not have to install docker or container on Linux, because you should be able to compile and run the project on most distros.

## Install (Docker)

The install scripts:
* Create `opends_data` volume
* Create `opends` image
* Create `opends_main` container
* Clone this repo into `opends_data` volume, which is mounted to `/data` of `opends_main` container

### Linux

1. Install docker and add your user to `docker` group
2. Open `/docker/` in terminal
3. Run `00*`, `01*` and `02*` scripts

### Windows

1. Install docker and add your user to an appropriate group
2. From `/docker/` folder run `w0*.bat` script

## Compile

### ISDESPOT

Run `docker exec opends_main bash compile-IS-DESPOT-p.sh` or run `compile-IS-DESPOT-p.sh` from `/data` of `opends_main` container

### Nav a3c

Not needed (Python).

### HyLEAP

Run `docker exec opends_main bash compile-hyleap.sh` or run `compile-hyleap.sh` from `/data` of `opends_main` container

## Run

### ISDESPOT

Run `run-IS-DESPOT-p.sh [port [host-ip]]`

### Nav a3c

Run `run-nava3c-p.sh`

### HyLEAP

Run `run-hyleap-0-py.sh`

Run `run-hyleap-1-c.sh [port [host-ip]]`

## Troubleshooting

AbstractController defines:
* OpenDS port = 5000
* python port = 5001

ISDESPOT (car) connects to PYTHON_PORT  of AbstractController

nava3c (Environment.py) listens on port `4000 + id + Config.AGENTS`

DiscretizedController...

HyLEAP-py listens on port 1246
OpenDS listens on port 1245 ?

HyLEAP-car connects to
* HyLEAP-py on port 1246
* AbstractController on port 5001

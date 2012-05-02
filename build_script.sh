#!/bin/bash

rm cumplyr_*.tar.gz
rm -rf cumplyr.Rcheck
R CMD BUILD .
R CMD CHECK cumplyr_*.tar.gz
rm -rf cumplyr.Rcheck
R CMD INSTALL cumplyr_*.tar.gz

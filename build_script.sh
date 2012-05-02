#!/bin/bash

rm cumddply_*.tar.gz
rm -rf cumddply.Rcheck
R CMD BUILD .
R CMD CHECK cumddply_*.tar.gz
rm -rf cumddply.Rcheck
R CMD INSTALL cumddply_*.tar.gz

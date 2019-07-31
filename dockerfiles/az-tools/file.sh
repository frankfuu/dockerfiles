#!/bin/sh
az login --service-principal -u $AZ_USER -p $AZ_PASS --tenant $AZ_TENANT
bash
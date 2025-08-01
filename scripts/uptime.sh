#!/usr/bin/env bash
#!/bin/bash

uptime -p | 
sed -e 's/up //' \
    -e 's/ weeks\?/w/' \
    -e 's/ days\?/d/' \
    -e 's/ hours\?/h/' \
    -e 's/ minutes\?/m/' \
    -e 's/ //g'

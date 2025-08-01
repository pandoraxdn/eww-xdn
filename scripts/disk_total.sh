#!/usr/bin/env bash
#!/bin/bash

df -h / --output=size | awk 'NR==2 {print $1}'

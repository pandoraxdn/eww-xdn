#!/usr/bin/env bash
#!/bin/bash

df -h / --output=used | awk 'NR==2 {print $1}'

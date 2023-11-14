@echo off
set verbose=0
if '%1'=='verbose' set verbose=1
echo "%1 - verbose = %verbose%'
::powershell -NoProfile -ExecutionPolicy unrestricted .\test_verbose.ps1 -verboseFlag %verbose%

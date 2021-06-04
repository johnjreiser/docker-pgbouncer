# Environments

Directory to store environment-specific configuration files. 

## Subdirectories

Create subdirectories within to denote configuration files for your respective production or non-production environments. 

`pgbouncer.ini` and `userlist.txt` in each directory will be copied to `/etc/pgbouncer`. A pgbouncer file placed in `/environments` will be copied into `/etc/bouncer/` overwriting whatever was in the environment subfolder. 
This is a sample program that uses golem.network to run John the Ripper -Jumbo to break an md5 password hash.

As this is a sample, the configuration is limited. It could be improved to utilize --fork within JtR or also expose additional configuration options. For now it just uses the default options and has a timeout to ensure the process will end in a timely manner - even if it does not find a solution.

usage: john.py [-h] [--subnet-tag SUBNET_TAG] [--log-file LOG_FILE] node_count timeout_seconds password

example:
john.py 4 10 unicorn

This will use 4 nodes to break the password "unicorn" with a time limit of 10 seconds

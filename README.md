# SSH Genconf

This repo contains a simple bash script which when run will create a single ssh config file from a bunch of separate config files. For example, let's say you like to keep your various configs separate so it's easier to maintain.

As an example, let's say we have 4 separate environments:

1. Dev
2. Staging
3. Production
4. Personal

With each of these having their own configs i.e. `config.{dev|staging|prod|personal}`, unfortuantley SSH will not read these as they are but instead requires a single `config` file that contains them all. You "could" copy and paste these into a file called `config` but imagine if you have over 300+ configs to manage? That would take some serious effort to manage, uespecially when it comes to updating them in the future.

The `genconf.sh` file in this repo will generate the config file for you based on the individual `*.conf` files within the current directory. You can also alter the naming format of your configs by updating the value of `format=` within the script. I might make this configuarable in the future.

Please note the keys and configs in this repo are for demo only and do not relate to specific services or real VM's.

## Running the script

To run the script, there's a couple of steps required:

1. Create your `config.*` files
2. in the directory, execute `$ ./genconf.sh` or `$ sh genconf.sh` if you've not made it executable via `chmod +x genconf.sh`
3. Validate the output in `config`

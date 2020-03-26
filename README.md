# Filamentcolors.xyz Deployment

## Local Development

1. Check out the repo locally
    * `git clone https://github.com/mcarlton00/filamentcolors-salt`
2. Install Vagrant plugin so folder syncing works
    * `vagrant plugin install vagrant-vbguest`
3. Create the Vagrant box (this will take a while)
    * `vagrant up`
4. Connect to Vagrant box
    * `vagrant ssh`
5. States can either be ran as a whole or individually
    * Full deployment: `sudo salt-call state.apply`
    * Only installing python: `sudo salt-call state.apply python`

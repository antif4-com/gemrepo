# gemrepo
## Overview
A self-hosted Ruby gem repo built using `geminabox`, `puma`, and `sinatra` deployed to docker containers via `kamal`. In addition to hosting private gems, the server is configured to act as a proxy for rubygems.org and will serve rubygems.org gems if rubygems.org is unavailable. 

Out of the box, this repo is configured to deploy to gems.antif4.com. Update this in `config/deploy.yml` if you are wanting to use this repo to deploy your own self-hosted gem repo.  

gems are stored wtihin a docker volume `gem_storage` mounted at `/app/gem-storage`. 



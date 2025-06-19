# gemrepo
## Overview
A self-hosted Ruby gem repo built using `geminabox`, `puma`, and `sinatra` deployed to docker containers via `kamal`. 

Out of the box, this repo is configured to deploy to gems.antif4.com. 

gems are stored wtihin a docker volume `gem_storage` mounted at `/app/gem-storage`. 



# gemrepo
A self-hosted gem repo built on `geminabox`, `puma`, and `sinatra` deployed to docker containers via `kamal`. 

Out of the box, this repo is configured to deploy to gems.antif4.com. Change this in `config/deploy.yml` if you want to deploy to a different server. 

gems are stored wtihin a docker volume `gem_storage`. 
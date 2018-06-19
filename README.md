# Endpoints

##Authentication

curl -X POST 'http://localhost:3001/authenticate' -d '{"email":"[email]", "password":"[password]"}' -H "Content-Type: application/json"

# Neo4j Config

Configuration

Install gems

gem install bundler
bundle
Install neo4j

rake neo4j:install[community-3.2.5]
rake neo4j:disable_auth
rake neo4j:restart
If it doesn't work, check to see if a rogue neo4j process is running with ps aux | grep neo4j, and kill it.

Database creation

rake neo4j:migrate
How to run the test suite

Install and configure the test environment

rake neo4j:install[community-3.2.5,test]
rake neo4j:config[test,6999]
Start the test environment

rake neo4j:start[test]
Update the test DB

RAILS_ENV=test rake neo4j:migrate
Run the tests

rspec


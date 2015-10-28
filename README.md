# Reverb DevOps Challenge

The goal of this challenge is to get a toy application written in ruby running on the infrastructure of your choice.

In this repo we provide a Vagrantfile which can be used to spin up a local vagrant instance running Ubuntu 12.04. However, if you are more comfortable with AWS, DigitalOcean, Linode, Rackspace...etc, you're free to spin the app up there.

The application has the following endpoints:

#### /
This is the application root. This route simply responds with 200 OK and 'Reverb.com rocks!' as the body. Once you get the app running, you should be able to `curl ip:port/` and get this response.

#### /health - returns 200 status code and OK when all prereqs are satisfied

This route tests a connection dependency and it is failing by default. It is your responsibility to make this endpoint return a 200 response code and OK body.

#### /post

This is an empty route and a bonus challenge if you're feeling up to it. The goal is to be able to post any argument and return the value of the argument as the response body.

### Time
Take your time. Research your solutions and be confident in your decisions. We'll have a discussion afterwards to talk about the whys of your decisions.

### Running tests

Included with this repository is a suite of serverspec tests. We expect to be able to run these tests and have them complete. Bonus points if you find other parts of the system we could be testing and include them with your solution.

## Deliverables

We should be able to clone your repository or unpack your archive and simply run `vagrant up`. Our test suite should pass and there should be no manual process required to hit all three endpoints.

If you don't decide to use the included Vagrantfile, send us an IP address of where we can access the running application.

## Help

Please feel free to ask us any questions if you get yourself in a bind. We believe in a teaching/learning culture where everyone has the right and freedom to ask anything. No question is considered dumb, and we're not going to mark you for asking for help.
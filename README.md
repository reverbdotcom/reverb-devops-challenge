# Reverb DevOps Challenge

#### Getting started on your workstation:

Install these tools:

1. Vagrant
2. Virtualbox

Getting your machine set up to complete this challenge is part of the challenge - if you run into problems, research them and fix them as you go.
We expect you to deliver this within 7 days. Delivering it earlier won’t have a huge impact — instead, take the time to research your solutions and be confident in your decisions.

Please feel free to ask us any questions if you get yourself in a bind.
We believe in a teaching/learning culture where everyone has the right and freedom to ask anything.

No question is considered dumb, and we're more than thrilled to have you asking for help.

#### Challenge requirements

The goal of this challenge is to get a toy application written in ruby running inside a VM in Vagrant/VirtualBox0.
This application is written in [sinatra](http://www.sinatrarb.com/) and requires a connection to Redis.

In this repo we provide a Vagrantfile which can be used to spin up a local vagrant instance running Ubuntu 12.04. The Vagrantfile puts the app into `/srv/challenge`

Clone this repo to get started. You can turn in the challenge by posting your solution publicly on your github or by emailing us a tarball of your directory.

When you finish, you should have something that:

0. Boots with `vagrant up`
1. The ruby app has to be started on boot using a process manager(we like Runit but you can try God, Monit, Upstart, SupervisorD or whatever you please)
2. The endpoints must match the requirements(see below)

The app can be started with `ruby app.rb` which will boot the sinatra app server on the default port of 4567.

There may be bugs! Researching and figuring them out is part of the challenge. If you're stuck, it's totally ok ask us so as to not spin your wheels.

We should be able to clone your repository or unpack your archive and simply run `vagrant up`. Our test suite should pass and there should be no manual process required to hit all three endpoints.

### The application has the following endpoints:

#### /

This is the application root. This route simply responds with 200 OK and `Reverb.com rocks!` as the body. Once you get the app running, you should be able to `curl ip:port/` and get this response.

#### /health

This route tests a connection dependency to Redis and it is failing by default. It is your responsibility to make this endpoint return a 200 response code and `OK, ready to rock!` in the response body.

#### /post

This is an empty route and an optional requirement. This route should accept a post request and return the arguments as the response body. See if you can return a proper response code when a post is successfully made!

### Testing your challenge

Here's how we will test your solution:

1. `vagrant up`
2. We will curl the endpoints:

```
     curl http://192.168.77.7:4567/
     curl http://192.168.77.7:4567/health
     curl -XPOST http://192.168.77.7:4567/post?foo=bar
```

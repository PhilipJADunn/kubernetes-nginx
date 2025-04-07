# Kubernetes EKS nginx

## Overview

This demonstrates running nginx on EKS and using Github Actions to deploy updates.

We opted to use existing modules from the tf registry for both the network and EKS cluster for ease of deployment.

### Improvements

There are a number of improvements we could make, including deploying a load balancer to front the traffic, as well as a Route 53 hosted zone with an ACM cert to secure traffic over HTTPS. This would also allow for traffic to be distributed more efficiently and improve application performance and availability.

For our nginx image we would include an a conf file /etc/nginx/nginx.conf to specify configuration settings for the HTTP server. We would also use a multi stage dockerfileto split our build environemtn from our final runtime environment, we would cache the build stage so we can deploy faster.

For deploying we could also set this up to use a blue/green deployment
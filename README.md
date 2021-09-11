# terraform-asg-with-alb

# Clone the repo https://github.com/cloudtechmasters/springboot-maven-course-micro-svc.git to a new server and install mvn and java

mvn clean install 

Create the .jar file and create a service for that and make it autorun on startup of instance.

Now create the AMI of that instance and note the ami-id.

Now clone the https://github.com/tushardashpute/terraform-asg-with-alb.git repo on another machine.

Replace that ami-id in variables.tf.

# terraform plan
# terraform apply

Once everything is up and running.

# Note the DNS of ALB and access the microservice using : http://alb_dns/course-svc/getAllDevopsTools



#simple website Dockerfile example

FROM ubuntu: latest
LABEL "Author"="Aditya"
LABEL "Project"="nano"
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update & apt install git -y
RUN apt install apache2 -y
CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]
EXPOSE 80
WORKDIR /var/www/html
VOLUME /var/log/apache2
ADD nano.tar.gz /var/www/html
#COPY nano. tar. g /var/www/html


#FROM ubuntu:latest: Imagine that we start with a plain, empty box, and we want to put some things inside it. We're using a special kind of box called "ubuntu" that has some basic stuff in it.

#LABEL "Author"="Ram" and LABEL "Project"="nano": On the outside of our box, we put labels like stickers to tell people who made the box (Author) and what project it's for (Project). It's like naming the box maker and what the box is for.

#ENV DEBIAN_FRONTEND=noninteractive: We tell our box how to act when we add things to it. We want it to be "noninteractive," which means it won't ask us lots of questions when we add stuff.

#RUN apt update & apt install git -y: Now, we start adding things inside our box. First, we tell our box to get some updates, like checking for new stuff. Then, we put a program called "git" inside the box. The "-y" means we want to say "yes" to everything it asks.

#RUN apt install apache2 -y: Next, we add another program called "apache2" to our box, again saying "yes" to everything it asks. Apache2 is like a web server that helps us show websites.

#CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]: We tell our box that when we start it, we want it to do a special job. In this case, we want it to start the web server and keep it running forever, like a traffic cop for the internet.

#EXPOSE 80: We tell our box to open a special door (port 80) so that people on the internet can visit our website. It's like making a window for our website to peek out.

#WORKDIR /var/www/html: We tell our box to go to a specific room (folder) called "/var/www/html" where we can put our website files.

#VOLUME /var/log/apache2: We say that our box should have a special drawer (volume) where it can keep logs or records about what's happening with the website.

#ADD nano.tar.gz /var/www/html: Finally, we put our own special file, "nano.tar.gz," into our box's room "/var/www/html." It's like adding a treasure chest with some cool stuff for our website.

#COPY nano.tar.gz /var/www/html: This line is like a note to ourselves (a comment). We tell ourselves that we could also use "COPY" to put our treasure chest in the same place. It's just another way to do it. 

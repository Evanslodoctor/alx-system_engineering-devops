#__Postmortem__

Right about 0600hrs when I saw the 0x19 Web Debugging task in my email, I was excited, they always make me feel like a hacker and I couldnt wait to see what it was this time. The issue was a dissappoiniting 500 error everytime I made a GET request to an isolated Ubuntu 14.04 container running an Apache web server hosting a Holberton Wordpress site. What caused the outage? That was the big question.

## Debugging
I had to get my debugging tool box, (yes I have one of those), got my debug partner who is also my infamous rubber duck, T-rex and set myself up to find out what caused this outage. 
I started by checking the current http processes with __ps aux | grep http__ command, gave T-rex a quick look but he gave me a blank stare, clearly we had made no progress.
I had just learnt about tmux, this command line splitting tool that makes it easy to have multiple instances running. I used __strace__ on an apache process that i found when i ran the __top__ command. 
On a third window, I curled local host to get an overview of the ongoing process while Apache serves me a 500 error.
I figure out that there was a -1 return in one of the process, __lstat("/var/www/html/wp-includes/class-wp-locale.phpp", 0x7fff71f2f1d0)__. I had found my culprit. The extra p didnt make any sense in the file extexnsion, unless it was a puppet file.
So I tried to find this function within the var/www/html files using the grep command, fixed the typo, and went on to try the Holberton endpoint with curl from the command line, and, Success!

## Prevention
This outage was caused by an application error. Such outages moving forward, please keep the following in mind:

* Always Test the application before deploying. Something about tests we dont like but they save us a lot of time in the future.
* Monitoring the server with tools like Datadog to get real time information on how your servers are doing.

The debugging task required us to write a puppet manifest, .phpp, sorry, .pp file. The typo is getting to me, I should probably monitor myself. Anyway, my manifest removes any extra p for files with such errors.
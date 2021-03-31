# starlink_dishy_grpc_web
<p>Docker that queries the gRPC service on the Starlink Dish and provides you the response (In JSON format) on it's own web server</p>

<p><b style="color: red;">IMPORTANT</b>: This does not pull historical. Simply pulls the the active up to the second information.</p> 

<p>For more information on what Starlink is, see <a href="http://starlink.com">starlink.com</a> and/or the <a href="https://www.reddit.com/r/Starlink/new/">r/Starlink</a> subreddit.</p>

<p>A large thanks to <a href="https://github.com/sparky8512">Sparky8512</a> for providing the kick start to all of this</p>

<h2>Why did I make this?</h2>
<p>There are so many open source and closed sourced software out there that can leverage JSON formatted data, I figured it would be simpler to run just a web server that would output the data in a format you can use for your own projects</p>

<h2>Prerequisites</h2>
<p>This requires basic knowledge of dockers and how to launch one. I have tried to make this as foolproof as possible.</p>

<p><b>You will need to download docker.</b>
In Linux, use your package manager to download it. (Ex: apt-get install docker) OR (Ex: apk add docker)
In Windows, please head to <a href="https://www.docker.com/products/docker-desktop" target="docker">the docker webpage</a>, download and install Docker Desktop </p>

<p>Your network must also allow you to see the dish server. Try visiting <a href="http://192.168.100.1" taget="dishy">this link</a> and you should see similar Starlink App Information.</p>

<h2>Building and Running the Docker</h2>

<p>For Linux, you can compile the dockerfile with your own settings, or simply run ./go.sh and it will attempt to build and launch the docker for you.</p>

<p>For Windows, find the go.bat file and right click and run as Administrator. This should create the image for you in Docker Desktop.  
You can then start the image from there. It MAY take up to 30 seconds to initally launch (not sure why)</p>

<h2>Getting the data</h2>

<p>If you are running it on your local PC, you can visit http://127.0.0.1:2018

If you are running it on a remote server, use it's IP, http://**YourRemoteServerIP**:2018

You should get raw JSON back. This updates every second and you can use it for any project in any language.</p>

Have fun!

# tar
The first image for the <b>Dockerization of the World</b> project.

Dockerfile file thanks to which you will create an image with a tar application for automatic archiving and compression of selected files.

Check my github for Dockerfile: <a href="https://github.com/kgodzisz/tar" target="_blank">https://github.com/kgodzisz/tar</a><br />
Check my blog for more: <a href="https://dockeryzacjaswiata.pl" target="_blank">https://dockeryzacjaswiata.pl</a><br />
Check my portfolio for more info: <a href="https://krzysztofgodzisz.pl" target="_blank">https://krzysztofgodzisz.pl</a><br />

Now, I would like to describe both mentioned options.<br />

<b>First way, own local image:</b><br />

Download from GitHub the file:<br />

<code>git clone https://github.com/kgodzisz/tar.git</code>

Create your own image in your local repository

<code>docker build -t tar .</code>

<b>An example of running when you created an image from a Dockerfile:</b>

<code>docker run --rm -e NAME=<archive_name> -v /path/to/files:/root tar</code>

<b>Second way, download the ready-made file from the Docker Hub repository:</b>

<code>docker run --rm -e NAME=<archive_name> -v /path/to/files:/root kgodzisz/tar</code>

Description of the options used in the commands:

<code><b>--rm</b></code> - the container will automatically be deleted after the task is performed;<br /> 
<code><b>-e - </b></code>sets the archive name, if you don't use your own archive name, the default name will be automatically assigned. <br />
<code><b>-v -</b></code> the address to the files you want to compress: the place where the files for archiving and compression will be available. If you don't set it to <code>/root</code>, you need to specify the appropriate directory in the Dockerfile. <br />
<code><b>tar - </b></code>the name of the created image you want to use. <br />
<code><b>kgodzisz/tar </b></code>- the address to the image on the DockerHub platform.<br />

echo "Hello, let's get started. We are going to update the server, then download the needed items, then install, and then finally start the Minecraft server."

sudo apt-get update

sudo add-apt-repository ppa:openjdk-r/ppa -y

sudo apt-get update -y

sudo apt-get install openjdk-7-jdk -y

cd

wget https://s3.amazonaws.com/Minecraft.Download/versions/1.11.2/minecraft_server.1.11.2.jar

mv minecraft_server.1.11.2.jar minecraft_server.jar

chmod +x minecraft_server.jar

echo "eula=true" > eula.txt

java -Xmx1024M -Xms1024M -jar minecraft_server.jar nogui

echo "All done!"

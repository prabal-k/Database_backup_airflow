exit
which rsync
ls
cd Desktop
ls
cd ..
ls
cd Users
ls
cd ..
ls
cd movies
ls
cd ..
ls
cd Users
ls
cd Desktop
cd Prabal
cd 'Prabal Kuinkel'
ls
cd Desktop
ls
pwd
rsync -avz '/mnt/c/Users/Prabal Kuinkel/Desktop/images' kuinkel@192.168.188.3:/home/kuinkel/Desktop/windowimage
who ssh
rsync -avz '/mnt/c/Users/Prabal Kuinkel/Desktop/images' kuinkel@192.168.188.3:/home/kuinkel/Desktop/windowimage
pwd
rsync -av kuinkel@192.168.188.3:/home/kuinkel/Desktop/tolocalmachine '/mnt/c/Users/Prabal Kuinkel/Desktop'
exit
who rsunc
who rsync
clear
ls
exit
ls
cd Desktop
ls
pwd
cler
clear
pwd
ls
rsync -av ./toremotemachine kuinkel@192.168.188.3:/home/kuinkel/Desktop/fromlocalmachine
rsync -av kuinkel@192.168.188.3:/home/kuinkel/Desktop ./fromremotemachine
ls
cd Desktop
ls
pwd
rsync -av '/mnt/c/Users/Prabal Kuinkel/Desktop/Working Priniciple.txt' kuinkel@192.168.188.3:/home/kuinkel/Desktop/ItsFOSS
exit
ps aux | grep mysql
sudo service mysql status
service mysql start
service mysql status
sudo apt install mysql-server
sudo mysql
CREATE DATABASE airflow_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
sudo mysql
ls
ls
source afenv/bin/activate
export AIRFLOW_HOME=/home/prabal
airflow webserver -p 8080
airflow users create --username root --firstname prabal --lastname kuinkel --role admin --emailprabalkuinkel10@gmail.com
airflow users create --username root --firstname prabal --lastname kuinkel --role admin --email prabalkuinkel10@gmail.com
airflow users create --username root --firstname prabal --lastname kuinkel --role Admin --email prabalkuinkel10@gmail.com
airflow webserver -p 8080
ls
pwd
ls
mkdir airflow
ls
ls airflow
sudo apt install python3
sudo apt install python3-pip
pip
sudo apt install python3-pip
python3 install pip
sudo apt install pip
sudo apt update

sudo apt install python3-virtualenv
python3 -m venv afenv
sudo apt install python3-venv
python3 -m venv afenv
source afenv/bin/activate 
pip install apache-airflow
pwd
ls
export AIRFLOW_HOME=/home/prabal
rmdir airflow
ls
airflow db init
ls
mkdir dags
mkdir bashscripts
ls
nano bashscript
ls
code .
rm bashscript
ls
cd bashscripts
ls
cd ..
mkdir backup
ls
sudo cd bashscripts
cd bashscripts
sudo chmod +x backup.sh 
sudo chmod +x delete.sh 
./backup.sh 
pwd
./backup.sh 
airflow scheduler
sudo apt install bc
airflow webserver -p 8080
ls
source afenv/bin/activate
export AIRFLOW-HOME=/home/bin
export AIRFLOW_HOME=/home/bin
airflow webserver -p 8080
export AIRFLOW_HOME=/home/prabal
airflow webserver -p 8080
ls
cd ..
ls
cd prabal
ls
cat airflow-webserver.pid 
kill 16643
ls
code .
airflow webserver -p 8080
ls
source afenv /nin/activate
source afenv /bin/activate
source afenv/bin/activate
airflow webserver -p 8080
airflow schedule
airflow webserver -p 8080
export AIRFLOW_HOME=/home/prabal
airflow scheduler
ls
pid airflow-webserver.pid 
cat airflow-webserver.pid 
kill 21399
ls
pwd
ls
code .
ls
cd ..
ls
cd prabal
ls
git init 
code .
git add .
git status
git commit -m "Added the dags for backup"
git status
git config --list
git config --global user.email "prabalkuinkel10@gmail.com"
git config --global user.name "prabal-k"
git log --oneline
git commit -m "Added dags for database_backup"
git remote add origin git@github.com:prabal-k/Database_Backup.git
git branch
git push -u origin master
ls
source afenv /bin/activate
source afenv/bin/activate
export AIRFLOW_HOME=/home/prabal
airflow standalone
exit
ls
ls -a
git status
rmdir rf .git
ls -a
rmdir -rf .git
rm -rf .git
ls -a
git init
ssh -keygen -t rsa -b 4096 -C "prabalkuinkel10@gmail.com"
ssh-keygen -t rsa -b 4096 -C "prabalkuinkel10@gmail.com"
cat /home/prabal/.ssh/id_rsa
code /home/prabal/.ssh/id_rsa.pub
cd ..
ls
cd prabal
ls
git status
git add .
git status
git commit -m "added the dags for database_backup"
git remote add origin git@github.com:prabal-k/Database_Backup.git
git branch
git push -u origin master

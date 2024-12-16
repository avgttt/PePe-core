## Running a Masternode

Once you have accumulated 10,000,000 PEPEW you are eligible to become a participant in the network governance - and earn part of the block reward. 

### Linux wallet masternode:
First, enable port 8833
```
sudo ufw allow 8833/tcp
```

To download the latest wallet version (2.4.7.1) and unpack it from a ubuntu command line terminal, use the following
```
mkdir pepew2471 &&
sudo chmod +x -R pepew2471 &&
cd pepew2471 &&
wget -c https://github.com/MattF42/PePe-core/releases/download/v2.4.7.1/PEPEPOW-v2.4.7.1--release-cli-x86_64-linux-gnu.tgz -O - | tar -xz &&
cd &&
sudo chmod +x -R pepew2471 &&
cd pepew2471
```

#### **1) Create a new wallet and transfer an exact total of 10,000,000 PEPEW!**
*(Note: It has to be 10M no more or less! You must also wait for the Block confirmation to be greater than 15)*
You may use the GUI to receive your coins, but then you need to run the "PEPEWd" before proceeding. You can do so in the terminal with the following command
```
~/pepew2471/PEPEPOWd
```

#### **2) Synchronize the block chain**
*(Note: On GUI GNOME you can right-click within the folder and select "open in terminal")*

Before you can start your node, your daemon must be fully synced. To check how many blocks you already have you can use 
```
~/pepew2471/PEPEPOW-cli getblockcount
```

When you are fully updated you can confirm your balance is exactly 10,000,000 by running the following command
```
~/pepew2471/PEPEPOW-cli getbalance
```

Once you have done that, you are ready to get your genkey which will be used to setup your masternode.
```
~/pepew2471/PEPEPOW-cli masternode outputs &&
~/pepew2471/PEPEPOW-cli masternode genkey
```

#### **3) Open the PEPEPOW.conf file and write to it:**

Open PEPEPOW.conf
```
sudo nano ~/.PEPEPOWcore/PEPEPOW.conf
```

Write the following
```
Example:
masternode=1
masternodeprivkey=PUTHEREHTHESTRING_YOU_GET_FROM_GENKEY_NOT_THIS_ACTUAL_STRING
externalip=YOUR.IP.ADDR.RESS_NOT_THIS_ACTUAL_STRING
```
*(Note: The IP address of the node server must be a public IP address, and port 8833 must be enabled on the server!)*

#### **4) Open the masternode.conf file and write to it:**

Open masternode.conf
```
sudo nano ~/.PEPEPOWcore/masternode.conf
```

Write the following
```
Example:
mynodename ip:8833 masternodeprivkey masternode outputs[1]  masternode outputs[2]
pepepow YOUR.IP.ADDR.RESS:8833 PUTHEREHTHESTRING_YOU_GET_FROM_GENKEY_NOT_THIS_ACTUAL_STRING THE_FIRST_LONG_HEX_STRING_YOU_GET_FROM_MASTERNODEOUPUTS  THE_NUMBER_YOU_GET_FROM_OUTPUTS
```

#### **5) Restart wallet**
```
sudo reboot
```

#### **6) Start master node:**
```
~/pepew2471/PEPEPOW-cli masternode start-all
```

#### **7) Check Status**
```
~/pepew2471/PEPEPOW-cli masternode status
```

# PEPEPOW

PEPEW (PEPEPOW) is a cryptocurrency based on memes and utilizes the Dash hybrid PoW / Masternode consensus algorithm for network security and decentralization. The coin is named after a popular internet meme that represents a frog, hence its mascot is also a frog who wants to dig for coins. Originally - this coin was created by a developer who clearly did not have the communities best interest in mind. An update was released which broke the consensus and then the developer abandoned the project.

Following the initial release and the results of developer abandonment - the community combined with a new dev hard forked this coin to take over the project for the people. This project is now owned and maintained through a collaborative community effort.

With enough support - PEPEPOW is set to become the second most popular proof-of-work (PoW) driven meme coin, behind DogeCoin!<p>

 <div align="center" style="display: flex; flex-wrap: wrap; justify-content: center; align-items: center; gap: 1em; margin: 4em 0;">
  <img src="https://github.com/MattF42/PePe-core/blob/Reboot/logo.png" style="width: 400px; max-width: 600px; flex-grow: 1;" />
</div>

## <br> Important links: <br>
 - Website [PEPEPOW](https://pepecore.wordpress.com/)
 - Community Block Explorer [PEPEPOW-EXPLORER](https://explorer.pepepow.org/)
 - M4P Block Explorer [PEPEPOW-EXPLORER](https://explorer2.pepepow.org/)
 - Join the Community in [DISCORD](https://discord.gg/wHFMdbjP)
 - Github [GITHUB](https://github.com/MattF42/PePe-core/)
 - Twitter - [TWITTER](https://twitter.com/PEPEWCommunity)
  
  
## <h2><strong>Coins Specifications:</strong></h2>
<table>
<tbody>
<tr>
<td>Coin Name</td>
<td>PEPEPOW [PEPEW]</td>
</tr>
<tr>
<td>Algorithm</td>
<td>memehash</td>
</tr>
<tr>
<td>Block Time</td>
<td>20 Sec</td>
</tr>
<tr>
<td>Max Supply</td>
<td>90B</td>
</tr>
<tr>
<td>Network Port</td>
<td>8832</td>
</tr>
<tr>
<td>RPC Port</td>
<td>8833</td>
</tr>
<tr>
<td>Subsidy halving interval</td>
<td>See table below</td>
</tr>
<tr>
<td>Block initial reward</td>
<td>100,000  PEPEW</td>
</tr>
<tr>
<td>Super block reward</td>
<td>Randomly appearing 2x reward and 5x reward within 1000 blocks</td>
</tr>
<tr>
<td>Block reward structure</td>
<td>After block 129601 Pow-75%, Masternode-20% Dev-5%</td>
 <td>After v2.2 HardFork (c block 384000) Pow-65%, Masternode-35%</td>
</tr>
</tbody>
</table>

<HR>
## HARD FORK on 18th August 2023 to version 2.2.0.1 Protocol version 70301<BR>
Future and Historical Reward Structure:
<TABLE>
<THEAD>
<TD>Blocks</TD><TD>Reward</TD></THEAD>
<TBODY>
<TR>
<TD>1-129600</TD><TD>100000</TD></TR>
<TD>129601-259200</TD><TD>50000</TD></TR>
<TD>259201-385000</TD><TD>5000</TD></TR>
<TD>>385000-514600</TD><TD>25000</TD></TR>
<TD>>514600-644200</TD><TD>12500</TD></TR>
 <TD>>644200-773800</TD><TD>6250</TD></TR>
<TD>>773800+</TD><TD>5000</TD></TR>
</TBODY>
</TABLE>


## DONATIONS:

The original dev fee was removed from this chain and it is now entirely community-maintained / run. To thank or support those who contribute to this project please consider making a contribution. Any amount helps! 

Foztor : PMqJemuUn1jNAyLQRckLykYhcUfSLM9izq

Setvin : PNT3qZ2sshPvyS5egaCpfEQZmfHoZEA1Bu

Mining4People : PNb6mBbGdudbM7UXGouazzUQZZTf9kzReW 

## Running a Masternode

Once you have accumulated 10,000,000 PEPEW you are eligible to become a participant in the network governance - and earn part of the block reward. 

### Linux wallet masternode:

**1) Create a new wallet and transfer an exact total of 10,000,000 PEPEW!**
*(Note: It has to be 10M no more or less! You must also wait for the Block confirmation to be greater than 15)*
You may us the GUI to recieve your coins, but then you need to run the "PEPEWd" bfore proceeding. You can do so in the terminal with the following command
```
./PEPEPOWd
```

**2) From a terminal within the wallet directory**
*(Note: On GUI GNOME you can right-click within the folder and select "open in terminal")*
```
./PEPEPOW-cli masternode outputs &&
./PEPEPOW-cli masternode genkey
```

**3) Open the PEPEPOW.conf file and write to it:**
```
Example:
masternode=1
masternodeprivkey=PUTHEREHTHESTRING_YOU_GET_FROM_GENKEY_NOT_THIS_ACTUAL_STRING
externalip=YOUR.IP.ADDR.RESS_NOT_THIS_ACTUAL_STRING
```
*(Note: The IP address of the node server must be a public IP address, and port 8833 must be enabled on the server!)*

**4)Open the masternode.conf file and write to it:**
```
Example:
mynodename ip:8833 masternodeprivkey masternode outputs[1]  masternode outputs[2]
pepepow YOUR.IP.ADDR.RESS:8833 PUTHEREHTHESTRING_YOU_GET_FROM_GENKEY_NOT_THIS_ACTUAL_STRING THE_FIRST_LONG_HEX_STRING_YOU_GET_FROM_MASTERNODEOUPUTS  THE_NUMBER_YOU_GET_FROM_OUTPUTS
```

**5)Restart wallet**

**6)Start master node:**
```
./PEPEPOW-cli masternode  start-all
```

**7)Check Status**
```
./PEPEPOW-cli masternode status
```

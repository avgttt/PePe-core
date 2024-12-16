# How to mine PEPEPOW (memehash) on Windows

## Introduction:
This guide will be a simple and basic walk-through for new or inexperienced window users to begin mining the proof of work cryptocurrency PepePoW for the first time. Proof-of-work cryptocurrencies are valued because they are decentralized and more fair and equitable due to the ability to earn and participate in the network by mining.
  
You will need to set up a wallet to store your PepePoW coins, prepare the Windows environment to mine, download the mining software, and then use the interface on the pool website to view your mining earnings after you have started mining. Mining with a pool is recommended for most users, especially if you have something like a laptop or just not many graphics cards.
  
By mining shared with the pool, you get part of the block working together with other miners. You get a percent of the block based on the weight and values of the shares your computer hardware delivers to the pool, based on its overall efficiency.
  
PepePoW is a decentralized cryptocurrency with no central authority. As a miner, you are maintaining the ledger ensuring transactions are legitimate, and also getting rewarded for your effort. This means you have an easy and low-risk way to gain exposure and equity in most cryptocurrencies, simply by using the power of your own computer!

## Creating your wallet
If you have not already and would like to set up your PepePoW wallet - you can find the official wallet release below:
https://github.com/MattF42/PePe-core/releases

As a wallet owner, you are the sole custodian of your own funds, if you fail to secure your wallet data file properly you will lose access to your funds. That means If it is lost or stolen, no one can help you restore your funds! They will be lost forever!
  
If you already have a wallet from another crypto, for example, Bitcoin Cash, and would prefer to mine PepePoW with your GPU and get paid out in Bitcoin Cash, you may do that as well. The section about setting up SRBMiner listed below will teach you how to connect your miner, Make sure to remember to change the username and password settings to the appropriate BCH wallet when you setup your miner.
 
## Preparation:
You will need to prepare the folder where you will install the mining software. If you are new to mining and want to try on a Windows operating system, please keep in mind that Windows anti-virus is incredibly hostile to all forms of mining and will always flag miners as malicious software, even if you have downloaded it from a trusted source such as GitHub. If you find that you are having trouble getting mining software to run on Windows, try this workaround:
 
Press the "Windows" key on the taskbar or on your keyboard. Once the menu pulls up, start typing in "exclusions" on your keyboard. The tab will automatically recognize your typing and a page to the Windows settings for anti-virus exclusions will appear. Click on this option.

This will take you to the "virus and threat protection" options menu. Under "Virus and threat protection settings" there is a blue link that says "manage settings." Click this and then scroll down until you find "Exclusions." Click on the blue link that says "add or remove exclusions"
  
This will bring up another tab, which has a box with a plus arrow stating "+ add an exclusion" Clicking this gives a drop-down selection. Please select the option "Folder." Now a pop-up appears that will show you the entire computer directory. Navigate to the "documents" director and create a new folder by right-clicking in the inside area and choosing "new folder." Name this new folder anything like "mining" and then choose "Select folder" with the option on the bottom right until you have chosen this new folder.
  
Once you are done you will return to the Windows security tab which we were in before and you should now see the new exclusion folder directory path appear. This will allow any program running from this folder to avoid antivirus scans which may affect mining, but not affect the security of the rest of your system.
Another thing to consider doing at this point is taking advantage of a tool known as "O+O Windows Shutup." This removes certain tasks that Windows uses to track you. This adds security to your computer, as well as freeing up a bit of your processor to mine more efficiently than would otherwise be running these tasks.
  
O+O Windows Shutup for removing Windows bloatware:
https://www.oo-software.com/en/shutup10

Windows 10 Debloater
https://github.com/Sycnex/Windows10Debloater
 
Now that you have created an area within your files to safely store and run mining software, download SRBMiner.

## SRBMiner for GPUs
Download and extract SRBMiner into the exclusion folder you created earlier
https://github.com/doktor83/SRBMiner-Multi/releases

After extracting, look in the folder and find the list of example batch files. Right-click to Rename one of the available example batch files anything that you will be able to remember. Then right-click again and click "Edit" (pick notepad if asked). Erase the example text and Copy and Paste from the below code instead. Remember to change the YOUR_WORKER_NAME value to your wallet address. This is how the pool knows where to send your rewards for mining.

```
setx GPU_MAX_HEAP_SIZE 100
setx GPU_MAX_USE_SYNC_OBJECTS 1
setx GPU_SINGLE_ALLOC_PERCENT 100
setx GPU_MAX_ALLOC_PERCENT 100
setx GPU_MAX_SINGLE_ALLOC_PERCENT 100
@echo off
cd %~dp0
cls
SRBMiner-MULTI.exe --disable-cpu --algorithm memehash --pool stratum-eu.pepepow.foztor.net:3332 --tls true --wallet YOUR_WALLET_ADDRESS --password RIG_NAME
pause
```

Once this is complete, hit "File" and "Save as." Notepad will default the batch file as a text file, which will not run and instead will just open as a text file. To correct this you must change the "save as type" from .txt to "All files" or the batch file will not work. (see the example image below)
Remember to "save as" the batch file as "all files"

You can right-click on the batch file, and send it to the desktop (shortcut) to create a shortcut link on your desktop to your GPU mining software. Close out of everything and attempt to start the shortcut batch file on your desktop. It should start the SRBMiner in a command line box. It may ask you to accept some internet connection settings. The software will spit out a lot of information, so take a few minutes to observe. If everything was configured correctly you should see that your miner has connected to the pool, is hashing, and is also sometimes finding shares.

Now that you know the connection and software works, you may want to spend some time to more finely tune your GPU devices.
The best tool to adjust your GPU clock rate on Windows would be MSI afterburner for both AMD and NVIDIA:
https://www.msi.com/Landing/afterburner/graphics-cards

This part may require a lot of testing to make perfect. At the end of this guide, there are social links where you can get more detailed assistance with your specific hardware.

After you are satisfied with your clock rates and can confirm you are hashing, head over to "https://pepepow.foztor.net/" and type in your wallet address under the "wallet" tab. You will see a variety of detailed information, primarily your workers and your percentage of shares submitted. Once the pool has found a block, you will earn a share of the rewards!

## Conclusion:
You made it to the end, great job! You are now mining with your GPU , maximizing the profitability of your computer's hardware!

Click here to learn how to mine with your CPU and get paid in PEPEW
PepePoW Discord: https://discord.gg/9BeGufq9ft
SRBMiner Discord: https://discord.gg/az6wFepY8s

How to sell your accumulated coins? Try XeggeX
https://xeggex.com?ref=64a1904880f795c0d59a288b
XeggeX Discord: https://discord.gg/dEAyJEHdHR

Did you find this article to be informative? You should consider supporting decentralized initiatives by rewarding those who contribute to the ecosystem. By using the refcodes in this guide or even contributing a small donation - you would give me a big smile!

My PePePoW Donation Address:
  PT1JWC8cS89z3KFwRL46HS9ghjzSEJsYZ1
Don't have any PEPEW yet?
  bitcoin: bc1q5elx437hnz0l9qau8afxj9l234ps6lj60tr35s
  litecoin: ltc1qdyt7augpzdkk4fzvaerrj3ren8pvvjhvy8cyz6
  bitcoincash: qr609gkq7mnjqzh9j0nwjgy3xl4l6ezzmq7xj43mm4 
  dogecoin: DCnXGACgdYoNngjoufPTQ1DDNk71qGBW9D
  monero: 86nye5vAP182z5tcDcmmapKsiFSNHnbyeGb7cDPnC4z4Bx1nfkVtAdEZwKy4Mde1TfNAaLuxc944kFA8QAXuE7gsHJkDefL

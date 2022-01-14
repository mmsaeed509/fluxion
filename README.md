# install fluxion2 on Garuda Linux


### Downloading fluxion2
`git clone https://github.com/mmsaeed509/fluxion.git`

or using ***github-cli*** `gh repo clone mmsaeed509/fluxion`

### Installing dependencies

`chmod +x install.sh && sudo ./install.sh`

### Unpacking & Run fluxion2

`unzip fluxion.zip`

`cd fluxion`

run fluxion2 `sudo ./fluxion.sh`

## If you encounter an issue, create a new issue so I can help you.

# Issues

***[mdk3](https://github.com/charlesxsh/mdk3-master)*** may not be installed, so you have to install it manually
`cd ..` 

`cd mdk3`

`make`

`sudo make install`

then `cd ..`


`cd fluxion`

`sudo ./fluxion.sh`

it will work fine :smiley:

#

***Managed Mode*** may not work, so you have to start it manually
when you run fluxion2, fluxion2 change wifi card mode form ***Managed Mode*** to ***Monitor Mode*** and when you stop fluxion2 ***Managed Mode*** may not work

to restart ***Managed Mode***

`iwconfig`

```bash
lo        no wireless extensions.

enp7s0    no wireless extensions.

wlp8s0    IEEE 802.11  ESSID:off/any  
          Mode:Managed  Access Point: Not-Associated   Tx-Power=22 dBm   
          Retry short limit:7   RTS thr:off   Fragment thr:off
          Power Management:on
          
mon0      IEEE 802.11  Mode:Monitor  Frequency:2.437 GHz  Tx-Power=-2147483648 dBm   
          Retry short limit:7   RTS thr:off   Fragment thr:off
          Power Management:on   

```
my wifiCard `mon0` 

![](/Images/mon0.png)

`sudo airmon-ng stop mon0`

`sudo service networking restart`

`sudo service network-manager restart`







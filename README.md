![server](https://img.shields.io/badge/host_your_own-vanilla%2B-%23614538?style=flat-square&logo=serverless&logoColor=green&labelColor=%23292929)  ![Static Badge](https://img.shields.io/badge/no_judgement!-fork%20your%20own-%23614538?style=flat-square&logo=pipecat&logoColor=white&labelColor=%23292929)  ![git](https://img.shields.io/badge/v1.06-26.3-%23614538?style=flat-square&logo=git&logoColor=orange&labelColor=%23292929)



hi! welcome to me and my friends' minecraft server.



this includes a comprehensive guide for installing the server's mods and resource packs, so you can experience the definitive setup whenever the server is hosted.



if you want to fork this server, replace `management-server-secret=REPLACE_ON_RESTORE` in server.properties with a newly generated secret of your own.



then it's all yours, buddy-o!



# for server players



there are a few ways to do this, so i'll go through them for you right now. after both guides, refer to the [installation rundown section](#fabric-installation).



you must include all of the mods that are included in `usermods`, or else the server will immediately boot you out as soon as you join, due to these mods changing the server's behavior.



## the lazy strategy



first, if you just want the cut and dry method, i have made two google drive folders for this exact purpose.



using this method, you won't have to use an external GitHub tool or scraper to download a singular folder from the directory.



this method is perfect if you want to conserve disk space while only selecting the things that you want to download, while keeping the essentials.



- [grab the resource packs](https://drive.google.com/drive/folders/1q3vXHwVV7TmLLJsxDZAJ6qK7qWEcqZbd?usp=drive_link)

- [download the mods](https://drive.google.com/drive/folders/1UKicg98dCcDUq9jyxBICJqIZIptLNY2L?usp=drive_link)



the google drive folder holds a private copy of the vanilla server, so i'm not going to share it here. although, i will make it public if people want me to.



all you're going to want to do now is extract the .zip file to a common place on your disk (i.e. `Desktop`, a folder in `Documents`, or a folder that lives in your home [`C:\Users\%USERNAME%`] directory.)



once that is all set and done, you can move to the [installation section](#fabric-installation)!



## the involved approach



if you're willing to download the entire repository, download its main branch [here](https://github.com/onyxiferous/bob-lefromage-mc/archive/refs/heads/main.zip). it's about 150 MB, so consider steering clear with the [google drive method](#the-lazy-strategy) if you don't have disk space left. otherwise, continue onward.



once it finishes downloading, you'll get a `.zip` file named `bob-lefromage-mc-main.zip`, and we can move onto step one if you're ready to get this thing set up.



1. extract the .zip file to a common place on your disk (i.e. `Desktop`, a folder in `Documents`, or a folder that lives in your home [`C:\Users\%USERNAME%`] directory.)



2. first of all, you're going to want to look in the `usermods` folder ([NOT](#why-cant-i-just-use-the-mods-folder) the `mods` folder unless you're forking the server!)



3. if you also want resource packs or any extras, just open the respective `resourcepacks` and `extras` folder, preferably to the side so you aren't lost in a sea of tabs.




4. you're done for this approach. now you can just move onto the [installation section](#fabric-installation)!




## fabric installation



if you don't have an instance for the server already, create one or reuse one of your own via your mod manager. (make sure there are no conflicting mods, though!) the target minecraft version is `26.3`, the latest version as of october 27, 2026, and the fabric version should optimally be `0.20.1` for the best compatibility.



open up the mod manager of your choice, and navigate to your instance's folder. it's usually to the side or top of your mod list. if you can't find it, just refer to your mod manager's specific guide.



1. prep your `usermods` and `resourcepacks`/`extras` (optional, for best experience) and select them both with `Shift` in your file manager.

2. drag the ones you want within the `usermods` and `resourcepacks` of your instance.

3. you're done!



also, the `extras` and `resourcepacks` folder (not the extra mods, though) come in organized little folder groups, like animations, enviornment, and ui to make finding things easier. simply go into each folder, and drag over the resource packs that you want.



## why can't i just use the `mods` folder?



you technically *can*, but the `mods` folder adds optional performance and CPU tweaks so the server has an easier time running Minecraft for everyone.



it also includes the `BetterHud` mod, which is probably not needed because the server entirely handles the little panel that shows up in the top left if you choose to download the resource packs if provided.



it's only recommended if you are having problems with your current setup, or if you want additional performance tweaks if you're running this on older or less performant hardware.



# limitations



i wanted to make this a little server for me and my friends to play on, but it'll probably get overloaded quickly if multiple players (15-20+) were playing, although i haven't tested that theory yet.



i made this little repository open source so you can make your own server with the touch of bob lefromage as well as vanilla+ and optional QoL mods. redistribute it, make it your own, whatever. i don't care as long as you aren't infringing copyright.



i may expand this server in the future. i'm not really sure yet, though. maybe expand upon vanilla+ mods and some game-changing mods, like extra biomes?



maybe when we start building stuff and making the world ours. i'm open to suggestions, so throw them at me!



# hosting



before we get started, it's highly advisable to host this on a web platform like oracle cloud or AWS. i won't cover port forwarding here, and you can figure that out on your own if you're trying to do this on your home internet (but why would you want to do that?) also, the `BetterHud` mod downloads from the internet via an accessible IP tunnel, NOT a `localhost` provider, unless you want to exclude that mod in your own build.



by continuing, i assume that you already have a virtual machine spun up with a decent amount of RAM and CPU capability. well, let's get started if that's the case!



## you will need...



- `Ubuntu Linux` or a Linux adjacent operating system (preferably headless), having enough RAM for Minecraft and mods.
- `Java 25 JDK`, required for Minecraft 26.3.
- `Git`, for cloning and managing the repository.
- `curl` and `unzip`, useful tools for downloading/extracting files over the web.
- a text editor such as `nano` or `Visual Studio Code`.
- `tmux` (optional), for keeping the server running after disconnecting from `SSH`.

 run this command to download all of the tools you will need.

```bash
sudo apt update
sudo apt install openjdk-25-jdk git curl unzip nano tmux
```

then check that everything is in working order:

```bash
java -version
javac -version
git --version
```

## downloading the repository

download the main branch from github using any of these two methods. you do not need to use both, only one.

option A: download the ZIP file directly via `curl`.

```bash
cd ~
curl -fL https://github.com/onyxiferous/bob-lefromage-mc/archive/refs/heads/main.zip \
  -o bob-lefromage-mc-main.zip
```

then extract it and enter the repository directory:

```bash
unzip bob-lefromage-mc-main.zip
cd bob-lefromage-mc-main
```

option B: clone with git.

this option is recommended if you plan to change how the server works or contribute changes to the project later.

```bash
cd ~
git clone https://github.com/onyxiferous/bob-lefromage-mc.git
cd bob-lefromage-mc
git pull
```

## preparing your own server

before we start to run commands, we have to know that the main directories all serve different purposes.

`mods/` - mods and performance improvements intended for *the server*
`usermods/` - mods that players require in *their* Minecraft client
`config/` - configuration files for the included mods
`resourcepacks/` - optional resource packs for players
`extras/` - additional optional mods and resource packs
`start.sh` - script used to launch the server
`server.properties.example` - template for your server's settings

keep the distinction between `mods/` and `usermods/` in mind. while `usermods/` will be used on the client, `mods/` is not intended for client usage and is intended for server usage to use mods like `spark` for performance profiling. therefore, `usermods/` should never, ever be used in a server enviornment.

## installing fabric and configuring

the repository's `start.sh` file expects a file named `fabric-jre-server_26.3.jar`. you'll be installing the Fabric launcher for Minecraft `26.3` and Fabric loader `0.20.1`. it's time to `curl`!

```bash
curl -fL \
  https://meta.fabricmc.net/v2/versions/loader/26.3/0.20.1/1.1.2/server/jar \
  -o fabric-jre-server_26.3.jar
```

the filename is important because `start.sh` does not dynamically refer to the `.jar` file that is compiled prior to the server being online - `start.sh` refers to the `.jar` file explicitly. keep this in mind while it downloads.

you should now copy the example configuration so `server.properties` takes place of the initial file `server.properties.example`.

```bash
cp server.properties.example server.properties
nano server.properties
```

review the settings and personalize them to your liking.

- if needed, change the server MOTD to better suit your community.
- keep `online-mode=true` unless you have a fancy proxy setup.
- decide whether to use the whitelist and configure player access accordingly.

replace the placeholder for `management-server-secret` with a newly generated secret of your own using `openssl rand -hex 32`. keep this secret safe. ensure `.gitignore` does not include this credential within a file.

it turns out Notch wants to have his cake and eat it too, because we need to review and accept the [Minecraft End User License Agreement](https://www.minecraft.net/eula). run the server for the first time:

```bash
chmod +x start.sh
./start.sh
```

after reaching the point where the server stops you, quite rudely I might add, it should have created an eula file. open it:

```bash
nano eula.txt
```

simply replace

```properties
eula=false
```

to

```properties
eula=true
```

and you should be all set. just remember to save the file and exit.
now it's time to start our server. simply run the executable `start.sh` a second time.

```bash
./start.sh
```

the included script starts Java with a heap of 1 GB and a maximum heap of 4 GB.

```-Xms1G -Xmx4G```

if needed, replace those values in `start.sh` if your machine runs on strong liquor and crushed dreams. make sure to leave  just enough memory for Ubuntu and other processes to run.

## CIDR configuration


maybe disregard this step a bit if you are using your own port forwarding and/or firewall method. i'm using oracle cloud in this example, but it should not differ that much from your own server hosting provider.



open up your `SecurityList` for your VCN/VLAN provider. then, navigate to the respective Security rules section.



within your `Ingress Rules`, you need three central CIDR addresses for handling web requests and redirection (according to my setup) and we will be creating two new CIDR addresses - one for handling server join requests and one for hosting `BetterHud` resource packs if you are using it.



1. create a new CIDR source type with the source CIDR `0.0.0.0/0`, and set the IP protocol to `TCP`. leave the source port range blank and put the destination port range to `25565`, which is the default proxy/LAN Minecraft uses to connect players. for my description, i just put `Minecraft Java`.

2. create another CIDR source type, leaving the source CIDR as `0.0.0.0/0` and the IP protocol `TCP`. also leave the source port range blank, and this time set the destination port range to `8163`. this is the port `BetterHud` uses to communicate to download `.zip` files for resource packs and request clients to reload interfaces. i used `BetterHud bridge` for my description, or you could use `BetterHud resource packs` or something similar.

## firewall configuration

if your virtual machine or host PC doesn't have a firewall, you can probably skip this step. for Ubuntu, the distro I'll be using,  we will be using the `ufw` (uncomplicated firewall). first off, check the status of it:

```bash
sudo ufw status
```

if it's active, allow incoming Minecraft Java Edition connections:

```bash
sudo ufw allow 25565/tcp
sudo ufw status numbered # verification
```

if you're using SSH, make sure to not lock yourself out of the server:

```bash
sudo ufw allow OpenSSH
sudo ufw allow 25565/tcp
sudo ufw enable
```

that should be it for firewall configuration. note that VNIC and firewall settings are not interchangeable and serve different purposes instead of just allowing IPs through.

## server ip configuration

once the server has started, through another terminal, run:

```bash
sudo ss -ltnp | grep ':25565'
```

port 25565 should be listening on TCP. if it isn't, check that has started with no errors and that `server.properties` points to the correct port with no typos.
run this command to see if any network errors are evident:

```bash
grep -iE 'error|exception|failed|server started' logs/latest.log | tail -n 50
```

from a different machine, test the server's public IPv4 address:

```bash
nc -vz YOUR_SERVER_IP 25565
```

replace `YOUR_SERVER_IP` with the public IP address of the actual VM, not your own machine.

a successful TCP connection should serve as a green light, but it doesn't guarantee that Minecraft will be reachable. double check that you have CIDR rules configured correctly, and that everything points to the right place.

## optional BetterHud integration

optionally, you can include `BetterHud`, a lightweight interface tool that generates resource-packs for players. it does not require players to download anything on their machine in order for it to show up.

BetterHud's configuration is usually stored in the server's dedicated directory if you have the mod:

```text
config/betterhud/
```

this file controls which HUDs and interface items are enabled by default. the file should include something like this at first glance and shouldn't need to be changed unless you want to modify it:

```yaml
default-hud:
  - server_info_hud

default-popup: []

default-compass: []
```

the file shows the `default-compass` entry, but it has been disabled and i don't remember how i did it, so good luck trying to figure that one out.

HUD layouts are usually stored in the `layouts/` directory - here is an example.

```text
config/betterhud/layouts/server-info.yml
```

this layout can contain the server information elements, such as coordinates, server TPS, and CPU usage using the provided [placeholder text dependency](https://placeholders.pb4.eu/user/mod-placeholders/#luckperms).

after changing the configuration, restart the server if required by the installed BetterHud version, or use its supported reload mechanism.

BetterHud may rely on generated or distributed resource-pack assets for its custom interface elements. the server's configuration files alone do not necessarily deliver those assets to clients.

first, determine how the installed BetterHud build expects its resource pack to be generated and distributed. follow the instructions for the exact BetterHud version used by the server.

-  configure the HUD and its assets on the server.

- generate or export the BetterHud resource pack using the supported workflow for that build.

- verify that the output is a valid Minecraft resource-pack ZIP.

- distribute the pack to players, or host it at a direct-download URL if the version supports automatic server resource-pack delivery.

the resource pack should download onto the client if you have configured the routing tables and firewall successfully. hopefully.

you can refer to [toxicity188's documentation](https://toxicity188-betterhud.mintlify.app/introduction) for BetterHud instead, as i have a headache trying to understand it.

## final server adjustments

wait for Minecraft to finish loading at this point. wait until the script says it has finished starting the server and then determine whether there are any issues you need to fix; whether that be with incompatible mods or configurations. libraries and dependencies should have been created for you, including the required `mojang` developer tools.

if you want to keep your server alive if you decide to close your `SSH` session, use `tmux`. start a new named session:

```bash
tmux new -s minecraft-server
```

then `cd` into whatever your project is called and run the `start.sh` file to record actions:

```bash
cd ~/bob-lefromage-mc
./start.sh
```

detach from the session with `Ctrl+B`, then press D. to reconnect later, you can always run:

```bash
tmux attach -t minecraft
```

make sure that you use the console's dedicated `stop` command for a clean shutdown rather than killing the Java process with `Ctrl+C` and risking data or world corruption.



## if you're stuck, refer to...

-   [this repository](https://github.com/onyxiferous/bob-lefromage-mc)
-   [fabric server launcher](https://fabricmc.net/use/?page=server)
-   [fabric documentation](https://docs.fabricmc.net/)
-   [minecraft EULA (if you even care to read it)](https://www.minecraft.net/eula)

enjoy your new custom server if all went according to plan!

# files used



referring to the mods and resource packs; in order of precedence, and how important they are for your enjoyment.



| | priority |

| :--- | :---: |

| 🟪|  **required**  |

| 🟧| highly recommended |

| 🟨 | recommended |

| 🟩 | if you want |




## mods



- 🟪 Fabric API

>your game WILL poop itself and throw an error if you don't have it installed.

- 🟪 Cloth API

> a less important API. your game *might* work without this, but it's still good practice to have installed.

- 🟪 Carry On

> a hand-y mod that lets you carry block items (like chests, furnaces, droppers, spawners) and allows you to carry small mobs. right click (with empty hands) to lift, and right click to place.

- 🟪 Farmer's Delight Refabricated

> a cozy farming and food expansion mod with the purpose of introducing new dishes and mechanics to the game. it adds hearty meals, from salads and stews, from mouth-watering feasts! it also adds neat new decorations for builds.

- 🟪 Dynamic Nutrition

>another food-based mod that adds nutrients, such as carbs and fat to consumables. if you don't eat enough containing those nutrients, you will start to become deficient in those vitamins or nutrients. it's a neat mod!

- 🟪 Chalk (Fabric)

> adds a neat chalk item to the game that makes navigating caves and complicated areas with friends easier. i would set it as an optional mod, but it unfortunately changes things on the server.

- 🟧 AppleSkin

>every Minecraft player should have this mod. it's a no-brainer - shows saturation and health you gain with food and drink, as well as some of the effects of consuming something. it doesn't change anything on the server, but it's a solid mod.

- 🟧 Better Block Entities [BBE]

> it changes some block entity behaviors, and optimizes framerates by using Minecraft's intended path of rendering for block entities when they are animating, and meshing them into the terrain when they are not. expect your FPS to have an 3× increase with this awesome mod!

- 🟧 Hide Your Armor

> via a keybind that toggles its visibility. additionally, you can choose certain parts of your armor that you want to show.

- 🟨 ImmediatelyFast

> a classic mod for optimization which improves the immediate mode rendering performance of the client. it's designed to be lightweight and changes the way the GPU renders things ingame.

- 🟨 Sodium

>improves frame rates and micro-stutter.

- 🟨 LambDynamicLights

>with this mod, you can make equippable light sources like torches feel alive! it's recommended for cave expeditions and dark spaces where you might have limited inventory space (you can hold the torch in your offhand, and the light moves with you!)

- 🟩 Continuity

>makes textures seamless, like glass and bookshelves! it also works for regular blocks and has a clean transitioning effect. it might not work for custom texture packs, though.

- 🟩 EMF and ETF

> adds support for resource packs like Fresh Animations and Punchy!

- 🟩 Punchy!

> an awesome animation mod for characters! it might be a bit over the top sometimes, but it makes the game feel a bit more alive.

- 🟩 Detail Armor Bar Reconstructed

>shows what kind of armor you have equipped in the hotbar.

- 🟩 Glowing Emissive Ores

- 🟩 Iris Shaders

- 🟩 Sounds/Visuality

- 🟩 Dynamic FPS

- 🟩 Dark Paintings

- 🟩 Camera Overhaul

> adds realistic movement to the camera while improving tactility. it adds slight camera swaying and rotation when you move back and forth and makes the camera a lot smoother.

- 🟩 Mouse Tweaks

- 🟩 Immersive Storms

> it just looks cool in deserts and places where it's windy

- 🟩 Presence Footsteps/Sound Physics Remastered

- 🟩 Jade

> shows block and mob information in a neat interface that stays out of your way!

- 🟩 Polytone




## resource packs



### included



- 🟧 Unique Dark

- 🟧 Unobtrusive Weather

- 🟨 Bog's UI *and Unique Dark*

- 🟨 Fresh Animations

- 🟨 Fresh Animations Extensions

- 🟨 Low On Fire

- 🟨 Animated Ore

- 🟩 Animated Items

- 🟩 Minecraft Ten Font

- 🟩 Gentler Weather Sounds



### extras



- 🟨 Motschen's Better Leaves

- 🟨 Enchant Icons

- 🟨 Bog's Fall UI

- 🟩 Roman Numerals for Enchant Icons (gray)

- 🟩 Cat Creepers

- 🟩 Cat Paintings

- 🟩 Fontolith

- 🟩 Minecraft No Java Logo

- 🟩 meowmrow kittycat ui



### texture packs



- ⬛ 3D Default

- ⬛ Ashen 16x

- ⬛ Ashen Simple Foliage

- ⬛ Faithful 32x

- ⬛ Simplista



## summary



those are all of the current mods and resource packs i have included for this project! there are a few QoL mods i have missed because they were pretty much self-explanatory.



please let me know if you have any suggestions that wouldn't be too far from vanilla-ish and mods/resource packs everyone would enjoy.



also, please let me know if i missed anything!
![server](https://img.shields.io/badge/host_your_own-vanilla%2B-%23614538?style=flat-square&logo=serverless&logoColor=green&labelColor=%23292929) ![Static Badge](https://img.shields.io/badge/no_judgement!-fork%20your%20own-%23614538?style=flat-square&logo=pipecat&logoColor=white&labelColor=%23292929) ![git](https://img.shields.io/badge/v1.06-26.3-%23614538?style=flat-square&logo=git&logoColor=orange&labelColor=%23292929)

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

i will work on this later

# files used

this section will describe the files used throughout the repository, as well as the mods and resource packs; in order of precedence, and how important they are for your enjoyment.

|  | priority |
| :--- | :---: |
| 🟪| **required** |
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

those are all of the current mods and resource packs i have included for this project!

please let me know if you have any suggestions that wouldn't be too far from vanilla-ish and mods/resource packs everyone would enjoy.

also, please let me know if i missed anything!
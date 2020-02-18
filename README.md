# docker-ligaturizer

Add ligatures to the coding font of your choice!

Ligatures are taken from [FiraCode](https://github.com/tonsky/FiraCode).

This project is based on [Ligaturizer python script](https://github.com/ToxicFrog/Ligaturizer), but makes it much easier to use on any platform, including Windows, by dockerizing all necessary stuff so you don't have to install it manually.

Also, it allows for batch fonts conversion (which is probably what you want as fonts often go as font families).

## Requirements

- This repo: git clone or download this repo on your computer
- Docker
- sh or Powershell

## Usage

1. Download or clone repository.
2. Place your fonts in the 'input' folder. If it does not exist, create it in the repository root.
3. Start your shell in the root directory of the repo. Use Powershell, if you are on Windows.
   If you are on Unix/Linux, run the following command to grant execution rights for the scripts: `chmod +x one.sh && chmod +x all.sh`
4. Start Docker. Run the following command to build Docker image: `docker build -t ligaturizer .`
5. Now you have two options, decide which script you will use:
   - _'All'_ script allows for batch conversion of all fonts in the 'input' folder. As an argument you can optionally pass prefix, which will be prepended to each output font's name. By default it is 'Liga'. You can do for example:`.\all Ligaturized-`(Powershell) `./all.sh Ligaturized-`(sh)
   - _'One'_ script does one font at a time conversion, but allows you to set exact output name for the font, if you need it. To use it you have to pass path to the font file as first argument (relative to the 'input' folder). Optionally you can pass output name as second argument. By default it will be original filename prepended with 'Liga'.
     example:
     `.\one InputMono-Regular.ttf LigaturizedInputMono-Regular`(Powershell)
     `./one.sh InputMono-Regular.ttf LigaturizedInputMono-Regular`(sh)
6. Get your ligaturized fonts from the 'output' folder.

<!-- 🕮 <YL> a4fe4447-adb1-4000-85a1-cac0858e00fb.md -->

## Contributions

If you are into it, please submit a Pull Request.

_Warning_: Special comments starting with 🕮 serve for annotation purposes, please do not delete them.

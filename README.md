# useful-conf
Just some configuration that I use for various situations

## Adding targets for cargo
1. Place ce `config.toml` in `.cargo/` in your project directory.
2. Install the compiler for the target you want to add: `brew install mingw-w64` and `brew install SergioBenitez/osxct/x86_64-unknown-linux-gnu`
3. Add the compiler to rustup: `rustup target add x86_64-pc-windows-gnu` or `rustup target add x86_64-unknown-linux-gnu`.
4. Run `cargo build --target x86_64-pc-windows-gnu` or `cargo build --target x86_64-unknown-linux-gnu`.

## Shell utils
There is some useful function to add to your shell in `add-to-shell.sh`. They are some that I use and want to save for future use.

## Website utils
- [stable diffusion](https://stablediffusionweb.com) : describe and it draws the image.
- [imglarger](https://imglarger.com) : enlarge an image.
- [upscale.media](https://www.upscale.media) : upscale an image.
- [nvidia canvas](https://www.nvidia.com/fr-fr/studio/canvas/) : draw like a kid, get a nice image.
- [playphrase](https://www.playphrase.me/#/search) : find a phrase in a movie.
- [clean png](https://www.cleanpng.com) : PNG database.
- [water mark remover](https://www.watermarkremover.io/fr) : remove watermark from image.
- [3d bay](https://clouddevs.com/3dbay/) : 3D illustration database.
- [placeit](https://placeit.net) : Mockups.
- [morflax things](https://things.morflax.com) : create a 3D object.
- [wicked background](https://wickedbackgrounds.com) : create a background.
- [brandmark.io](https://brandmark.io) : create a logo.
- [vivus instant](https://maxwellito.github.io/vivus-instant/) : create a SVG animation.
- [playgroundai.com](https://playgroundai.com/) : edit photos by telling an AI what to do.
- [saymine.com/](https://www.saymine.com/) : tells you which site have your data and allow you to delete them.
- [cleanup.pictures](https://cleanup.pictures/) : remove objects or anything your select from your picture.
- [narakeet.com](https://www.narakeet.com/): voiceovers with text to speech.
- [talktobooks](https://books.google.com/talktobooks/): find quotes in books.
- [photosonic](https://photosonic.writesonic.com/) : describe an image and the AI creates it. 

## Makefile
The makefile is just a template for a makefile. I use it for my projects. It is not perfect but it is a good start.

# Instagram Links 
- [Pixwox](https://www.pixwox.com/profile/elonrmuskk/) 
- [Imginn](https://imginn.com/elonrmuskk/)
- [InstaFreeView](https://instafreeview.com/profile/?user=elonrmuskk)
- [Iganony](https://iganony.com/profile/elonrmuskk)
- [InstaNavigation](https://instanavigation.com/profile/elonrmuskk)


# Send SMS (once a day or you need to pay)
```bash
curl -X POST https://textbelt.com/text \
       --data-urlencode phone='5555555555' \
       --data-urlencode message='Hello world' \
       -d key=textbelt
```

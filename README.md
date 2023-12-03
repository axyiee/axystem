# 🌟 axystem

_“Simplicity is the ultimate sophistication.”_

A general-purpose, flexible entertainment and productivity workflow for
FreeBSD systems.

<sub><sup>...in other words, a desktop rice.</sup></sub>

## Summary and details

Packaging and dependencies are managed by a FreeBSD port available at
`packages/axystem`.

| Name           | Description                                                                                                                                                                | Purpose on this workflow                                                  |
|----------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------|
| [Hyprland]     | A dynamic tiling [Wayland] compositor based on [wlroots] that doesn't sacrifice on its looks.                                                                              | Wayland compositor with fancy animations                                  |
| [Pipewire]     | Server and user space API to deal with multimedia pipelines.                                                                                                               | Linux multimedia software compatibility                                   |
| [Inter]        | A typeface carefully crafted & designed for computer screens.                                                                                                              | User interface font                                                       |
| [Iosevka]      | An open-source, sans-serif + slab-serif, monospace + quasi‑proportional typeface family, designed for writing code, using in terminals, and preparing technical documents. | Monospaced font                                                           |
| [Neovim]       | Hyperextensible Vim-based text editor.                                                                                                                                     | Text editor                                                               |
| [foot]         | The fast, lightweight and minimalistic Wayland terminal emulator.                                                                                                          | Terminal emulator                                                         |
| [wallust]      | Generate color schemes from an image.                                                                                                                                      | Dynamic color palette                                                     |
| [Flameshot]    | Powerful, yet simple to use open-source screenshot software.                                                                                                               | Screenshot tool                                                           |
| [swww]         | Efficient animated wallpaper daemon for wayland, controlled at runtime                                                                                                     | Wallpaper daemon                                                          |
| axsystem-utils | Flexible hand-crafted collection of utilities for desktops.                                                                                                                | Application launcher, desktop settings, color pickers,  status bars, etc. |

[Hyprland]: https://hyprland.org/
[Wayland]: https://wayland.freedesktop.org/
[wlroots]: https://way-cooler.org/book/wlroots_introduction.html
[Pipewire]: https://pipewire.org/
[Inter]: https://rsms.me/inter/
[Iosevka]: https://typeof.net/Iosevka/
[Neovim]: https://neovim.io/
[foot]: https://codeberg.org/dnkl/foot
[wallust]: https://codeberg.org/explosion-mental/wallust
[Flameshot]: https://flameshot.org/
[swww]: https://github.com/Horus645/swww

### Features

- Choose between many appearance styles;
- Dynamic color scheme generation given a wallpaper;
- Linux native gaming, and Windows gaming via Steam Proton, with [linuxulator-steam-utils];
- PGP-based password management software, wrapper for [pass];
- Wayland-based workflow with fancy animations;
- Screensharing and screnshot support.

[linuxulator-steam-utils]: https://github.com/shkhln/linuxulator-steam-utils
[pass]: https://www.passwordstore.org/
 
## Installation

🚧 **To be written**

```bash
git init --bare ~/.axystem/vcs
alias axsystem-vcs='git --git-dir="$HOME/.axystem/vcs" --work-tree="$HOME"'
axystem-vcs branch -m main
axystem-vcs config status.showUntrackedFiles no
axystem-vcs remote add origin https://github.com/axxxyyy/axystem.git
axystem-vcs pull origin main
```

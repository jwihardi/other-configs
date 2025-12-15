### Illogical Impulse keybind changes
- Move focus with ``SUPER + Vim motions (H, J, K, L)``
- Move windows with ``SUPER + SHIFT + Vim motions (H, J, K, L)``
- Delete lock and suspend
- Toggle Bar from ``SUPER + J`` to ``SUPER+ALT+J``
- Toggle Virtual Keyboard from ``SUPER+K`` to ``SUPER+ALT+K``

### Other modifications
- Hyprland: Disable animations, blurr, and shadows

### Laptop Setting
Add to ``/custom/general.conf``
```bash
input {
	sensitivity = 0.15

	touchpad {
		natural_scroll = yes
		disable_while_typing = true
		clickfinger_behavior = true
		scroll_factor = 0.4
	}
}
```

### Illogical Impulse keybind changes
- Move focus with ``SUPER + Vim motions (H, J, K, L)``
- Move windows with ``SUPER + SHIFT + Vim motions (H, J, K, L)``
- Delete lock and suspend
- Toggle Bar from ``SUPER + J`` to ``SUPER+ALT+J``
- Toggle Virtual Keyboard from ``SUPER+K`` to ``SUPER+ALT+K``
- Animations disabled

### tlp.conf (2024 ASUS G14)
- ``PCIE_ASPM_ON_BATA=supersave``: need my laptop not to run out of battery in 0.05 seconds.
- ``START_CHARGE_THRESH_BAT0=70`` & ``STOP_CHARGE_THRESH_BAT0=80`` to match G-Helper (dual booting with Win11).
- Cpu Frequencies (``CPU_BOOST_ON_AC=1``, ``CPU_BOOST_ON_BAT=0``) (``Frequency = Base Clock + (X% × (Max Boost - Base Clock))``
	- ``CPU_MIN_PERF_ON_AC=29`` (~2.9 GHz)
   	- ``CPU_MAX_PERF_ON_AC=100`` (never going to get close unless boost is enabled)
   	- ``CPU_MIN_PERF_ON_BAT=0``
   	- ``CPU_MAX_PERF_ON_BAT=29`` (~2.9 GHz)

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

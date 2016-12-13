from i3pystatus import Status
from i3pystatus.updates import yaourt, pacman

status = Status()

# clock
status.register("clock", format="%d %b %G - %H:%M Uhr",)

#wifi
status.register("network", interface="wlp6s0", format_up="WiFi: {quality:2.0f}% {bytes_recv} b/s", start_color="#ffffff")

#battery
status.register("battery", interval=10, format="[{status} ] {percentage_design:0.0f}%")

#uptime
status.register("uptime", format="Uptime: {hours}h:{mins}m",)

#mpd
status.register("mpd", format="♫ {artist} - {title}",)

#update notifier
status.register("updates", backends = [pacman.Pacman(), yaourt.Yaourt(False)])

status.run()

# Defined in /tmp/fish.vWhvld/mc.fish @ line 1
function mc
	java -jar ~/Downloads/Minecraft.jar &
	disown %(jobs | grep Minecraft.jar | awk '{ print $1 }')
end

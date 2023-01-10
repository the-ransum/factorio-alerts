local speaker = data.raw["programmable-speaker"]["programmable-speaker"]
speaker.instruments[#speaker.instruments+1] = {
	name = "simple_alert_sounds",
	notes = {
		{name = "Nuclear Launch Detected", sound = {filename = "__Simple_Alert_Sounds__/sound/nuclear_launch_detected.ogg"}},
		{name = "Red Alert Danger", sound = {filename = "__Simple_Alert_Sounds__/sound/red_alert_danger.ogg"}},
    }
}

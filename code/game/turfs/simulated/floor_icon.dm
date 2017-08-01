/turf/simulated/floor/update_icon(var/update_neighbors)
	cut_overlays()

	if(lava)
		return

	if(flooring)
		// Set initial icon and strings.
		name = flooring.name
		desc = flooring.desc
		icon = flooring.icon

		if(flooring_override)
			icon_state = flooring_override
		else
			icon_state = flooring.icon_base
			if(flooring.has_base_range)
				icon_state = "[icon_state][rand(0,flooring.has_base_range)]"
				flooring_override = icon_state

		// Apply edges, corners, and inner corners.
		var/has_border = 0
		if(flooring.flags & TURF_HAS_EDGES)
			for(var/step_dir in cardinal)
				var/turf/simulated/floor/T = get_step(src, step_dir)
				if(!istype(T) || !T.flooring || T.flooring.name != flooring.name)
					has_border |= step_dir
					add_overlay(get_flooring_overlay("[flooring.icon_base]-edge-[step_dir]", "[flooring.icon_base]_edges", step_dir))

			// There has to be a concise numerical way to do this but I am too noob.
			if((has_border & NORTH) && (has_border & EAST))
				add_overlay(get_flooring_overlay("[flooring.icon_base]-edge-[NORTHEAST]", "[flooring.icon_base]_edges", NORTHEAST))
			if((has_border & NORTH) && (has_border & WEST))
				add_overlay(get_flooring_overlay("[flooring.icon_base]-edge-[NORTHWEST]", "[flooring.icon_base]_edges", NORTHWEST))
			if((has_border & SOUTH) && (has_border & EAST))
				add_overlay(get_flooring_overlay("[flooring.icon_base]-edge-[SOUTHEAST]", "[flooring.icon_base]_edges", SOUTHEAST))
			if((has_border & SOUTH) && (has_border & WEST))
				add_overlay(get_flooring_overlay("[flooring.icon_base]-edge-[SOUTHWEST]", "[flooring.icon_base]_edges", SOUTHWEST))

			if(flooring.flags & TURF_HAS_CORNERS)
				// As above re: concise numerical way to do this.
				if(!(has_border & NORTH))
					if(!(has_border & EAST))
						var/turf/simulated/floor/T = get_step(src, NORTHEAST)
						if(!(istype(T) && T.flooring && T.flooring.name == flooring.name))
							add_overlay(get_flooring_overlay("[flooring.icon_base]-corner-[NORTHEAST]", "[flooring.icon_base]_corners", NORTHEAST))
					if(!(has_border & WEST))
						var/turf/simulated/floor/T = get_step(src, NORTHWEST)
						if(!(istype(T) && T.flooring && T.flooring.name == flooring.name))
							add_overlay(get_flooring_overlay("[flooring.icon_base]-corner-[NORTHWEST]", "[flooring.icon_base]_corners", NORTHWEST))
				if(!(has_border & SOUTH))
					if(!(has_border & EAST))
						var/turf/simulated/floor/T = get_step(src, SOUTHEAST)
						if(!(istype(T) && T.flooring && T.flooring.name == flooring.name))
							add_overlay(get_flooring_overlay("[flooring.icon_base]-corner-[SOUTHEAST]", "[flooring.icon_base]_corners", SOUTHEAST))
					if(!(has_border & WEST))
						var/turf/simulated/floor/T = get_step(src, SOUTHWEST)
						if(!(istype(T) && T.flooring && T.flooring.name == flooring.name))
							add_overlay(get_flooring_overlay("[flooring.icon_base]-corner-[SOUTHWEST]", "[flooring.icon_base]_corners", SOUTHWEST))

	if(LAZYLEN(decals))
		add_overlay(decals)

	if(is_plating() && !(isnull(broken) && isnull(burnt))) //temp, todo
		icon = 'icons/turf/flooring/plating.dmi'
		icon_state = "dmg[rand(1,4)]"
	else if(flooring)
		if(!isnull(broken) && (flooring.flags & TURF_CAN_BREAK))
			add_overlay(get_flooring_overlay("[flooring.icon_base]-broken-[broken]","[flooring.icon_base]_broken[broken]"))
		if(!isnull(burnt) && (flooring.flags & TURF_CAN_BURN))
			add_overlay(get_flooring_overlay("[flooring.icon_base]-burned-[burnt]","[flooring.icon_base]_burned[burnt]"))

	if(update_neighbors)
		for(var/turf/simulated/floor/F in range(src, 1))
			if(F == src)
				continue
			F.update_icon()

/turf/simulated/floor/proc/get_flooring_overlay(var/cache_key, var/icon_base, var/icon_dir = 0)
	var/list/flooring_cache = SSicon_cache.flooring_cache
	if(!flooring_cache[cache_key])
		var/image/I = image(icon = flooring.icon, icon_state = icon_base, dir = icon_dir)
		I.layer = layer
		flooring_cache[cache_key] = I
	return flooring_cache[cache_key]
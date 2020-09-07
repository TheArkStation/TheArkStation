//Initializes relatively late in subsystem init order.
SUBSYSTEM_DEF(misc_late)
	name = "Late Initialization"
	init_order = SS_INIT_MISC_LATE
	flags = SS_NO_FIRE

/datum/controller/subsystem/misc_late/Initialize()
	GLOB.using_map.build_exoplanets()
	var/decl/asset_cache/asset_cache = decls_repository.get_decl(/decl/asset_cache)
	asset_cache.load()
	if(submap_turfs_with_decals) // ARK
		for(var/M in submap_turfs_with_decals)
			var/turf/T = M
			T.decals = reverselist(T.decals)
			T.update_icon()
		submap_turfs_with_decals.Cut()
	. = ..()
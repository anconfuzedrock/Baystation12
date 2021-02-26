/obj/effect/overmap/visitable/ship/landable/rawl_ship
	name = "IPV Rawl"
	shuttle = "IPV Rawl"
	desc = "Sensors identify 43 percent of the vessel as an Ancelay 2279 light transport."
	moving_state = "ship_moving"
	max_speed = 1/(2 SECONDS)
	burn_delay = 1 SECONDS
	vessel_mass = 4500
	skill_needed = SKILL_BASIC
	vessel_size = SHIP_SIZE_SMALL
	fore_dir = WEST
	hide_from_reports = TRUE
	initial_restricted_waypoints = list(
		"IPV Rawl" = list("nav_hangar_rawlship")
	)


/datum/shuttle/autodock/overmap/rawl_ship
	name = "IPV Rawl"
	warmup_time = 5
	move_time = 40
	range = 1
	shuttle_area = list(
		/area/rawl/crew,
		/area/rawl/fore,
		/area/rawl/cargo,
		/area/rawl/pipeworks
	)
	skill_needed = SKILL_BASIC
	ceiling_type = /turf/simulated/floor/shuttle_ceiling
	defer_initialisation = TRUE
	current_location = "nav_hangar_rawlship"
	landmark_transition = "nav_transit_rawlship"

/obj/machinery/computer/shuttle_control/explore/rawl
	name = "shuttle controle console"
	shuttle_tag = "IPV Rawl"


/obj/effect/shuttle_landmark/rawl/start
	name = "North of asteroid"
	landmark_tag = "nav_hangar_rawlship"
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

/obj/effect/shuttle_landmark/rawl/torch
	name = "SEV Torch IPV Rawl Dock"
	landmark_tag = "nav_hangar_rawlship_torch"
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

/obj/effect/shuttle_landmark/transit/rawl
	name = "In transit"
	landmark_tag = "nav_transit_rawlship"

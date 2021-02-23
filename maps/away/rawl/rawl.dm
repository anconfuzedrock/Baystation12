#include "rawl_shuttles.dm"
#include "rawl_areas.dm"

/datum/map_template/ruin/away_site/rawl
	name = "Rawl Ship"
	id = "awaysite_rawl"
	description = "rawl thingy."
	suffixes = list("rawl/rawl.dmm")
	area_usage_test_exempted_root_areas = list(/area/rawl/)
	cost = 0.5
	spawn_weight = 3
	shuttles_to_initialise = list(/datum/shuttle/autodock/overmap/rawl_ship)

/obj/effect/overmap/visitable/sector/rawl_spawn
	name = "rawl spawn point"
	desc = "this is where it be."
	icon_state = "meteor4"
	hide_from_reports = TRUE

	initial_generic_waypoints = list(
		"nav_rawl_1",
		"nav_rawl_2"
	)

/obj/effect/shuttle_landmark/rawl1
	name = "Rawl spawn 1"
	landmark_tag = "nav_rawl_1"

/obj/effect/shuttle_landmark/rawl2
	name = "Rawl spawn 2"
	landmark_tag = "nav_rawl_2"

/obj/machinery/power/smes/buildable/preset/rawl/smes
	uncreated_component_parts = list(/obj/item/weapon/stock_parts/smes_coil = 1)
	_input_maxed = TRUE
	_output_maxed = TRUE
	_input_on = TRUE
	_output_on = TRUE

/obj/structure/closet/secure_closet/freezer/rawl
	name = "freezer"
	icon = 'icons/obj/closets/fridge.dmi'
	closet_appearance = null
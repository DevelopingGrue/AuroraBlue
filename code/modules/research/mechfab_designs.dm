/datum/design/item/mechfab
	build_type = MECHFAB
	category = "Misc"
	req_tech = list(TECH_MATERIAL = 1)

/datum/design/item/mechfab/robot
	category = "Robot"

//if the fabricator is a mech fab pass the manufacturer info over to the robot part constructor
/datum/design/item/mechfab/robot/Fabricate(var/newloc, var/fabricator)
	if(istype(fabricator, /obj/machinery/mecha_part_fabricator))
		var/obj/machinery/mecha_part_fabricator/mechfab = fabricator
		return new build_path(newloc, mechfab.manufacturer)
	return ..()

/datum/design/item/mechfab/robot/exoskeleton
	name = "Robot exoskeleton"
	id = "robot_exoskeleton"
	build_path = /obj/item/robot_parts/robot_suit
	time = 50
	materials = list(DEFAULT_WALL_MATERIAL = 50000)

/datum/design/item/mechfab/robot/torso
	name = "Robot torso"
	id = "robot_torso"
	build_path = /obj/item/robot_parts/chest
	time = 35
	materials = list(DEFAULT_WALL_MATERIAL = 40000)

/datum/design/item/mechfab/robot/head
	name = "Robot head"
	id = "robot_head"
	build_path = /obj/item/robot_parts/head
	time = 35
	materials = list(DEFAULT_WALL_MATERIAL = 25000)

/datum/design/item/mechfab/robot/l_arm
	name = "Robot left arm"
	id = "robot_l_arm"
	build_path = /obj/item/robot_parts/l_arm
	time = 20
	materials = list(DEFAULT_WALL_MATERIAL = 18000)

/datum/design/item/mechfab/robot/r_arm
	name = "Robot right arm"
	id = "robot_r_arm"
	build_path = /obj/item/robot_parts/r_arm
	time = 20
	materials = list(DEFAULT_WALL_MATERIAL = 18000)

/datum/design/item/mechfab/robot/l_leg
	name = "Robot left leg"
	id = "robot_l_leg"
	build_path = /obj/item/robot_parts/l_leg
	time = 20
	materials = list(DEFAULT_WALL_MATERIAL = 15000)

/datum/design/item/mechfab/robot/r_leg
	name = "Robot right leg"
	id = "robot_r_leg"
	build_path = /obj/item/robot_parts/r_leg
	time = 20
	materials = list(DEFAULT_WALL_MATERIAL = 15000)

/datum/design/item/mechfab/robot/component
	time = 20
	materials = list(DEFAULT_WALL_MATERIAL = 5000)

/datum/design/item/mechfab/robot/component/binary_communication_device
	name = "Binary communication device"
	id = "binary_communication_device"
	build_path = /obj/item/robot_parts/robot_component/binary_communication_device

/datum/design/item/mechfab/robot/component/radio
	name = "Radio"
	id = "radio"
	build_path = /obj/item/robot_parts/robot_component/radio

/datum/design/item/mechfab/robot/component/actuator
	name = "Actuator"
	id = "actuator"
	build_path = /obj/item/robot_parts/robot_component/actuator

/datum/design/item/mechfab/robot/component/diagnosis_unit
	name = "Diagnosis unit"
	id = "diagnosis_unit"
	build_path = /obj/item/robot_parts/robot_component/diagnosis_unit

/datum/design/item/mechfab/robot/component/camera
	name = "Camera"
	id = "camera"
	build_path = /obj/item/robot_parts/robot_component/camera

/datum/design/item/mechfab/robot/component/armour
	name = "Armour plating"
	id = "armour"
	build_path = /obj/item/robot_parts/robot_component/armour

/datum/design/item/mechfab/ripley
	category = "Ripley"

/datum/design/item/mechfab/ripley/chassis
	name = "Ripley chassis"
	id = "ripley_chassis"
	build_path = /obj/item/mecha_parts/chassis/ripley
	time = 10
	materials = list(DEFAULT_WALL_MATERIAL = 20000)

/datum/design/item/mechfab/ripley/chassis/firefighter
	name = "Firefigher chassis"
	id = "firefighter_chassis"
	build_path = /obj/item/mecha_parts/chassis/firefighter

/datum/design/item/mechfab/ripley/torso
	name = "Ripley torso"
	id = "ripley_torso"
	build_path = /obj/item/mecha_parts/part/ripley_torso
	time = 20
	materials = list(DEFAULT_WALL_MATERIAL = 40000, "glass" = 15000)

/datum/design/item/mechfab/ripley/left_arm
	name = "Ripley left arm"
	id = "ripley_left_arm"
	build_path = /obj/item/mecha_parts/part/ripley_left_arm
	time = 15
	materials = list(DEFAULT_WALL_MATERIAL = 25000)

/datum/design/item/mechfab/ripley/right_arm
	name = "Ripley right arm"
	id = "ripley_right_arm"
	build_path = /obj/item/mecha_parts/part/ripley_right_arm
	time = 15
	materials = list(DEFAULT_WALL_MATERIAL = 25000)

/datum/design/item/mechfab/ripley/left_leg
	name = "Ripley left leg"
	id = "ripley_left_leg"
	build_path = /obj/item/mecha_parts/part/ripley_left_leg
	time = 15
	materials = list(DEFAULT_WALL_MATERIAL = 30000)

/datum/design/item/mechfab/ripley/right_leg
	name = "Ripley right leg"
	id = "ripley_right_leg"
	build_path = /obj/item/mecha_parts/part/ripley_right_leg
	time = 15
	materials = list(DEFAULT_WALL_MATERIAL = 30000)

/datum/design/item/mechfab/odysseus
	category = "Odysseus"

/datum/design/item/mechfab/odysseus/chassis
	name = "Odysseus chassis"
	id = "odysseus_chassis"
	build_path = /obj/item/mecha_parts/chassis/odysseus
	time = 10
	materials = list(DEFAULT_WALL_MATERIAL = 20000)

/datum/design/item/mechfab/odysseus/torso
	name = "Odysseus torso"
	id = "odysseus_torso"
	build_path = /obj/item/mecha_parts/part/odysseus_torso
	time = 18
	materials = list(DEFAULT_WALL_MATERIAL = 25000)

/datum/design/item/mechfab/odysseus/head
	name = "Odysseus head"
	id = "odysseus_head"
	build_path = /obj/item/mecha_parts/part/odysseus_head
	time = 10
	materials = list(DEFAULT_WALL_MATERIAL = 2000, "glass" = 10000)

/datum/design/item/mechfab/odysseus/left_arm
	name = "Odysseus left arm"
	id = "odysseus_left_arm"
	build_path = /obj/item/mecha_parts/part/odysseus_left_arm
	time = 12
	materials = list(DEFAULT_WALL_MATERIAL = 10000)

/datum/design/item/mechfab/odysseus/right_arm
	name = "Odysseus right arm"
	id = "odysseus_right_arm"
	build_path = /obj/item/mecha_parts/part/odysseus_right_arm
	time = 12
	materials = list(DEFAULT_WALL_MATERIAL = 10000)

/datum/design/item/mechfab/odysseus/left_leg
	name = "Odysseus left leg"
	id = "odysseus_left_leg"
	build_path = /obj/item/mecha_parts/part/odysseus_left_leg
	time = 13
	materials = list(DEFAULT_WALL_MATERIAL = 15000)

/datum/design/item/mechfab/odysseus/right_leg
	name = "Odysseus right leg"
	id = "odysseus_right_leg"
	build_path = /obj/item/mecha_parts/part/odysseus_right_leg
	time = 13
	materials = list(DEFAULT_WALL_MATERIAL = 15000)

/datum/design/item/mechfab/gygax
	category = "Gygax"

/datum/design/item/mechfab/gygax/chassis
	name = "Gygax chassis"
	id = "gygax_chassis"
	build_path = /obj/item/mecha_parts/chassis/gygax
	time = 10
	materials = list(DEFAULT_WALL_MATERIAL = 25000)

/datum/design/item/mechfab/gygax/torso
	name = "Gygax torso"
	id = "gygax_torso"
	build_path = /obj/item/mecha_parts/part/gygax_torso
	time = 30
	materials = list(DEFAULT_WALL_MATERIAL = 50000, "glass" = 20000)

/datum/design/item/mechfab/gygax/head
	name = "Gygax head"
	id = "gygax_head"
	build_path = /obj/item/mecha_parts/part/gygax_head
	time = 20
	materials = list(DEFAULT_WALL_MATERIAL = 20000, "glass" = 10000)

/datum/design/item/mechfab/gygax/left_arm
	name = "Gygax left arm"
	id = "gygax_left_arm"
	build_path = /obj/item/mecha_parts/part/gygax_left_arm
	time = 20
	materials = list(DEFAULT_WALL_MATERIAL = 30000)

/datum/design/item/mechfab/gygax/right_arm
	name = "Gygax right arm"
	id = "gygax_right_arm"
	build_path = /obj/item/mecha_parts/part/gygax_right_arm
	time = 20
	materials = list(DEFAULT_WALL_MATERIAL = 30000)

/datum/design/item/mechfab/gygax/left_leg
	name = "Gygax left leg"
	id = "gygax_left_leg"
	build_path = /obj/item/mecha_parts/part/gygax_left_leg
	time = 20
	materials = list(DEFAULT_WALL_MATERIAL = 35000)

/datum/design/item/mechfab/gygax/right_leg
	name = "Gygax right leg"
	id = "gygax_right_leg"
	build_path = /obj/item/mecha_parts/part/gygax_right_leg
	time = 20
	materials = list(DEFAULT_WALL_MATERIAL = 35000)

/datum/design/item/mechfab/gygax/armour
	name = "Gygax armour plates"
	id = "gygax_armour"
	build_path = /obj/item/mecha_parts/part/gygax_armour
	time = 60
	materials = list(DEFAULT_WALL_MATERIAL = 50000, "diamond" = 10000)

/datum/design/item/mechfab/durand
	category = "Durand"

/datum/design/item/mechfab/durand/chassis
	name = "Durand chassis"
	id = "durand_chassis"
	build_path = /obj/item/mecha_parts/chassis/durand
	time = 10
	materials = list(DEFAULT_WALL_MATERIAL = 25000)

/datum/design/item/mechfab/durand/torso
	name = "Durand torso"
	id = "durand_torso"
	build_path = /obj/item/mecha_parts/part/durand_torso
	time = 30
	materials = list(DEFAULT_WALL_MATERIAL = 55000, "glass" = 20000, "silver" = 10000)

/datum/design/item/mechfab/durand/head
	name = "Durand head"
	id = "durand_head"
	build_path = /obj/item/mecha_parts/part/durand_head
	time = 20
	materials = list(DEFAULT_WALL_MATERIAL = 25000, "glass" = 10000, "silver" = 3000)

/datum/design/item/mechfab/durand/left_arm
	name = "Durand left arm"
	id = "durand_left_arm"
	build_path = /obj/item/mecha_parts/part/durand_left_arm
	time = 20
	materials = list(DEFAULT_WALL_MATERIAL = 35000, "silver" = 3000)

/datum/design/item/mechfab/durand/right_arm
	name = "Durand right arm"
	id = "durand_right_arm"
	build_path = /obj/item/mecha_parts/part/durand_right_arm
	time = 20
	materials = list(DEFAULT_WALL_MATERIAL = 35000, "silver" = 3000)

/datum/design/item/mechfab/durand/left_leg
	name = "Durand left leg"
	id = "durand_left_leg"
	build_path = /obj/item/mecha_parts/part/durand_left_leg
	time = 20
	materials = list(DEFAULT_WALL_MATERIAL = 40000, "silver" = 3000)

/datum/design/item/mechfab/durand/right_leg
	name = "Durand right leg"
	id = "durand_right_leg"
	build_path = /obj/item/mecha_parts/part/durand_right_leg
	time = 20
	materials = list(DEFAULT_WALL_MATERIAL = 40000, "silver" = 3000)

/datum/design/item/mechfab/durand/armour
	name = "Durand armour plates"
	id = "durand_armour"
	build_path = /obj/item/mecha_parts/part/durand_armour
	time = 60
	materials = list(DEFAULT_WALL_MATERIAL = 50000, "uranium" = 10000)

/datum/design/item/robot_upgrade
	build_type = MECHFAB
	time = 12
	materials = list(DEFAULT_WALL_MATERIAL = 10000)
	category = "Cyborg Upgrade Modules"

/datum/design/item/robot_upgrade/rename
	name = "Rename module"
	desc = "Used to rename a cyborg."
	id = "borg_rename_module"
	build_path = /obj/item/borg/upgrade/rename

/datum/design/item/robot_upgrade/reset
	name = "Reset module"
	desc = "Used to reset a cyborg's module. Destroys any other upgrades applied to the robot."
	id = "borg_reset_module"
	build_path = /obj/item/borg/upgrade/reset

/datum/design/item/robot_upgrade/floodlight
	name = "Floodlight module"
	desc = "Used to boost cyborg's integrated light intensity."
	id = "borg_floodlight_module"
	build_path = /obj/item/borg/upgrade/floodlight

/datum/design/item/robot_upgrade/restart
	name = "Emergency restart module"
	desc = "Used to force a restart of a disabled-but-repaired robot, bringing it back online."
	id = "borg_restart_module"
	materials = list(DEFAULT_WALL_MATERIAL = 60000, "glass" = 5000)
	build_path = /obj/item/borg/upgrade/restart

/datum/design/item/robot_upgrade/vtec
	name = "VTEC module"
	desc = "Used to kick in a robot's VTEC systems, increasing their speed."
	id = "borg_vtec_module"
	materials = list(DEFAULT_WALL_MATERIAL = 80000, "glass" = 6000, "gold" = 5000)
	build_path = /obj/item/borg/upgrade/vtec

/datum/design/item/robot_upgrade/tasercooler
	name = "Rapid taser cooling module"
	desc = "Used to cool a mounted taser, increasing the potential current in it and thus its recharge rate."
	id = "borg_taser_module"
	materials = list(DEFAULT_WALL_MATERIAL = 80000, "glass" = 6000, "gold" = 2000, "diamond" = 500)
	build_path = /obj/item/borg/upgrade/tasercooler

/datum/design/item/robot_upgrade/jetpack
	name = "Jetpack module"
	desc = "A carbon dioxide jetpack suitable for low-gravity mining operations."
	id = "borg_jetpack_module"
	materials = list(DEFAULT_WALL_MATERIAL = 10000, "phoron" = 15000, "uranium" = 20000)
	build_path = /obj/item/robot_parts/robot_component/jetpack

/*
//Commented out by nanako
/datum/design/item/robot_upgrade/rcd
	name = "RCD module"
	desc = "A rapid construction device module for use during construction operations."
	id = "borg_rcd_module"
	materials = list(DEFAULT_WALL_MATERIAL = 25000, "phoron" = 15000, "uranium" = 20000)
	build_path = /obj/item/borg/upgrade/rcd
*/
/datum/design/item/robot_upgrade/syndicate
	name = "Illegal upgrade"
	desc = "Allows for the construction of lethal upgrades for cyborgs."
	id = "borg_syndicate_module"
	req_tech = list(TECH_COMBAT = 4, TECH_ILLEGAL = 3)
	materials = list(DEFAULT_WALL_MATERIAL = 10000, "glass" = 15000, "diamond" = 10000)
	build_path = /obj/item/borg/upgrade/syndicate

/datum/design/item/mecha_tracking
	name = "Exosuit tracking beacon"
	id = "exotrack"
	build_type = MECHFAB
	time = 5
	materials = list(DEFAULT_WALL_MATERIAL = 500)
	build_path = /obj/item/mecha_parts/mecha_tracking
	category = "Misc"

/datum/design/item/mecha_tracking/control
	name = "Exosuit control beacon"
	id = "exocontrol"
	time = 30
	materials = list(DEFAULT_WALL_MATERIAL = 3000)
	build_path = /obj/item/mecha_parts/mecha_tracking/control

/datum/design/item/mecha
	build_type = MECHFAB
	category = "Exosuit Equipment"
	time = 10
	materials = list(DEFAULT_WALL_MATERIAL = 10000)

/datum/design/item/mecha/AssembleDesignDesc()
	if(!desc)
		desc = "Allows for the construction of \a '[item_name]' exosuit module."

/datum/design/item/mecha/hydraulic_clamp
	name = "Hydraulic clamp"
	id = "hydraulic_clamp"
	build_path = /obj/item/mecha_parts/mecha_equipment/tool/hydraulic_clamp

/datum/design/item/mecha/drill
	name = "Drill"
	id = "drill"
	build_path = /obj/item/mecha_parts/mecha_equipment/tool/drill

/datum/design/item/mecha/extinguisher
	name = "Extinguisher"
	id = "extinguisher"
	build_path = /obj/item/mecha_parts/mecha_equipment/tool/extinguisher

/datum/design/item/mecha/cable_layer
	name = "Cable layer"
	id = "mech_cable_layer"
	build_path = /obj/item/mecha_parts/mecha_equipment/tool/cable_layer

/datum/design/item/mecha/sleeper
	name = "Sleeper"
	id = "mech_sleeper"
	build_path = /obj/item/mecha_parts/mecha_equipment/tool/sleeper
	materials = list(DEFAULT_WALL_MATERIAL = 5000, "glass" = 10000)

/datum/design/item/mecha/syringe_gun
	name = "Syringe gun"
	id = "mech_syringe_gun"
	build_path = /obj/item/mecha_parts/mecha_equipment/tool/syringe_gun
	time = 20
	materials = list(DEFAULT_WALL_MATERIAL = 3000, "glass" = 2000)

/*
/datum/design/item/mecha/syringe_gun
	desc = "Exosuit-mounted syringe gun and chemical synthesizer."
	id = "mech_syringe_gun"
	req_tech = list(TECH_MATERIAL = 3, TECH_BIO = 4, TECH_MAGNET = 4, TECH_DATA = 3)
	build_path = /obj/item/mecha_parts/mecha_equipment/tool/syringe_gun
	*/

/datum/design/item/mecha/passenger
	name = "Passenger compartment"
	id = "mech_passenger"
	build_path = /obj/item/mecha_parts/mecha_equipment/tool/passenger
	materials = list(DEFAULT_WALL_MATERIAL = 5000, "glass" = 5000)

//obj/item/mecha_parts/mecha_equipment/repair_droid,
//obj/item/mecha_parts/mecha_equipment/jetpack, //TODO MECHA JETPACK SPRITE MISSING

/datum/design/item/mecha/generator
	name = "Phoron generator"
	id = "mech_generator"
	build_path = /obj/item/mecha_parts/mecha_equipment/generator

/datum/design/item/mecha/taser
	name = "PBT \"Pacifier\" mounted taser"
	id = "mech_taser"
	build_path = /obj/item/mecha_parts/mecha_equipment/weapon/energy/taser

/datum/design/item/mecha/lmg
	name = "Ultra AC 2"
	id = "mech_lmg"
	build_path = /obj/item/mecha_parts/mecha_equipment/weapon/ballistic/lmg

/datum/design/item/mecha/weapon
	req_tech = list(TECH_COMBAT = 3)

// *** Weapon modules
/datum/design/item/mecha/weapon/scattershot
	name = "LBX AC 10 \"Scattershot\""
	id = "mech_scattershot"
	req_tech = list(TECH_COMBAT = 4)
	build_path = /obj/item/mecha_parts/mecha_equipment/weapon/ballistic/scattershot

/datum/design/item/mecha/weapon/laser
	name = "CH-PS \"Immolator\" laser"
	id = "mech_laser"
	req_tech = list(TECH_COMBAT = 3, TECH_MAGNET = 3)
	build_path = /obj/item/mecha_parts/mecha_equipment/weapon/energy/laser

/datum/design/item/mecha/weapon/laser_rigged
	name = "Jury-rigged welder-laser"
	desc = "Allows for the construction of a welder-laser assembly package for non-combat exosuits."
	id = "mech_laser_rigged"
	req_tech = list(TECH_COMBAT = 2, TECH_MAGNET = 2)
	build_path = /obj/item/mecha_parts/mecha_equipment/weapon/energy/riggedlaser

/datum/design/item/mecha/weapon/laser_heavy
	name = "CH-LC \"Solaris\" laser cannon"
	id = "mech_laser_heavy"
	req_tech = list(TECH_COMBAT = 4, TECH_MAGNET = 4)
	build_path = /obj/item/mecha_parts/mecha_equipment/weapon/energy/laser/heavy

/datum/design/item/mecha/weapon/ion
	name = "mkIV ion heavy cannon"
	id = "mech_ion"
	req_tech = list(TECH_COMBAT = 4, TECH_MAGNET = 4)
	build_path = /obj/item/mecha_parts/mecha_equipment/weapon/energy/ion

/datum/design/item/mecha/weapon/grenade_launcher
	name = "SGL-6 grenade launcher"
	id = "mech_grenade_launcher"
	req_tech = list(TECH_COMBAT = 3)
	build_path = /obj/item/mecha_parts/mecha_equipment/weapon/ballistic/missile_rack/flashbang

/datum/design/item/mecha/weapon/clusterbang_launcher
	name = "SOP-6 grenade launcher"
	desc = "A weapon that violates the Geneva Convention at 6 rounds per minute."
	id = "clusterbang_launcher"
	req_tech = list(TECH_COMBAT= 5, TECH_MATERIAL = 5, TECH_ILLEGAL = 3)
	materials = list(DEFAULT_WALL_MATERIAL = 20000, "gold" = 6000, "uranium" = 6000)
	build_path = /obj/item/mecha_parts/mecha_equipment/weapon/ballistic/missile_rack/flashbang/clusterbang/limited

// *** Nonweapon modules
/datum/design/item/mecha/wormhole_gen
	name = "Wormhole generator"
	desc = "An exosuit module that can generate small quasi-stable wormholes."
	id = "mech_wormhole_gen"
	req_tech = list(TECH_BLUESPACE = 3, TECH_MAGNET = 2)
	build_path = /obj/item/mecha_parts/mecha_equipment/wormhole_generator

/datum/design/item/mecha/teleporter
	name = "Teleporter"
	desc = "An exosuit module that allows teleportation to any position in view."
	id = "mech_teleporter"
	req_tech = list(TECH_BLUESPACE = 6, TECH_MAGNET = 5)
	build_path = /obj/item/mecha_parts/mecha_equipment/teleporter

/datum/design/item/mecha/rcd
	name = "RCD"
	desc = "An exosuit-mounted rapid construction device."
	id = "mech_rcd"
	time = 120
	materials = list(DEFAULT_WALL_MATERIAL = 30000, "phoron" = 25000, "silver" = 20000, "gold" = 20000)
	req_tech = list(TECH_MATERIAL = 4, TECH_BLUESPACE = 3, TECH_MAGNET = 4, TECH_POWER = 4, TECH_ENGINEERING = 4)
	build_path = /obj/item/mecha_parts/mecha_equipment/tool/rcd

/datum/design/item/mecha/gravcatapult
	name = "Gravitational catapult"
	desc = "An exosuit-mounted gravitational catapult."
	id = "mech_gravcatapult"
	req_tech = list(TECH_BLUESPACE = 2, TECH_MAGNET = 3, TECH_ENGINEERING = 3)
	build_path = /obj/item/mecha_parts/mecha_equipment/gravcatapult

/datum/design/item/mecha/repair_droid
	name = "Repair droid"
	desc = "Automated repair droid, exosuits' best companion. BEEP BOOP"
	id = "mech_repair_droid"
	req_tech = list(TECH_MAGNET = 3, TECH_DATA = 3, TECH_ENGINEERING = 3)
	materials = list(DEFAULT_WALL_MATERIAL = 10000, "gold" = 1000, "silver" = 2000, "glass" = 5000)
	build_path = /obj/item/mecha_parts/mecha_equipment/repair_droid

/datum/design/item/mecha/phoron_generator
	desc = "Phoron reactor."
	id = "mech_phoron_generator"
	req_tech = list(TECH_PHORON = 2, TECH_POWER= 2, TECH_ENGINEERING = 2)
	build_path = /obj/item/mecha_parts/mecha_equipment/generator
	materials = list(DEFAULT_WALL_MATERIAL = 10000, "silver" = 500, "glass" = 1000)

/datum/design/item/mecha/energy_relay
	name = "Energy relay"
	id = "mech_energy_relay"
	req_tech = list(TECH_MAGNET = 4, TECH_POWER = 3)
	materials = list(DEFAULT_WALL_MATERIAL = 10000, "gold" = 2000, "silver" = 3000, "glass" = 2000)
	build_path = /obj/item/mecha_parts/mecha_equipment/tesla_energy_relay

/datum/design/item/mecha/ccw_armor
	name = "CCW armor booster"
	desc = "Exosuit close-combat armor booster."
	id = "mech_ccw_armor"
	req_tech = list(TECH_MATERIAL = 5, TECH_COMBAT = 4)
	materials = list(DEFAULT_WALL_MATERIAL = 20000, "silver" = 5000)
	build_path = /obj/item/mecha_parts/mecha_equipment/armor_booster/anticcw_armor_booster

/datum/design/item/mecha/proj_armor
	desc = "Exosuit projectile armor booster."
	id = "mech_proj_armor"
	req_tech = list(TECH_MATERIAL = 5, TECH_COMBAT = 5, TECH_ENGINEERING = 3)
	materials = list(DEFAULT_WALL_MATERIAL = 20000, "gold" = 5000)
	build_path = /obj/item/mecha_parts/mecha_equipment/armor_booster/antiproj_armor_booster

/datum/design/item/mecha/diamond_drill
	name = "Diamond drill"
	desc = "A diamond version of the exosuit drill. It's harder, better, faster, stronger."
	id = "mech_diamond_drill"
	req_tech = list(TECH_MATERIAL = 4, TECH_ENGINEERING = 3)
	materials = list(DEFAULT_WALL_MATERIAL = 10000, "diamond" = 6500)
	build_path = /obj/item/mecha_parts/mecha_equipment/tool/drill/diamonddrill

/datum/design/item/mecha/generator_nuclear
	name = "Nuclear reactor"
	desc = "Exosuit-held nuclear reactor. Converts uranium and everyone's health to energy."
	id = "mech_generator_nuclear"
	req_tech = list(TECH_POWER= 3, TECH_ENGINEERING = 3, TECH_MATERIAL = 3)
	materials = list(DEFAULT_WALL_MATERIAL = 10000, "silver" = 500, "glass" = 1000)
	build_path = /obj/item/mecha_parts/mecha_equipment/generator/nuclear

/datum/design/item/synthetic_flash
	name = "Synthetic flash"
	id = "sflash"
	req_tech = list(TECH_MAGNET = 3, TECH_COMBAT = 2)
	build_type = MECHFAB
	materials = list(DEFAULT_WALL_MATERIAL = 750, "glass" = 750)
	build_path = /obj/item/device/flash/synthetic
	category = "Misc"

//hardsuits modules

/datum/design/hardsuitmodules
	build_type = MECHFAB
	category = "Hardsuit Modules"
	time = 10

/datum/design/hardsuitmodules/iss_module
	name = "IIS module"
	desc = "An integrated intelligence system module suitable for most hardsuits."
	id = "iis_module"
	req_tech = list(TECH_DATA = 4, TECH_MATERIAL = 3)
	materials = list("glass" = 7500, DEFAULT_WALL_MATERIAL = 5000)
	build_path = /obj/item/rig_module/ai_container

/datum/design/hardsuitmodules/sink_module
	name = "hardsuit power sink"
	desc = "An heavy-duty power sink suitable for hardsuits."
	id = "power_sink_module"
	req_tech = list(TECH_POWER = 4, TECH_MATERIAL = 3, TECH_ENGINEERING = 4, TECH_ILLEGAL = 3)
	materials = list(DEFAULT_WALL_MATERIAL = 10000, "gold"= 2000, "silver"= 3000, "glass"= 2000)
	build_path = /obj/item/rig_module/power_sink

/datum/design/hardsuitmodules/meson_module
	name = "hardsuit meson scanner"
	desc = "A layered, translucent visor system for a hardsuit."
	id = "meson_module"
	req_tech = list(TECH_MAGNET = 4, TECH_MATERIAL = 2, TECH_ENGINEERING = 3)
	materials = list("glass"= 5000, DEFAULT_WALL_MATERIAL= 1500)
	build_path = /obj/item/rig_module/vision/meson

/datum/design/hardsuitmodules/sechud_module
	name = "hardsuit security hud"
	desc = "A simple tactical information system for a hardsuit."
	id = "sechud_module"
	req_tech = list(TECH_BIO = 3, TECH_MATERIAL = 2, TECH_MAGNET = 3)
	materials = list("glass" = 5000, DEFAULT_WALL_MATERIAL =1500)
	build_path = /obj/item/rig_module/vision/sechud

/datum/design/hardsuitmodules/medhud_module
	name = "hardsuit medical hud"
	desc = "A simple medical status indicator for a hardsuit."
	id = "medhu_module"
	req_tech = list(TECH_BIO = 3, TECH_MATERIAL = 2, TECH_MAGNET = 3)
	materials = list("glass"= 5000, DEFAULT_WALL_MATERIAL =1500)
	build_path = /obj/item/rig_module/vision/medhud

/datum/design/hardsuitmodules/nvg_module
	name = "hardsuit night vision interface"
	desc = "A multi input night vision system for a hardsuit."
	id = "nvg_module"
	req_tech = list(TECH_BIO = 4, TECH_MATERIAL = 3, TECH_MAGNET = 4)
	materials = list("glass" = 5000, DEFAULT_WALL_MATERIAL = 1500, "uranium" = 5000)
	build_path = /obj/item/rig_module/vision/nvg

/datum/design/hardsuitmodules/healthscanner_module
	name = "hardsuit health scanner"
	desc = "A hardsuit-mounted health scanner."
	id = "healthscanner_module"
	req_tech = list(TECH_BIO = 3, TECH_MATERIAL = 3, TECH_MAGNET = 2)
	materials = list("glass" = 5250, DEFAULT_WALL_MATERIAL = 2500)
	build_path = /obj/item/rig_module/device/healthscanner

/datum/design/hardsuitmodules/chem_module
	name = "mounted chemical injector"
	desc = "A complex web of tubing and a large needle suitable for hardsuit use."
	id = "chem_module"
	req_tech = list(TECH_BIO = 5, TECH_MATERIAL = 4, TECH_DATA = 3, TECH_PHORON = 2)
	materials = list("glass" = 9250, DEFAULT_WALL_MATERIAL = 10000, "gold" = 2500, "silver" = 4250, "phoron" = 5500)
	build_path = /obj/item/rig_module/chem_dispenser/injector

/datum/design/hardsuitmodules/plasmacutter_module
	name = "hardsuit plasma cutter"
	desc = "A self-sustaining plasma arc capable of cutting through walls."
	id = "plasmacutter_module"
	req_tech = list(TECH_ENGINEERING = 4, TECH_MATERIAL = 3, TECH_PHORON = 4)
	materials = list("glass" = 5250, DEFAULT_WALL_MATERIAL = 30000, "silver" = 5250, "phoron" = 7250)
	build_path = /obj/item/rig_module/mounted/plasmacutter

/datum/design/hardsuitmodules/jet_module
	name = "hardsuit maneuvering jets"
	desc = "A compact gas thruster system for a hardsuit."
	id = "jet_module"
	req_tech = list(TECH_ENGINEERING = 4, TECH_MATERIAL = 3, TECH_POWER = 2)
	materials = list("glass" = 4250, DEFAULT_WALL_MATERIAL = 15000, "silver" = 4250,"uranium" = 5250)
	build_path = /obj/item/rig_module/maneuvering_jets

/datum/design/hardsuitmodules/drill_module
	name = "hardsuit drill mount"
	desc = "A very heavy diamond-tipped drill."
	id = "drill_module"
	req_tech = list(TECH_ENGINEERING = 5, TECH_MATERIAL = 5, TECH_POWER = 4, TECH_MAGNET = 4)
	materials = list("glass" = 2250, DEFAULT_WALL_MATERIAL = 55000, "silver" = 5250, "diamond" = 3750)
	build_path = /obj/item/rig_module/device/drill

/datum/design/hardsuitmodules/rcd_module
	name = "RCD mount"
	desc = "A cell-powered rapid construction device for a hardsuit."
	id = "rcd_module"
	req_tech = list(TECH_ENGINEERING = 6, TECH_MATERIAL = 5, TECH_POWER = 5, TECH_BLUESPACE = 4)
	materials = list(DEFAULT_WALL_MATERIAL= 30000, "phoron" = 12500, "silver" = 10000, "gold" = 10000)
	build_path = /obj/item/rig_module/device/rcd

/datum/design/hardsuitmodules/actuators_module
	name = "leg actuators"
	desc = "A set of electromechanical actuators, for safe traversal of multilevelled areas."
	id = "actuators_module"
	req_tech = list(TECH_ENGINEERING = 4, TECH_MATERIAL = 4, TECH_POWER = 3)
	materials = list(DEFAULT_WALL_MATERIAL = 85000, "glass" = 1250, "silver" = 5250, "gold" = 2750)
	build_path = /obj/item/rig_module/actuators

/datum/design/hardsuitmodules/taser_module
	name = "mounted taser"
	desc = "A palm-mounted nonlethal energy projector."
	id = "taser_module"
	req_tech = list(TECH_MATERIAL = 2, TECH_POWER = 3, TECH_COMBAT = 3, TECH_MAGNET = 2)
	materials = list(DEFAULT_WALL_MATERIAL = 7000, "glass" = 5250)
	build_path = /obj/item/rig_module/mounted/taser

/datum/design/hardsuitmodules/egun_module
	name = "mounted energy gun"
	desc = "A forearm-mounted energy projector."
	id = "egun_module"
	req_tech = list(TECH_MATERIAL = 3, TECH_POWER = 4, TECH_COMBAT = 4, TECH_MAGNET = 3)
	materials = list(DEFAULT_WALL_MATERIAL= 7000, "glass"= 2250, "uranium"= 3250, "gold"= 2500)
	build_path = /obj/item/rig_module/mounted/egun

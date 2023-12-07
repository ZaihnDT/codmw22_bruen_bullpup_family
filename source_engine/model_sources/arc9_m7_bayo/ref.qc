$maxverts 9999999

$modelname "c_melee_knife_m7_bayo.mdl"

$bodygroup "ref"
{
	studio "ref_m7_bayo.smd"
	blank
}

// C Hands Bones
$include bones_chands.qci

// MW Rig Bones
$include bones_mwrig.qci

// Weapon Bones
$include bones_weapon.qc

$surfaceprop "default"
$contents "solid"
$illumposition 0 0 0

$cdmaterials "zaihny\cs2\weapons\m7bay\"

$attachment "1" "tag_camera" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$include "additives.qci"

$sequence "idle" {
	"anims\idle.smd"
	fps 30
	"ACT_VM_IDLE" 1
	loop
	fadein 0.3
	fadeout 0.3
	node "Ready"
	addlayer "blend_move"
	addlayer "blend_walk"
	{ event 9011 0 "1" }
	{ event 9021 0 "1" }
	ikrule rhand touch "tag_knife_offset" usesource
	ikrule lhand touch "tag_knife_offset" usesource
}

$sequence "draw" {
	"anims\raise_first.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0
	fadeout 0.2
	fps 30
	{ event 5004 5 "Viewmodel.Large" }
	{ event 5004 15 "Viewmodel.Large" }
	{ event 5004 20 "Viewmodel.Medium" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_knife_offset" usesource
	ikrule lhand touch "tag_knife_offset" usesource
}

$sequence "draw_short" {
	"anims\raise.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0
	fadeout 0.2
	fps 30
	{ event 9011 0 "0" }
	{ event 9011 5 "1" }
	{ event 5004 10 "Viewmodel.Large" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_knife_offset" usesource
	ikrule lhand touch "tag_knife_offset" usesource
}

$sequence "holster" {
	"anims\holster.smd"
	fadein 0.3
	fadeout 0.3
	fps 30
    { event 5004 3 "Viewmodel.Medium" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_knife_offset" usesource
	ikrule lhand touch "tag_knife_offset" usesource
}

$sequence "lookat01" {
	"anims\inspect.smd"
	activity "ACT_VM_FIDGET" 1
	fadein 0.3
	fadeout 0.3
	fps 30
	{ event 9011 4 "0" }
	{ event 9021 1 "1" }
	{ event 9011 134 "1" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_knife_offset" usesource
	ikrule lhand touch "tag_knife_offset" usesource
}

$sequence "sprint" {
	"anims\sprint.smd"
	fadein 0.35
	fadeout 0.35
	fps 30
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_knife_offset" usesource
	ikrule lhand touch "tag_knife_offset" usesource
}

$sequence "sprint_in" {
	"anims\sprint_out.smd"
	fadein 0.3
	fadeout 0.3
	fps 30
	reverse
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_knife_offset" usesource
	ikrule lhand touch "tag_knife_offset" usesource
}

$sequence "sprint_out" {
	"anims\sprint_out.smd"
	fadein 0.3
	fadeout 0.3
	fps 30
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_knife_offset" usesource
	ikrule lhand touch "tag_knife_offset" usesource
}

$sequence "melee_01" {
	"anims\miss_03.smd"
	fadein 0.1
	fadeout 0.2
	fps 30
	{ event 9011 0 "0" }
	{ event 9021 0 "0" }
	{ event 5004 7 "Viewmodel.Large" }
	{ event 5004 8 "Viewmodel.Medium" }
	{ event 5004 15 "Viewmodel.Small" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_knife_offset" usesource
	ikrule lhand touch "tag_knife_offset" usesource
}

$sequence "melee_02" {
	"anims\miss_04.smd"
	fadein 0.1
	fadeout 0.2
	fps 30
	{ event 9011 0 "0" }
	{ event 9021 0 "0" }
	{ event 5004 7 "Viewmodel.Large" }
	{ event 5004 8 "Viewmodel.Medium" }
	{ event 5004 15 "Viewmodel.Small" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_knife_offset" usesource
	ikrule lhand touch "tag_knife_offset" usesource
}

$sequence "melee_03" {
	"anims\swipe_04.smd"
	fadein 0.1
	fadeout 0.2
	fps 30
	{ event 9011 0 "0" }
	{ event 9021 0 "0" }
	{ event 5004 7 "Viewmodel.Large" }
	{ event 5004 8 "Viewmodel.Medium" }
	{ event 5004 15 "Viewmodel.Small" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_knife_offset" usesource
	ikrule lhand touch "tag_knife_offset" usesource
}

$sequence "backstab_01" {
	"anims\fatal_03.smd"
	fadein 0.25
	fadeout 0.25
	fps 60
	{ event 9011 0 "0" }
	{ event 9021 0 "0" }
	{ event 5004 7 "Viewmodel.Large" }
	{ event 5004 8 "Viewmodel.Medium" }
	{ event 5004 15 "Viewmodel.Small" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_knife_offset" usesource
	ikrule lhand touch "tag_knife_offset" usesource
}

$sequence "backstab_02" {
	"anims\fatal_04.smd"
	fadein 0.25
	fadeout 0.25
	fps 60
	{ event 9011 0 "0" }
	{ event 9021 0 "0" }
	{ event 5004 7 "Viewmodel.Large" }
	{ event 5004 8 "Viewmodel.Medium" }
	{ event 5004 15 "Viewmodel.Small" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_knife_offset" usesource
	ikrule lhand touch "tag_knife_offset" usesource
}
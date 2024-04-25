$maxverts 9999999

$modelname "c_akimbo_renetti.mdl"

$bodygroup "ref_r"
{
	studio "ref_r.smd"
}

$bodygroup "ref_l"
{
	studio "ref_l.smd"
}

$bodygroup "slide_r"
{
	studio "slide_r.smd"
}

$bodygroup "mag_l"
{
	studio "mag_15_l.smd"
}

$bodygroup "mag_r"
{
	studio "mag_15r.smd"
}

$bodygroup "grip_r"
{
	studio "grip_r.smd"
}

$bodygroup "grip_l"
{
	studio "grip_l.smd"
}

$bodygroup "slide_l"
{
	studio "slide_l.smd"
}

$bodygroup "trigger_l"
{
	studio "trigger_l.smd"
}

$bodygroup "trigger_r"
{
	studio "trigger_r.smd"
}

$include bones_chands.qci
$include bones_mwrig2.qci
$include bones_weapon.qc

$surfaceprop "default"
$contents "solid"
$illumposition 0 0 0

$cdmaterials "models\mw23\renetti\"

$attachment "1" "tag_flash" 0 0 0 rotate 0 0 0
$attachment "2" "tag_flash_l" 0 0 0 rotate 0 0 0
$attachment "3" "tag_brass" 0 0 0 rotate 0 0 0
$attachment "4" "tag_brass_l" 0 0 0 rotate 0 0 0
$attachment "5" "j_mag1_l" 0 0 0 rotate 0 0 0
$attachment "6" "j_mag1" 0 0 0 rotate 0 0 0
$attachment "7" "tag_camera" 0 0 0 rotate 0 0 0

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
	addlayer "blend_idle"
	addlayer "empty"
	ikrule rhand touch "j_gun_r" usesource
	ikrule lhand touch "tag_sling_l" usesource
}

$sequence "fire_left" {
	"anims\fire_left.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
	addlayer "blend_move"
	addlayer "blend_walk"
	addlayer "blend_idle"
	addlayer "empty"
	ikrule rhand touch "j_gun_r" usesource
	ikrule lhand touch "tag_sling_l" usesource
}

$sequence "fire_right" {
	"anims\fire_right.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
	addlayer "blend_move"
	addlayer "blend_walk"
	addlayer "blend_idle"
	addlayer "empty"
	ikrule rhand touch "j_gun_r" usesource
	ikrule lhand touch "tag_sling_l" usesource
}

$sequence "reload" {
	"anims\reload.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event 9011 0 "0" }
	{ event 5004 6 "Viewmodel.Small" }
	{ event 5004 25 "Viewmodel.Small" }
	{ event 5004 27 "Viewmodel.Small" }
	{ event 5004 55 "Viewmodel.Medium" }
	{ event 5004 66 "Viewmodel.Small" }
	{ event 9011 69 "1" }
	addlayer "blend_move"
	addlayer "blend_walk"
	addlayer "blend_idle"
	addlayer "empty"
	ikrule rhand touch "j_gun_r" usesource
	ikrule lhand touch "tag_sling_l" usesource
}

$sequence "reload_empty" {
	"anims\reload_empty.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event 9011 0 "0" }
	{ event 5004 8 "Viewmodel.Small" }
	{ event 5004 24 "Viewmodel.Small" }
	{ event 5004 37 "Viewmodel.Small" }
	{ event 5004 55 "Viewmodel.Medium" }
	{ event 5004 66 "Viewmodel.Small" }
	{ event 5004 74 "Viewmodel.Small" }
	{ event 5004 76 "Viewmodel.Small" }
	{ event 9011 85 "1" }
	addlayer "blend_move"
	addlayer "blend_walk"
	addlayer "blend_idle"
	ikrule rhand touch "j_gun_r" usesource
	ikrule lhand touch "tag_sling_l" usesource
}

$sequence "reload_fast" {
	"anims\reload_fast.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	//addlayer "empty"
	{ event 9011 0 "0" }
	{ event 5004 7 "Viewmodel.Small" }
	{ event 5004 22 "Viewmodel.Small" }
	{ event 5004 29 "Viewmodel.Small" }
	{ event 5004 39 "Viewmodel.Medium" }
	{ event 5004 45 "Viewmodel.Small" }
	{ event 9011 53 "1" }
	addlayer "blend_move"
	addlayer "blend_walk"
	addlayer "blend_idle"
	addlayer "empty"
	ikrule rhand touch "j_gun_r" usesource
	ikrule lhand touch "tag_sling_l" usesource
}

$sequence "reload_fast_empty" {
	"anims\reload_empty_fast.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	//addlayer "empty"
	{ event 9011 0 "0" }
	{ event 5004 6 "Viewmodel.Small" }
	{ event 5004 21 "Viewmodel.Small" }
	{ event 5004 29 "Viewmodel.Small" }
	{ event 5004 42 "Viewmodel.Medium" }
	{ event 5004 50 "Viewmodel.Small" }
	{ event 5004 58 "Viewmodel.Small" }
	{ event 5004 59 "Viewmodel.Small" }
	{ event 9011 68 "1" }
	addlayer "blend_move"
	addlayer "blend_walk"
	addlayer "blend_idle"
	ikrule rhand touch "j_gun_r" usesource
	ikrule lhand touch "tag_sling_l" usesource
}

$sequence "draw_first" {
	"anims\raise_first.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event 5004 13 "Viewmodel.Medium" }
	{ event 5004 28 "Viewmodel.Small" }
	addlayer "blend_move"
	addlayer "blend_walk"
	addlayer "blend_idle"
	addlayer "empty"
	ikrule rhand touch "j_gun_r" usesource
	ikrule lhand touch "tag_sling_l" usesource
}

$sequence "draw" {
	"anims\raise.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event 9011 6 "1" }
	{ event 5004 1 "Viewmodel.Small" }
	addlayer "blend_move"
	addlayer "blend_walk"
	addlayer "blend_idle"
	addlayer "empty"
	ikrule rhand touch "j_gun_r" usesource
	ikrule lhand touch "tag_sling_l" usesource
}

$sequence "holster" {
	"anims\drop.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event 9011 0 "0" }
	addlayer "blend_move"
	addlayer "blend_walk"
	addlayer "blend_idle"
	addlayer "empty"
	ikrule rhand touch "j_gun_r" usesource
	ikrule lhand touch "tag_sling_l" usesource
}

$sequence "lookat01" {
	"anims\inspect.smd"
	activity "ACT_VM_FIDGET" 1
	fadein 0.3
	fadeout 0.3
	fps 30
	{ event 9011 0 "0" }
	{ event 5004 68 "Viewmodel.Small" }
	{ event 9011 117 "1" }
	{ event 5004 118 "Viewmodel.Small" }
	addlayer "blend_move"
	addlayer "blend_walk"
	addlayer "blend_idle"
	addlayer "empty"
	ikrule rhand touch "j_gun_r" usesource
	ikrule lhand touch "tag_sling_l" usesource
}

$sequence "lookat01_empty" {
	"anims\inspect_empty.smd"
	activity "ACT_VM_FIDGET" 1
	fadein 0.3
	fadeout 0.3
	fps 30
	{ event 9011 0 "0" }
	{ event 5004 68 "Viewmodel.Small" }
	{ event 9011 117 "1" }
	{ event 5004 118 "Viewmodel.Small" }
	addlayer "blend_move"
	addlayer "blend_walk"
	addlayer "blend_idle"
	addlayer "empty"
	ikrule rhand touch "j_gun_r" usesource
	ikrule lhand touch "tag_sling_l" usesource
}


$sequence "melee" {
	"anims\melee_hit_01.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event 9011 0 "0" }
	{ event 9021 0 "0" }
	{ event 5004 7 "Viewmodel.Large" }
	{ event 5004 8 "Viewmodel.Medium" }
	{ event 9021 26 "1" }
	{ event 9011 26 "1" }
	{ event 5004 31 "Viewmodel.Small" }
	addlayer "blend_move"
	addlayer "blend_walk"
	addlayer "blend_idle"
	addlayer "empty"
	ikrule rhand touch "j_gun_r" usesource
	ikrule lhand touch "tag_sling_l" usesource
}

$sequence "melee2" {
	"anims\melee_hit_02.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event 9011 0 "0" }
	{ event 9021 0 "0" }
	{ event 5004 7 "Viewmodel.Large" }
	{ event 5004 8 "Viewmodel.Medium" }
	{ event 9021 26 "1" }
	{ event 9011 26 "1" }
	{ event 5004 31 "Viewmodel.Small" }
	addlayer "blend_move"
	addlayer "blend_walk"
	addlayer "blend_idle"
	addlayer "empty"
	ikrule rhand touch "j_gun_r" usesource
	ikrule lhand touch "tag_sling_l" usesource
}

$sequence "melee3" {
	"anims\melee_hit_03.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event 9011 0 "0" }
	{ event 9021 0 "0" }
	{ event 5004 7 "Viewmodel.Large" }
	{ event 5004 8 "Viewmodel.Medium" }
	{ event 9021 26 "1" }
	{ event 9011 26 "1" }
	{ event 5004 31 "Viewmodel.Small" }
	addlayer "blend_move"
	addlayer "blend_walk"
	addlayer "blend_idle"
	addlayer "empty"
	ikrule rhand touch "j_gun_r" usesource
	ikrule lhand touch "tag_sling_l" usesource
}
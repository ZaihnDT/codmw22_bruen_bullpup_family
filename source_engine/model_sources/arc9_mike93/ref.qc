$maxverts 9999999

$modelname "c_pist_renetti.mdl"

$bodygroup "ref"
{
	studio "ref"
}
$bodygroup "barrel"
{
	studio "barrel"
	studio "barlong"
	studio "barlonghvy"
	studio "barshort"
}
$bodygroup "barrel_mount"
{
	blank
	studio "barrel_mount"
}
$bodygroup "pgrip"
{
	studio "pgrip"
	studio "pgripaim"
	studio "pgripergo"
	studio "pgriptac"
}
$bodygroup "trigger"
{
	studio "trigger"
	studio "triggerhair"
	studio "triggerheavy"
	studio "triggerlight"
}
$bodygroup "mag"
{
	studio "mag_15"
	studio "mag_24"
	studio "mag_30"
	studio "mag_50"
}
$bodygroup "ammo"
{
	studio "9p"
	studio "9p_fn"
	studio "9p_hp"
	studio "9p_ap"
}


$include bones_chands.qci
$include bones_mwrig.qci
$include bones_weapon.qc

$surfaceprop "default"
$contents "solid"
$illumposition 0 0 0

$cdmaterials "models\mw23\renetti\"

$attachment "1" "tag_flash" 0 0 0 rotate 0 0 0
$attachment "2" "tag_brass" 0 0 0 rotate 0 0 0
$attachment "3" "j_mag1" 0 0 0 rotate 0 0 0
$attachment "4" "tag_camera" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0
$include "additives.qci"
$include "additives_supersprint.qci"

$sequence "idle" {
	"anims\idle.smd"
	fps 30
	"ACT_VM_IDLE" 1
	loop
	fadein 0.2
	fadeout 0.2
	node "Ready"
	addlayer "empty"
	addlayer "firemode"
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "shoot1" {
	"anims\fire.smd"
	"anims\fire_ads.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
	addlayer "empty"
	addlayer "firemode"
	blend "aim_blend" 0 1
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "reload" {
	"anims\reload.smd"
	"anims\reload_ads.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	//addlayer "empty"
	blend "aim_blend" 0 1
	{ event 9011 0 "0" }
	{ event 5004 6 "Viewmodel.Small" }
	{ event 5004 9 "Viewmodel.Medium" }
	{ event 5004 19 "Viewmodel.Small" }
	{ event 5004 25 "Viewmodel.Medium" }
	{ event 5004 39 "Viewmodel.Large" }
	{ event 9011 45 "1" }
	addlayer "blend_move"
	addlayer "blend_walk"
	addlayer "firemode"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "reload_empty" {
	"anims\reload_empty.smd"
	"anims\reload_empty_ads.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	//addlayer "empty"
	blend "aim_blend" 0 1
	{ event 9011 0 "0" }
	{ event 5004 11 "Viewmodel.Small" }
	{ event 5004 21 "Viewmodel.Small" }
	{ event 5004 34 "Viewmodel.Small" }
	{ event 5004 36 "Viewmodel.Medium" }
	{ event 5004 49 "Viewmodel.Small" }
	{ event 5004 51 "Viewmodel.Medium" }
	addlayer "blend_move"
	addlayer "blend_walk"
	addlayer "firemode"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "reload_fast" {
	"anims\reload_fast.smd"
	"anims\reload_fast_ads.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	blend "aim_blend" 0 1
	{ event 9011 0 "0" }
	{ event 5004 6 "Viewmodel.Small" }
	{ event 5004 19 "Viewmodel.Small" }
	{ event 5004 21 "Viewmodel.Medium" }
	{ event 9011 25 "1" }
	addlayer "blend_move"
	addlayer "blend_walk"
	addlayer "firemode"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "reload_fast_empty" {
	"anims\reload_empty_fast.smd"
	"anims\reload_empty_fast_ads.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	blend "aim_blend" 0 1
	addlayer "blend_move"
	addlayer "blend_walk"
	addlayer "firemode"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "reload_xmag" {
	"anims\reload_30rd.smd"
	"anims\reload_30rd_ads.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	//addlayer "empty"
	blend "aim_blend" 0 1
	{ event 9011 0 "0" }
	{ event 5004 6 "Viewmodel.Small" }
	{ event 5004 9 "Viewmodel.Medium" }
	{ event 5004 19 "Viewmodel.Small" }
	{ event 5004 25 "Viewmodel.Medium" }
	{ event 5004 39 "Viewmodel.Large" }
	{ event 9011 45 "1" }
	addlayer "blend_move"
	addlayer "blend_walk"
	addlayer "firemode"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "reload_xmag_empty" {
	"anims\reload_empty_30rd.smd"
	"anims\reload_empty_30rd_ads.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	//addlayer "empty"
	blend "aim_blend" 0 1
	{ event 9011 0 "0" }
	{ event 5004 11 "Viewmodel.Small" }
	{ event 5004 21 "Viewmodel.Small" }
	{ event 5004 34 "Viewmodel.Small" }
	{ event 5004 36 "Viewmodel.Medium" }
	{ event 5004 49 "Viewmodel.Small" }
	{ event 5004 51 "Viewmodel.Medium" }
	addlayer "blend_move"
	addlayer "blend_walk"
	addlayer "firemode"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "reload_xmag_fast" {
	"anims\reload_fast_30rd.smd"
	"anims\reload_fast_30rd_ads.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	blend "aim_blend" 0 1
	{ event 9011 0 "0" }
	{ event 5004 6 "Viewmodel.Small" }
	{ event 5004 19 "Viewmodel.Small" }
	{ event 5004 21 "Viewmodel.Medium" }
	{ event 9011 25 "1" }
	addlayer "blend_move"
	addlayer "blend_walk"
	addlayer "firemode"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "reload_xmag_fast_empty" {
	"anims\reload_empty_fast.smd"
	"anims\reload_empty_fast_ads.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	blend "aim_blend" 0 1
	addlayer "blend_move"
	addlayer "blend_walk"
	addlayer "firemode"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "reload_drum" {
	"anims\reload_drum.smd"
	"anims\reload_drum_ads.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	//addlayer "empty"
	blend "aim_blend" 0 1
	{ event 9011 0 "0" }
	{ event 5004 20 "Viewmodel.Small" }
	{ event 5004 24 "Viewmodel.Small" }
	{ event 5004 35 "Viewmodel.Small" }
	{ event 5004 40 "Viewmodel.Medium" }
	{ event 5004 48 "Viewmodel.Medium" }
	{ event 9011 67 "1" }
	addlayer "blend_move"
	addlayer "blend_walk"
	addlayer "firemode"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "reload_drum_empty" {
	"anims\reload_empty_drum.smd"
	"anims\reload_empty_drum_ads.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	//addlayer "empty"
	blend "aim_blend" 0 1
	addlayer "blend_move"
	addlayer "blend_walk"
	addlayer "firemode"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "reload_drum_fast" {
	"anims\reload_fast_drum.smd"
	"anims\reload_fast_drum_ads.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	//addlayer "empty"
	blend "aim_blend" 0 1
	{ event 9011 0 "0" }
	{ event 5004 20 "Viewmodel.Small" }
	{ event 5004 24 "Viewmodel.Small" }
	{ event 5004 35 "Viewmodel.Small" }
	{ event 5004 40 "Viewmodel.Medium" }
	{ event 5004 48 "Viewmodel.Medium" }
	{ event 9011 67 "1" }
	addlayer "blend_move"
	addlayer "blend_walk"
	addlayer "firemode"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "reload_drum_fast_empty" {
	"anims\reload_empty_fast_drum.smd"
	"anims\reload_empty_fast_drum_ads.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	//addlayer "empty"
	blend "aim_blend" 0 1
	addlayer "blend_move"
	addlayer "blend_walk"
	addlayer "firemode"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "draw" {
	"anims\raise_first.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0
	fadeout 0.2
	fps 30
	addlayer "empty"
	{ event 5004 3 "Viewmodel.Small" }
	{ event 5004 5 "Viewmodel.Small" }
	{ event 9011 4 "1" }
	addlayer "blend_move"
	addlayer "blend_walk"
	addlayer "firemode"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}
$sequence "draw_short" {
	"anims\raise.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0
	fadeout 0.2
	fps 30
	addlayer "empty"
	{ event 5004 10 "Viewmodel.Small" }
	{ event 5004 20 "Viewmodel.Small" }
	{ event 9011 20 "1" }
	addlayer "blend_move"
	addlayer "blend_walk"
	addlayer "firemode"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "holster" {
	"anims\drop.smd"
	fadein 0.3
	fadeout 0.3
	fps 30
	addlayer "empty"
	addlayer "firemode"
	{ event 9011 0 "0" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "lookat01" {
	"anims/inspect.smd"
	activity "ACT_VM_FIDGET" 1
	fadein 0.3
	fadeout 0.3
	fps 30
	addlayer "empty"
	{ event 9011 0 "0" }
	{ event 5004 16 "Viewmodel.Small" }
	{ event 5004 18 "Viewmodel.Small" }
	{ event 5004 22 "Viewmodel.Small" }
	{ event 5004 50 "Viewmodel.Small" }
	{ event 5004 75 "Viewmodel.Small" }
	{ event 5004 83 "Viewmodel.Medium" }
	{ event 5004 99 "Viewmodel.Small" }
	{ event 5004 115 "Viewmodel.Small" }
	{ event 9011 117 "1" }
	{ event 5004 128 "Viewmodel.Small" }
	addlayer "blend_move"
	addlayer "blend_walk"
	addlayer "firemode"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}
$sequence "lookat01_drum" {
	"anims/inspect_drum.smd"
	activity "ACT_VM_FIDGET" 1
	fadein 0.3
	fadeout 0.3
	fps 30
	addlayer "empty"
	{ event 9011 0 "0" }
	{ event 5004 68 "Viewmodel.Small" }
	{ event 9011 117 "1" }
	{ event 5004 118 "Viewmodel.Small" }
	addlayer "blend_move"
	addlayer "blend_walk"
	addlayer "firemode"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "melee" {
	"anims\melee_hit_01.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	addlayer "empty"
	{ event 9011 0 "0" }
	{ event 9021 0 "0" }
	{ event 5004 7 "Viewmodel.Large" }
	{ event 5004 8 "Viewmodel.Medium" }
	{ event 9021 26 "1" }
	{ event 9011 26 "1" }
	{ event 5004 31 "Viewmodel.Small" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_pistol_offset" usesource
	ikrule lhand touch "tag_pistol_offset" usesource
}

$sequence "melee2" {
	"anims\melee_hit_02.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	addlayer "empty"
	{ event 9011 0 "0" }
	{ event 9021 0 "0" }
	{ event 5004 7 "Viewmodel.Large" }
	{ event 5004 8 "Viewmodel.Medium" }
	{ event 9021 26 "1" }
	{ event 9011 26 "1" }
	{ event 5004 31 "Viewmodel.Small" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_pistol_offset" usesource
	ikrule lhand touch "tag_pistol_offset" usesource
}

$sequence "melee3" {
	"anims\melee_hit_03.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	addlayer "empty"
	{ event 9011 0 "0" }
	{ event 9021 0 "0" }
	{ event 5004 7 "Viewmodel.Large" }
	{ event 5004 8 "Viewmodel.Medium" }
	{ event 9021 26 "1" }
	{ event 9011 26 "1" }
	{ event 5004 31 "Viewmodel.Small" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_pistol_offset" usesource
	ikrule lhand touch "tag_pistol_offset" usesource
}

$sequence "selectsemi_off" {
	"anims\selectsemi_off.smd"
	fadein 0.1
	fadeout 0.3
	fps 30
	{ event 9011 0 "0" }
	addlayer "blend_move"
	addlayer "blend_walk"
	addlayer "empty"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "selectsemi_on" {
	"anims\selectsemi_on.smd"
	fadein 0.1
	fadeout 0.3
	fps 30
	{ event 9011 0 "0" }
	addlayer "blend_move"
	addlayer "blend_walk"
	addlayer "empty"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}
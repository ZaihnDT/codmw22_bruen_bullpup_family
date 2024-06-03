$maxverts 9999999

$modelname "c_smg_renetti_jak.mdl"

$bodygroup "ref"
{
	studio "ref"
}
$bodygroup "barrel"
{
	blank
}
$bodygroup "sights"
{
	studio "sights_on"
	studio "sights_off"
	blank
}
$bodygroup "pgrip"
{
	studio "pgrip"
	studio "pgripaim"
	studio "pgripergo"
	blank
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
$bodygroup "stock"
{
	studio "stock"
	studio "stock_brace"
	studio "stock_heavy"
}
$bodygroup "grip"
{
	studio "grip"
	blank
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
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
	blend "aim_blend" 0 1
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
	{ event 5004 13 "Viewmodel.Small" }
	{ event 5004 25 "Viewmodel.Small" }
	{ event 5004 31 "Viewmodel.Medium" }
	{ event 9011 46 "1" }
	addlayer "blend_move"
	addlayer "blend_walk"
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
	blend "aim_blend" 0 1
	{ event 9011 0 "0" }
	{ event 5004 6 "Viewmodel.Small" }
	{ event 5004 9 "Viewmodel.Medium" }
	{ event 5004 23 "Viewmodel.Small" }
	{ event 5004 29 "Viewmodel.Medium" }
	{ event 5004 39 "Viewmodel.Small" }
	{ event 5004 42 "Viewmodel.Large" }
	{ event 9011 49 "1" }
	addlayer "blend_move"
	addlayer "blend_walk"
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
	//addlayer "empty"
	blend "aim_blend" 0 1
	{ event 9011 0 "0" }
	{ event 5004 9 "Viewmodel.Small" }
	{ event 5004 24 "Viewmodel.Medium" }
	{ event 9011 30 "1" }
	addlayer "blend_move"
	addlayer "blend_walk"
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
	//addlayer "empty"
	blend "aim_blend" 0 1
	{ event 9011 0 "0" }
	{ event 5004 9 "Viewmodel.Small" }
	{ event 5004 24 "Viewmodel.Medium" }
	{ event 5004 28 "Viewmodel.Medium" }
	{ event 9011 30 "1" }
	addlayer "blend_move"
	addlayer "blend_walk"
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
	{ event 5004 13 "Viewmodel.Small" }
	{ event 5004 25 "Viewmodel.Small" }
	{ event 5004 31 "Viewmodel.Medium" }
	{ event 9011 46 "1" }
	addlayer "blend_move"
	addlayer "blend_walk"
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
	{ event 5004 6 "Viewmodel.Small" }
	{ event 5004 9 "Viewmodel.Medium" }
	{ event 5004 23 "Viewmodel.Small" }
	{ event 5004 29 "Viewmodel.Medium" }
	{ event 5004 39 "Viewmodel.Small" }
	{ event 5004 42 "Viewmodel.Large" }
	{ event 9011 49 "1" }
	addlayer "blend_move"
	addlayer "blend_walk"
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
	//addlayer "empty"
	blend "aim_blend" 0 1
	{ event 9011 0 "0" }
	{ event 5004 9 "Viewmodel.Small" }
	{ event 5004 24 "Viewmodel.Medium" }
	{ event 9011 30 "1" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "reload_xmag_fast_empty" {
	"anims\reload_empty_30rd.smd"
	"anims\reload_empty_30rd_ads.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	//addlayer "empty"
	blend "aim_blend" 0 1
	{ event 9011 0 "0" }
	{ event 5004 9 "Viewmodel.Small" }
	{ event 5004 24 "Viewmodel.Medium" }
	{ event 5004 28 "Viewmodel.Medium" }
	{ event 9011 30 "1" }
	addlayer "blend_move"
	addlayer "blend_walk"
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
	{ event 5004 13 "Viewmodel.Small" }
	{ event 5004 25 "Viewmodel.Small" }
	{ event 5004 31 "Viewmodel.Medium" }
	{ event 9011 46 "1" }
	addlayer "blend_move"
	addlayer "blend_walk"
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
	{ event 9011 0 "0" }
	{ event 5004 6 "Viewmodel.Small" }
	{ event 5004 9 "Viewmodel.Medium" }
	{ event 5004 23 "Viewmodel.Small" }
	{ event 5004 29 "Viewmodel.Medium" }
	{ event 5004 39 "Viewmodel.Small" }
	{ event 5004 42 "Viewmodel.Large" }
	{ event 9011 49 "1" }
	addlayer "blend_move"
	addlayer "blend_walk"
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
	{ event 5004 9 "Viewmodel.Small" }
	{ event 5004 24 "Viewmodel.Medium" }
	{ event 9011 30 "1" }
	addlayer "blend_move"
	addlayer "blend_walk"
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
	{ event 9011 0 "0" }
	{ event 5004 9 "Viewmodel.Small" }
	{ event 5004 24 "Viewmodel.Medium" }
	{ event 5004 28 "Viewmodel.Medium" }
	{ event 9011 30 "1" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "draw" {
	"anims\raise_first.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	addlayer "empty"
	{ event 5004 14 "Viewmodel.Medium" }
	{ event 9011 20 "1" }
	{ event 9021 20 "1" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "draw_short" {
	"anims\raise.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	addlayer "empty"
	{ event 9011 8 "1" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "holster" {
	"anims\drop.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	addlayer "empty"
	{ event 9011 0 "0" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "lookat01" {
	"anims\inspect.smd"
	activity "ACT_VM_FIDGET" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	addlayer "empty"
	{ event 9011 0 "0" }
	{ event 5004 68 "Viewmodel.Small" }
	{ event 9011 117 "1" }
	{ event 5004 118 "Viewmodel.Small" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "lookat01_drum" {
	"anims\inspect_drum.smd"
	activity "ACT_VM_FIDGET" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	addlayer "empty"
	{ event 9011 0 "0" }
	{ event 5004 68 "Viewmodel.Small" }
	{ event 9011 117 "1" }
	{ event 5004 118 "Viewmodel.Small" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "sprint" {
	"anims\sprint_loop.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	addlayer "empty"
	//addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "sprint_in" {
	"anims\sprint_in.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "sprint_out" {
	"anims\sprint_out.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	addlayer "empty"
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "melee" {
	"anims\melee_hit_01.smd"
	fadein 0.1
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
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "melee2" {
	"anims\melee_hit_03.smd"
	fadein 0.1
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
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}
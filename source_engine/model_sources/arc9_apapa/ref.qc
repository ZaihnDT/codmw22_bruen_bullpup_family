$maxverts 9999999

$modelname "c_smg_aug.mdl"

$bodygroup "ref"
{
	studio "refsmg.smd"
	blank
}

$bodygroup "body"
{
	studio "bodysmg.smd"
	studio "bodygripsmg.smd"
}

$bodygroup "muzzle"
{
	studio "muzzlesmg.smd"
	studio "barlong_tip.smd"
	studio "barlght_tip.smd"
	studio "muzzle.smd"
}

$bodygroup "barrel"
{
	studio "barrelsmg.smd"
	studio "barlong.smd"
	studio "barlght.smd"
	studio "barrel.smd"
}

$bodygroup "sight"
{
	studio "sight.smd"
	blank
}

$bodygroup "mag"
{
	studio "magsmg.smd"
	studio "xmagsmg.smd"
}

$bodygroup "stock"
{
	studio "stock_apapa.smd"
	studio "stock.smd"
	studio "stock_ahotel.smd"
}

$bodygroup "mount_laser"
{
	blank
	studio "mount_laser.smd"
}

$bodygroup "ref_hide"
{
	blank
}

$bodygroup "pgrip"
{
	blank
	studio "gripass.smd"
	studio "gripstdy.smd"
	studio "griptac.smd"
}

$bodygroup "rack"
{
	blank
	studio "combammo.smd"
	studio "combhvy.smd"
	studio "combtac.smd"
}

$bodygroup "ammo"
{
	studio "9p.smd"
	studio "9p_fn.smd"
	studio "9p_hp.smd"
	studio "9p_ap.smd"
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

$cdmaterials "models\mw22\aug\"
$cdmaterials "models\cod2019\shared\"
$cdmaterials "models\weapons\v_arccw_go\atts\"

$attachment "1" "tag_flash" -1 0 0 rotate 0 0 0
$attachment "2" "tag_brass" 0 0 0 rotate 0 0 0
$attachment "3" "tag_camera" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

//$include "definebones.qci"
$include "additives.qci"

$sequence "idle" {
	"anims\idle.smd"
	fps 0.416
	"ACT_VM_IDLE" 1
	loop
	fadein 0.3
	fadeout 0.3
	node "Ready"
	addlayer "blend_move"
	addlayer "blend_walk"
	{ event 9011 0 "1" }
	{ event 9021 0 "1" }
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "shoot1" {
	"anims\shoot1.smd"
	"anims\shoot1_ads.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 9011 0 "1" }
	{ event 9021 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
	blend "aim_blend" 0 1
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "reload" {
	"anims\vm_p03_sm_apapa_reload.smd"
	"anims\vm_p03_sm_apapa_reload_ads.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	blend "aim_blend" 0 1
	{ event 9011 0 "0" }
	{ event 5004 16 "Viewmodel.Small" }
	{ event 5004 17 "Viewmodel.Small" }
	{ event 5004 40 "Viewmodel.Small" }
	{ event 5004 48 "Viewmodel.Medium" }
	{ event 9011 55 "1" }
	{ event 5004 63 "Viewmodel.Small" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "reload_empty" {
	"anims\vm_p03_sm_apapa_reload_empty.smd"
	"anims\vm_p03_sm_apapa_reload_empty_ads.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	blend "aim_blend" 0 1
	{ event 9011 0 "0" }
	{ event 5004 10 "Viewmodel.Medium" }
	{ event 5004 13 "Viewmodel.Small" }
	{ event 5004 31 "Viewmodel.Small" }
	{ event 5004 34 "Viewmodel.Small" }
	{ event 5004 57 "Viewmodel.Small" }
	{ event 5004 65 "Viewmodel.Medium" }
	{ event 5004 79 "Viewmodel.Medium" }
	{ event 9011 89 "1" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "reload_fast" {
	"anims\vm_p03_sm_apapa_reload_fast.smd"
	"anims\vm_p03_sm_apapa_reload_fast_ads.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	blend "aim_blend" 0 1
	{ event 9011 0 "0" }
	{ event 5004 11 "Viewmodel.Medium" }
	{ event 5004 27 "Viewmodel.Small" }
	{ event 5004 31 "Viewmodel.Medium" }
	{ event 9011 37 "1" }
	{ event 5004 43 "Viewmodel.Small" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "reload_empty_fast" {
	"anims\vm_p03_sm_apapa_reload_empty_fast.smd"
	"anims\vm_p03_sm_apapa_reload_empty_fast_ads.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	blend "aim_blend" 0 1
	{ event 9011 0 "0" }
	{ event 5004 12 "Viewmodel.Small" }
	{ event 5004 28 "Viewmodel.Small" }
	{ event 5004 32 "Viewmodel.Medium" }
	{ event 5004 41 "Viewmodel.Small" }
	{ event 9011 48 "1" }
	{ event 5004 53 "Viewmodel.Small" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "reload_xmag" {
	"anims\vm_p03_sm_apapa_reload_xmag.smd"
	"anims\vm_p03_sm_apapa_reload_xmag_ads.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	blend "aim_blend" 0 1
	{ event 9011 0 "0" }
	{ event 5004 10 "Viewmodel.Medium" }
	{ event 5004 13 "Viewmodel.Small" }
	{ event 5004 30 "Viewmodel.Small" }
	{ event 5004 33 "Viewmodel.Small" }
	{ event 5004 57 "Viewmodel.Small" }
	{ event 5004 65 "Viewmodel.Medium" }
	{ event 5004 73 "Viewmodel.Medium" }
	{ event 9011 76 "1" }
	{ event 5004 77 "Viewmodel.Small" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "reload_empty_xmag" {
	"anims\vm_p03_sm_apapa_reload_empty_xmag.smd"
	"anims\vm_p03_sm_apapa_reload_empty_xmag_ads.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	blend "aim_blend" 0 1
	{ event 9011 0 "0" }
	{ event 5004 16 "Viewmodel.Small" }
	{ event 5004 17 "Viewmodel.Small" }
	{ event 5004 40 "Viewmodel.Small" }
	{ event 5004 48 "Viewmodel.Medium" }
	{ event 9011 56 "1" }
	{ event 5004 63 "Viewmodel.Small" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "reload_xmag_fast" {
	"anims\vm_p03_sm_apapa_reload_fast_xmag.smd"
	"anims\vm_p03_sm_apapa_reload_fast_xmag_ads.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	blend "aim_blend" 0 1
	{ event 9011 0 "0" }
	{ event 5004 11 "Viewmodel.Medium" }
	{ event 5004 27 "Viewmodel.Small" }
	{ event 5004 31 "Viewmodel.Medium" }
	{ event 9011 38 "1" }
	{ event 5004 43 "Viewmodel.Small" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "reload_empty_xmag_fast" {
	"anims\vm_p03_sm_apapa_reload_empty_fast_xmag.smd"
	"anims\vm_p03_sm_apapa_reload_empty_fast_xmag_ads.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	blend "aim_blend" 0 1
	{ event 9011 0 "0" }
	{ event 5004 12 "Viewmodel.Small" }
	{ event 5004 28 "Viewmodel.Small" }
	{ event 5004 32 "Viewmodel.Medium" }
	{ event 5004 41 "Viewmodel.Small" }
	{ event 9011 50 "1" }
	{ event 5004 54 "Viewmodel.Small" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "draw" {
	"anims\vm_p03_sm_apapa_raise_first.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0
	fadeout 0.2
	fps 30
	{ event 5004 11 "Viewmodel.Large" }
	{ event 5004 18 "Viewmodel.Large" }
	{ event 5004 27 "Viewmodel.Medium" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "draw_short" {
	"anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0
	fadeout 0.2
	fps 30
	{ event 9011 0 "0" }
	{ event 9011 8 "1" }
	{ event 5004 19 "Viewmodel.Large" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "holster" {
	"anims\holster.smd"
	fadein 0.3
	fadeout 0.3
	fps 30
	{ event 9021 0 "0" }
	{ event 9011 7 "0" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "lookat01" {
	"anims\vm_p03_sm_apapa_inspect.smd"
	activity "ACT_VM_FIDGET" 1
	fadein 0.3
	fadeout 0.3
	fps 30
	{ event 9011 4 "0" }
	{ event 9021 1 "1" }
	{ event 9011 134 "1" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "sprint" {
	"anims\sprint.smd"
	fadein 0.3
	fadeout 0.3
	fps 30
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "sprint_in" {
	"anims\sprint_out.smd"
	fadein 0.3
	fadeout 0.3
	fps 30
	reverse
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "sprint_out" {
	"anims\sprint_out.smd"
	fadein 0.3
	fadeout 0.3
	fps 30
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "melee_miss_01" {
	"anims\melee_miss_01.smd"
	fadein 0.1
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
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "melee_miss_02" {
	"anims\melee_miss_02.smd"
	fadein 0.1
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
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "melee_miss_03" {
	"anims\melee_miss_03.smd"
	fadein 0.1
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
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "semi_off" {
	"anims\firemode_off.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event 5004 9 "Viewmodel.Small" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "semi_on" {
	"anims\firemode_on.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event 5004 9 "Viewmodel.Small" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}
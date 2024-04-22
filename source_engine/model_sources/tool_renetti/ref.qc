$modelname "weapons/c_toolgun.mdl"

$bodygroup "ref"
{
	studio "ref"
}
$bodygroup "barrel"
{
	studio "barlonghvy"
}
$bodygroup "barattach"
{
	studio "cos_vm_iw9_mounteddisplay01"
}
$bodygroup "pgrip"
{
	studio "pgriptac"
}
$bodygroup "trigger"
{
	studio "trigger"
}
$bodygroup "mag"
{
	studio "mag_15"
}

$include bones_chands.qci
$include bones_mwrig.qci
$include bones_weapon.qc

$surfaceprop "default"
$contents "solid"
$illumposition 0 0 0

$cdmaterials "models\mw23\toolrenetti\"
$cdmaterials "models\Weapons\v_toolgun\"
$cdmaterials "models\sherrifdoggo\gunscreen\"

$attachment "1" "tag_flash" 0 0 0 rotate 0 0 0
$attachment "2" "tag_brass" 0 0 0 rotate 0 0 0
$attachment "3" "j_mag1" 0 0 0 rotate 0 0 0
$attachment "4" "tag_camera" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$sequence "idle1" {
	"anims\idle.smd"
	fps 30
	loop
	fadein 0.2
	fadeout 0.2

}

$sequence "idle" {
	"anims\idle.smd"
	fps 30
	"ACT_VM_IDLE" 1
	loop
	fadein 0.2
	fadeout 0.2

}

$sequence "shoot" {
	"anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
}

$sequence "shoot1" {
	"anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
}
$sequence "draw_short" {
	"anims\raise.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0
	fadeout 0.2
	fps 30
	{ event 5004 10 "Viewmodel.Small" }
	{ event 5004 20 "Viewmodel.Small" }
	{ event 9011 20 "1" }
}

$sequence "reload" {
	"anims\reload.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event 9011 0 "0" }
	{ event 9011 45 "1" }
}


$sequence "holster" {
	"anims\drop.smd"
	activity "ACT_VM_HOLSTER" 1
	fadein 0.3
	fadeout 0.3
	fps 30
	{ event 9011 0 "0" }
}
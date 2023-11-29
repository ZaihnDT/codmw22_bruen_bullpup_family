AddCSLuaFile()

SWEP.Base = "arc9_cod2019_base_stb556"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = "Assault Rifles"

SWEP.PrintName = "STB 556"

SWEP.Class = "Assault Rifle"
SWEP.Trivia = {
    ["Country of Origin"] = "Switzerland",
    ["Manufacturer"] = "Bruen Arms",
    ["Caliber"] = "5.56 NATO",
    ["Weight (Loaded)"] = "3.6 kg",
    ["Projectile Weight"] = "124 gr",
    ["Muzzle Velocity"] = "3,182 ft/s",
    ["Muzzle Energy"] = "3,780 joules"
}

SWEP.Credits = {
    Author = "ZaihnY/Twilight Sparkle/Firmeteran",
    Assets = "Infinity Ward/Valve/New World Interactive"
}

SWEP.Description = [[The STB 556 is a closed-bolt rifle built around modularity and accuracy, ideal for mid to long-range fights.]]

SWEP.ViewModel = "models/weapons/cod2022/c_rif_aug.mdl"
SWEP.WorldModel = "models/weapons/cod2022/c_rif_aug.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2022/c_rif_aug.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-12, 6, -7.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-11, 5, -1.5),
    TPIKAng = Angle(-9, 0, 175),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 33 -- Damage done at point blank range
SWEP.DamageMin = 16 -- Damage done at maximum range

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 900 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 4000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 11 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.15

SWEP.ImpactForce = 11

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 1312 * 12
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.15

-------------------------- MAGAZINE

SWEP.Ammo = "ar2" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 30 -- Self-explanatory.
SWEP.SupplyLimit = 3 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 10 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 741

SWEP.Firemodes = {
    {
        Mode = -1,
    },
    {
        Mode = 1,
    },
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1.1

SWEP.RecoilPatternDrift = 35

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.1

SWEP.RecoilDissipationRate = 35 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 0.5 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 1.35

SWEP.RecoilMultCrouch = 0.8

SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.8

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilMultSights = 0.2
SWEP.VisualRecoilPunchSights = 5
SWEP.VisualRecoilPunch = 2
SWEP.VisualRecoilUp = 0.4
SWEP.VisualRecoilRoll = 35
SWEP.VisualRecoilSide = -1/6

SWEP.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount)
    if recamount > 5 then
        recamount = 1.65 - math.Clamp((recamount - 2) / 3.5, 0, 1)
        
        local fakerandom = 1 + (((69+recamount%5*CurTime()%3)*2420)%4)/10 
        
        return up, side * fakerandom, roll, punch
    end

    return up, side, roll, punch
end

-------------------------- SPREAD

SWEP.Spread = 0.0023

SWEP.SpreadAddRecoil = 0.01
SWEP.SpreadMultRecoil = 1.2
SWEP.RecoilModifierCap = 2
SWEP.RecoilModifierCapMove = 0.5
SWEP.RecoilModifierCapSights = 0

SWEP.SpreadMultMove = 2
--SWEP.SpreadAddMidAir = 0
SWEP.SpreadAddHipFire = 0.04
SWEP.SpreadAddCrouch = -0.03
SWEP.SpreadAddSights = -0.5


-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.3 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.5 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.2

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-3.295, -5, 0.75),
    Ang = Angle(0, 0, 0),
    Magnification = 1.17,
    ViewModelFOV = 54,
	CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 65

SWEP.SprintPos = Vector(0, 0, 0)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1, -0.15),
    Ang = Angle(0, 0, 0)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingMidPoint = {
    Pos = Vector(0, -0.5, -0.5),
    Ang = Angle(0, 0, 0)
}

SWEP.MovingPos = Vector(-0.8, -0.8, -0.8)
SWEP.MovingAng = Angle(0, 0, -8)

SWEP.CrouchPos = Vector(-0.5, -0, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(15, 30, 3)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeSnapshotPos = Vector(-1, 20, 5)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

SWEP.PeekPos = Vector(-1, 3, -3.2)
SWEP.PeekAng = Angle(-0.3, 0, -45)

-------------------------- HoldTypes

SWEP.HoldType = "rpg"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "rpg"
SWEP.HoldTypeSights = "rpg"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "AC_muzzle_rifle_fp"
SWEP.AfterShotParticle = "AC_muzzle_smoke_barrel"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 3
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2022/casing/casing_556n.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 0.05
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2022/attachs/augolf/attachment_vm_p03_ar_augolf_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_03.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_04.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_06.ogg",
}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.4
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, 0)

-------------------------- SOUNDS

local path = "weapons/cod2022/aug/"

SWEP.ShootSound = "COD2022.AUG.Fire"
SWEP.ShootSoundIndoor = "COD2022.AUG.Fire"

SWEP.ShootSoundSilenced = "COD2022.AUG.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2022.AUG.Fire.S"

-- Non-Silenced Outside
SWEP.LayerSound = "Layer_AR.Outside"
SWEP.DistantShootSound = "Distant_AR.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_AR.Inside"
SWEP.DistantShootSoundIndoor = "Distant_AR.Inside"
---------------------------------------------------
-- Silenced Outside
SWEP.LayerSoundSilenced = "Layer_ARSUP.Outside"
SWEP.DistantShootSoundSilenced = "Distant_ARSUP.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_ARSUP.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Distant_ARSUP.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = path .. "wfoly_sm_augolf_ads_up.ogg"
SWEP.ExitSightsSound = path .. "wfoly_sm_augolf_ads_down.ogg"

SWEP.BulletBones = {
    [1] = "j_ammo_01",
    [2] = "j_ammo_02",
    [3] = "j_ammo_03",
    [4] = "j_ammo_04",
    [5] = "j_ammo_05",
    [6] = "j_ammo_06",
    [7] = "j_ammo_07",
    [8] = "j_ammo_08",
    [9] = "j_ammo_09",
    [10] = "j_ammo_10",
    [11] = "j_ammo_11",
    [12] = "j_ammo_12",
    [13] = "j_ammo_13",
    [14] = "j_ammo_14",
    [15] = "j_ammo_15",
    [16] = "j_ammo_16",
    [17] = "j_ammo_17",
    [18] = "j_ammo_18",
    [19] = "j_ammo_19",
    [20] = "j_ammo_20",
    [21] = "j_ammo_21",
    [22] = "j_ammo_22",
    [23] = "j_ammo_23",
    [24] = "j_ammo_24",
    [25] = "j_ammo_25",
    [26] = "j_ammo_26",
    [27] = "j_ammo_27",
    [28] = "j_ammo_28",
    [29] = "j_ammo_29",
    [30] = "j_ammo_30",
    [31] = "j_ammo_31",
}

SWEP.HideBones  = {
    [1] = "j_mag2",
}

SWEP.TriggerDelay = 0.025 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayTime = 0.025 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2022/aug/weap_augolf_fire_plr_first_fcg_01.ogg"
SWEP.TriggerUpSound = "weapons/cod2022/aug/weap_augolf_fcg_disconnector_plr_01.ogg"

SWEP.Animations = {
    ["fire"] = {
        Source = "shoot1",
    },
    ["reload"] = {
        Source = "reload",
		MinProgress = 0.8,
		FireASAP = true,
		MagSwapTime = 3.5,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.7,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.85,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "p03_ar_augolf_reload_raise.ogg", t = 0/30},
			{s = path .. "p03_ar_augolf_reload_magout.ogg", t = 16/30},
			{s = path .. "p03_ar_augolf_inspect_maggrab.ogg", t = 18/30},
			{s = path .. "p03_ar_augolf_reload_rattlelift", t = 28/30},
			{s = path .. "p03_ar_augolf_inspect_maggrab.ogg", t = 28/30},
			{s = path .. "p03_ar_augolf_reload_maghitwell.ogg", t = 36/30},
			{s = path .. "p03_ar_augolf_reload_magin.ogg", t = 42/30},
			{s = path .. "p03_ar_augolf_reload_end.ogg", t = 55/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
		MinProgress = 0.9,
		FireASAP = true,
		DropMagAt = 0.8,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.7,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.95,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "p03_ar_augolf_reload_empty_raise.ogg", t = 0/30},
			{s = path .. "p03_ar_augolf_reload_empty_boltlock.ogg", t = 8/30},
			{s = path .. "p03_ar_augolf_reload_empty_tilt.ogg", t = 9/30},
			{s = path .. "p03_ar_augolf_reload_empty_magout.ogg", t = 26/30},
			{s = path .. "p03_ar_augolf_reload_empty_tilt2.ogg", t = 32/30},
			{s = path .. "p03_ar_augolf_reload_empty_maghit.ogg", t = 40/30},
			{s = path .. "p03_ar_augolf_reload_empty_maghitwell.ogg", t = 46/30},
			{s = path .. "p03_ar_augolf_reload_empty_magin.ogg", t = 58/30},
			{s = path .. "p03_ar_augolf_reload_empty_boltclose.ogg", t = 75/30},
			{s = path .. "p03_ar_augolf_reload_empty_end.ogg", t = 77/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.8,
		FireASAP = true,
		DropMagAt = 0.5,
		MagSwapTime = 3.5,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.7,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.85,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "p03_ar_augolf_reload_fast_raise.ogg", t = 0/30},
			{s = path .. "p03_ar_augolf_reload_fast_magout.ogg", t = 9/30},
			{s = path .. "p03_ar_augolf_reload_empty_tilt.ogg", t = 9/30},
			{s = path .. "p03_ar_augolf_reload_fast_tiltgetmag.ogg", t = 12/30},
			{s = path .. "p03_ar_augolf_reload_empty_tilt2.ogg", t = 15/30},
			{s = path .. "p03_ar_augolf_reload_fast_magin.ogg", t = 24/30},
			{s = path .. "p03_ar_augolf_reload_fast_end.ogg", t = 36/30},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_empty_fast",
		MinProgress = 0.9,
		FireASAP = true,
		DropMagAt = 0.5,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.7,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.95,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "p03_ar_augolf_reload_empty_fast_raise.ogg", t = 0/30},
			{s = path .. "p03_ar_augolf_reload_empty_fast_magout.ogg", t = 4/30},
			{s = path .. "p03_ar_augolf_reload_empty_tilt.ogg", t = 4/30},
			{s = path .. "p03_ar_augolf_reload_empty_fast_tilt.ogg", t = 13/30},
			{s = path .. "p03_ar_augolf_reload_empty_fast_magin.ogg", t = 23/30},
			{s = path .. "p03_ar_augolf_reload_empty_fast_boltclose.ogg", t = 39/30},
			{s = path .. "p03_ar_augolf_reload_empty_fast_end.ogg", t = 40/30},
        },
    },
    ["reload_xmag"] = {
        Source = "reload_xmag",
		MinProgress = 0.8,
		FireASAP = true,
		MagSwapTime = 3.5,
		DropMagAt = 0.3,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.7,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.85,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "p03_ar_augolf_reload_xmag_raise.ogg", t = 0/30},
			{s = path .. "p03_ar_augolf_reload_xmag_magout.ogg", t = 12/30},
			{s = path .. "p03_ar_augolf_reload_xmag_magmvmnt.ogg", t = 12/30},
			{s = path .. "p03_ar_augolf_reload_xmag_rattle.ogg", t = 28/30},
			{s = path .. "p03_ar_augolf_reload_xmag_maghit.ogg", t = 28/30},
			{s = path .. "p03_ar_augolf_reload_xmag_maghitwell.ogg", t = 38/30},
			{s = path .. "p03_ar_augolf_reload_xmag_magin.ogg", t = 46/30},
			{s = path .. "p03_ar_augolf_reload_xmag_end.ogg", t = 50/30},
        },
    },
    ["reload_xmag_empty"] = {
        Source = "reload_empty_xmag",
		MinProgress = 0.9,
		FireASAP = true,
		DropMagAt = 0.3,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.7,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.95,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "p03_ar_augolf_reload_empty_xmag_raise.ogg", t = 0/30},
			{s = path .. "p03_ar_augolf_reload_empty_xmag_boltlock.ogg", t = 8/30},
			{s = path .. "p03_ar_augolf_reload_empty_xmag_rattle.ogg", t = 9/30},
			{s = path .. "p03_ar_augolf_reload_magout.ogg", t = 28/30},
			{s = path .. "p03_ar_augolf_reload_empty_xmag_magmvmnt.ogg", t = 35/30},
			{s = path .. "p03_ar_augolf_reload_empty_xmag_maghit.ogg", t = 40/30},
			{s = path .. "p03_ar_augolf_reload_empty_xmag_maghitwell.ogg", t = 55/30},
			{s = path .. "p03_ar_augolf_reload_empty_xmag_magin.ogg", t = 63/30},
			{s = path .. "p03_ar_augolf_reload_empty_xmag_boltlock.ogg", t = 77/30},
			{s = path .. "p03_ar_augolf_reload_empty_xmag_end.ogg", t = 82/30},
        },
    },
    ["reload_xmag_fast"] = {
        Source = "reload_xmag_fast",
		MinProgress = 0.8,
		FireASAP = true,
		MagSwapTime = 3.5,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.5,
                lhik = 0,
                rhik = 1
            },
            {
                t = 1.1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "p03_ar_augolf_reload_xmag_fast_raise.ogg", t = 0/30},
			{s = path .. "p03_ar_augolf_reload_xmag_fast_magout.ogg", t = 9/30},
            		{s = path .. "p03_ar_augolf_reload_xmag_magmvmnt.ogg", t = 14/30},
			{s = path .. "p03_ar_augolf_reload_xmag_fast_rattle.ogg", t = 24/30},
			{s = path .. "p03_ar_augolf_reload_xmag_fast_maghitwell.ogg", t = 25/30},
			{s = path .. "p03_ar_augolf_reload_xmag_fast_magin.ogg", t = 27/30},
			{s = path .. "p03_ar_augolf_reload_xmag_fast_end.ogg", t = 37/30},
        },
    },
    ["reload_xmag_fast_empty"] = {
        Source = "reload_empty_xmag_fast",
		MinProgress = 0.9,
		FireASAP = true,
		DropMagAt = 0.6,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.5,
                lhik = 0,
                rhik = 1
            },
            {
                t = 1.15,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "p03_ar_augolf_reload_empty_xmag_fast_raise.ogg", t = 0/30},
			{s = path .. "p03_ar_augolf_reload_empty_xmag_fast_magout.ogg", t = 9/30},
			{s = path .. "p03_ar_augolf_reload_empty_xmag_fast_rattle.ogg", t = 14/30},
			{s = path .. "p03_ar_augolf_reload_empty_xmag_fast_maghitwell.ogg", t = 18/30},
			{s = path .. "p03_ar_augolf_reload_empty_xmag_fast_magin.ogg", t = 28/30},
			{s = path .. "p03_ar_augolf_reload_empty_xmag_fast_boltclose.ogg", t = 40/30},
			{s = path .. "p03_ar_augolf_reload_empty_xmag_fast_end.ogg", t = 50/30},
        },
    },
    ["reload_smag"] = {
        Source = "reload_smag",
		MinProgress = 0.8,
		FireASAP = true,
		MagSwapTime = 3.5,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.7,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.85,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "p03_ar_augolf_reload_smag_raise.ogg", t = 0/30},
			{s = path .. "p03_ar_augolf_reload_smag_magout.ogg", t = 16/30},
			{s = path .. "p03_ar_augolf_inspect_maggrab.ogg", t = 18/30},
			{s = path .. "p03_ar_augolf_reload_smag_tiltgrab", t = 28/30},
			{s = path .. "p03_ar_augolf_inspect_maggrab.ogg", t = 28/30},
			{s = path .. "p03_ar_augolf_reload_smag_maghitwell.ogg", t = 36/30},
			{s = path .. "p03_ar_augolf_reload_smag_magin.ogg", t = 42/30},
			{s = path .. "p03_ar_augolf_reload_smag_end.ogg", t = 55/30},
        },
    },
    ["reload_smag_empty"] = {
        Source = "reload_empty_smag",
		MinProgress = 0.9,
		FireASAP = true,
		DropMagAt = 0.8,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.7,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.95,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "p03_ar_augolf_reload_empty_smag_raise.ogg", t = 0/30},
			{s = path .. "p03_ar_augolf_reload_empty_tilt.ogg", t = 8/30},
			{s = path .. "p03_ar_augolf_reload_empty_smag_magout.ogg", t = 9/30},
			{s = path .. "p03_ar_augolf_reload_empty_tilt2.ogg", t = 26/30},
			{s = path .. "p03_ar_augolf_reload_empty_smag_maghit.ogg", t = 32/30},
			{s = path .. "p03_ar_augolf_reload_empty_smag_maghitwell.ogg", t = 38/30},
			{s = path .. "p03_ar_augolf_reload_empty_smag_magin.ogg", t = 44/30},
			{s = path .. "p03_ar_augolf_reload_empty_smag_boltcharge.ogg", t = 58/30},
			{s = path .. "p03_ar_augolf_reload_empty_smag_end.ogg", t = 75/30},
        },
    },
    ["reload_smag_fast"] = {
        Source = "reload_smag_fast",
		MinProgress = 0.8,
		FireASAP = true,
		DropMagAt = 0.2,
		MagSwapTime = 3.5,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.7,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.85,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "p03_ar_augolf_reload_fast_raise.ogg", t = 0/30},
			{s = path .. "p03_ar_augolf_reload_fast_magout.ogg", t = 9/30},
			{s = path .. "p03_ar_augolf_reload_empty_tilt.ogg", t = 9/30},
			{s = path .. "p03_ar_augolf_reload_fast_tiltgetmag.ogg", t = 12/30},
			{s = path .. "p03_ar_augolf_reload_empty_tilt2.ogg", t = 15/30},
			{s = path .. "p03_ar_augolf_reload_fast_magin.ogg", t = 24/30},
			{s = path .. "p03_ar_augolf_reload_fast_end.ogg", t = 36/30},
        },
    },
    ["reload_empty_smag_fast"] = {
        Source = "reload_empty_smag_fast",
		MinProgress = 0.9,
		FireASAP = true,
		DropMagAt = 0.2,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.7,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.95,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "p03_ar_augolf_reload_empty_fast_raise.ogg", t = 0/30},
			{s = path .. "p03_ar_augolf_reload_empty_smag_fast_magout.ogg", t = 4/30},
			{s = path .. "p03_ar_augolf_reload_empty_tilt.ogg", t = 4/30},
			{s = path .. "p03_ar_augolf_reload_empty_fast_tilt.ogg", t = 13/30},
			{s = path .. "p03_ar_augolf_reload_empty_smag_fast_magin.ogg", t = 23/30},
			{s = path .. "p03_ar_augolf_reload_empty_smag_fast_boltclose.ogg", t = 34/30},
			{s = path .. "p03_ar_augolf_reload_empty_smag_fast_end.ogg", t = 40/30},
        },
    },
    ["ready"] = {
        Source = "draw",
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.5,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.7,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "p03_ar_augolf_raise.ogg", t = 0/30},
            {s = path .. "p03_ar_augolf_reload_empty_boltclose.ogg", t = 10/30},
			{s = path .. "p03_ar_augolf_reload_empty_end.ogg", t = 25/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
        IKTimeLine = {
            {
                t = 0,
                lhik = 0,
                rhik = 1
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "p03_ar_augolf_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.5,
                lhik = 0,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "p03_ar_augolf_drop.ogg", t = 0/30},
        },
    },
    ["idle"] = {
        Source = "idle",
    },
    ["idle_sprint"] = {
        Source = "sprint",
    },
    ["exit_sprint"] = {
        Source = "sprint_out",
		Mult = 2,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		Mult = 2,
    },
    ["inspect"] = {
        Source = "lookat01",
		MinProgress = 0.1,
		FireASAP = true,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.1,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.4,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.75,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.85,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "inspect_mag_out.ogg", t = 0/30},
			{s = path .. "inspect_mag_in.ogg", t = 58/30},
			{s = path .. "inspect_bolt_back.ogg", t = 92/30},
			{s = path .. "inspect_bolt_forward.ogg", t = 110/30},
        },
    },
    ["inspect_smag"] = {
        Source = "lookat01_smag",
		MinProgress = 0.1,
		FireASAP = true,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.1,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.4,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.75,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.85,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "inspect_mag_out.ogg", t = 0/30},
			{s = path .. "inspect_mag_in.ogg", t = 58/30},
			{s = path .. "inspect_bolt_back.ogg", t = 92/30},
			{s = path .. "inspect_bolt_forward.ogg", t = 110/30},
        },
    },
    ["bash"] = {
        Source = {"melee_miss_01", "melee_miss_02", "melee_miss_03"},
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.05,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.5,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.85,
                lhik = 1,
                rhik = 1
            },
        },
    },
    ["firemode_1"] = {
        Source = "semi_on",
        EventTable = {
            {s = path .. "weap_sm_augolf_selector_on.ogg", t = 0/30},
        },
    },
    ["firemode_2"] = {
        Source = "semi_off",
        EventTable = {
            {s = path .. "weap_sm_augolf_selector_off.ogg", t = 0/30},
        },
    },
    ["switchsights"] = {
        Source = "semi_on",
        EventTable = {
            {s = path .. "p03_ar_augolf_reload_empty_tilt2.ogg", t = 0/30},
        },
    },
}

-------------------------- ATTACHMENTS

-- SWEP.Hook_Think	= ARC9.COD2019.BlendSights2

SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(0, 0, 0),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 0.9,
    },
    ["go_grip_angled"] = {
    ModelOffset = Vector(0, 0, 0.15),
    },
}

SWEP.AttachmentElements = {
    ["xmag"] = {
        Bodygroups = {
            {5,1},
        },
    },
    ["smag"] = {
        Bodygroups = {
            {5,2},
        },
    },
    ["barhvy"] = {
        Bodygroups = {
            {3,1},
        },
    },
    ["barlght"] = {
        Bodygroups = {
            {3,2},
        },
    },
    ["barlong"] = {
        Bodygroups = {
            {3,3},
        },
    },
    ["barsn"] = {
        Bodygroups = {
            {3,4},
        },
    },
    ["barhvy_tip"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["barlght_tip"] = {
        Bodygroups = {
            {2,2},
        },
    },
    ["barlong_tip"] = {
        Bodygroups = {
            {2,3},
        },
    },
    ["muzzle_none"] = {
        Bodygroups = {
            {2,4},
        },
    },
    ["grip"] = {
        Bodygroups = {
            {1,1},
        },
    },
    ["sights"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["stock"] = {
        Bodygroups = {
            {6,1},
        },
    },
    ["rail_laser"] = {
        Bodygroups = {
            {7,1},
        },
    },
    ["ref_hide"] = {
        Bodygroups = {
            {8,1},
        },
    },
    ["gripass"] = {
        Bodygroups = {
            {9,1},
        },
    },
    ["gripstdy"] = {
        Bodygroups = {
            {9,2},
        },
    },
    ["griptac"] = {
        Bodygroups = {
            {9,3},
        },
    },
    ["combammo"] = {
        Bodygroups = {
            {10,1},
        },
    },
    ["combhvy"] = {
        Bodygroups = {
            {10,2},
        },
    },
    ["combtac"] = {
        Bodygroups = {
            {10,3},
        },
    },
}

SWEP.Hook_TranslateAnimation = function (wep, anim)
    --local attached = self:GetElements()

    if anim == "reload" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_xmag") then
        return "reload_xmag_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_xmag") then 
        return "reload_xmag_fast_empty"
--------------------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_smag") then
        return "reload_smag_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_smag") then 
        return "reload_empty_smag_fast"
--------------------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("mag_xmag") then 
        return "reload_xmag"
    elseif anim == "reload_empty" and wep:HasElement("mag_xmag") then 
        return "reload_xmag_empty"
--------------------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("perk_speedreload") then 
        return "reload_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") then 
        return "reload_fast_empty"
--------------------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("mag_smag") then 
        return "reload_smag"
    elseif anim == "reload_empty" and wep:HasElement("mag_smag") then 
        return "reload_smag_empty"
--------------------------------------------------------------------------
    elseif anim == "inspect" and wep:HasElement("mag_smag") then 
        return "inspect_smag"
    end
end

-- SWEP.Hook_ModifyBodygroups = function(wep, data)
    -- local model = data.model
    -- if wep:HasElement("stock_retract") then model:SetBodygroup(4,1) end
-- end

SWEP.Attachments = {
    {
        PrintName = "Barrel",
        DefaultAttName = "Standard Barrel",
        Category = "cod2022_aug_barrel",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Category = {"cod2022_aug_muzzle", "cod2019_aug_muzzle"},
        Bone = "tag_silencer",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"muzzle_none"},
		Scale = 1,
    },
    {
        PrintName = "Optic",
        Bone = "tag_holo",
        Pos = Vector(1.5, 0, -0.1),
        Ang = Angle(0, 0, 0),
        Category = {"cod2019_optic", "cod2022_optic", "cod22_aug_optic"},
        CorrectiveAng = Angle(0, 0, 0),
		InstalledElements = {"sights"},
    },
    {
        PrintName = "Laser",
        DefaultAttName = "Default",
        Category = "cod2022_aug_laser",
        Bone = "tag_laser_attach",
        Pos = Vector(-5, 0, -0.4),
        Ang = Angle(0, 0, -90),
		InstalledElements = {"rail_laser"},
    },
    {
        PrintName = "Underbarrel",
        DefaultAttName = "Default",
        Category = {"cod2019_grip", "cod2022_grip"},
        Bone = "tag_grip_attach",
        Pos = Vector(2.25, 0, 0),
        Ang = Angle(0, 0, 180),
		Scale = 1,
		InstalledElements = {"grip"},
    },
    {
        PrintName = "Magazine",
		Bone = "j_mag1",
        Category = {"cod2022_aug_mag"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Comb",
		Bone = "tag_rack_attach",
        Category = {"cod2022_aug_rack"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Rear Grip",
		Bone = "tag_pistolgrip_attach",
        Category = {"cod2022_aug_pgrip"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
		PrintName = "Perk",
        Category = {"cod2019_perks","cod2019_perks_soh"}
    },
    {
        PrintName = "Ammunition",
        Bone = "j_mag1",
        Category = {"cod2019_ammo"},
        Pos = Vector(0, 0, -1.5),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Charm",
        Category = "charm",
        Bone = "tag_cosmetic",
        Pos = Vector(0, 0.1, -0.5),
        Ang = Angle(0, 0, 0),
		Scale = 1,
    },
    {
        PrintName = "Stats",
        Category = {"killcounter","killcounter2"},
        Bone = "tag_sling",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		CosmeticOnly = true,
    },
}

SWEP.GripPoseParam = 5
SWEP.GripPoseParam2 = 0.5
SWEP.CodAngledGripPoseParam = 19
SWEP.CodStubbyGripPoseParam = 2
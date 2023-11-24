AddCSLuaFile()

SWEP.Base = "arc9_cod2019_base_m7_bayonet"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = "Specials"

SWEP.PrintName = "M7 Bayonet"

SWEP.Class = "Melee"

SWEP.Credits = {
    Author = "ZaihnY, Twilight Sparkle, Firmeteran",
    Assets = "Infinity Ward, teejlesdoodles"
}

SWEP.Description = [[The M7 bayonet is very similar to the older M4 bayonet with the Korean War era plastic grips for the M1/M2 carbines except that the M7 has a much larger muzzle ring. The M7 has the same two-lever locking mechanism as the M4, that connects to a lug on the M16 rifle's barrel. The M4 (M1/M2 carbine), M5 (M1 rifle), and M6 bayonet (M14 rifle), are all derived from the World War II M3 fighting knife.]]

SWEP.ViewModel = "models/weapons/cs2/c_melee_knife_m7_bayo.mdl"
SWEP.WorldModel = "models/weapons/cs2/c_melee_knife_m7_bayo.mdl"

SWEP.Slot = 0

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.NoTPIK = true
SWEP.WorldModelMirror = "models/weapons/cs2/c_melee_knife_m7_bayo.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-6.5, -3, 0),
    Ang = Angle(-15, 0, -55),
    Scale = 1
}

SWEP.DefaultBodygroups = "00"
SWEP.DrawCrosshair = true
SWEP.Crosshair = true
-------------------------- MAGAZINE

SWEP.Ammo = "" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = -1 -- Self-explanatory.
SWEP.SupplyLimit = 0 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 0 -- Amount of reserve UBGL magazines you can take.

-------------------------- FIREMODES

SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = "MELEE"
        -- add other attachment modifiers
    },
}

-------------------------- HANDLING

SWEP.SprintToFireTime = 0.3 -- How long it takes to go from sprinting to being able to fire.
SWEP.ShootWhileSprint = true
SWEP.SprintVerticalOffset = true
SWEP.CanLean = false

SWEP.CamQCA = 1
SWEP.CamQCA_Mult = 1

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = true

SWEP.BashDamage = 55
SWEP.BashLungeRange = 64
SWEP.BashRange = 64
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.2
SWEP.BashDamageType = DMG_SLASH

-- SWEP.Bash2 = true
-- SWEP.SecondaryBash = true

-- SWEP.Bash2Damage = 70
-- SWEP.Bash2LungeRange = 64
-- SWEP.Bash2Range = 32
-- SWEP.PreBash2Time = 0.15
-- SWEP.PostBash2Time = 0.75
-- SWEP.Bash2DamageType = DMG_SLASH

SWEP.Backstab = true
SWEP.BackstabDamage = 250
SWEP.BackstabRange = 32
SWEP.PreBackstabTime = 0.3
SWEP.PostBackstabTime = 1
SWEP.BackstabDamageType = DMG_SLASH

SWEP.ImpactForce = 15

SWEP.MeleeHitSound = "COD2019.Knife.Hit_Flesh"
SWEP.MeleeHitWallSound = "COD2019.Knife.Hit_World"
SWEP.MeleeSwingSound = "COD2019.Knife.Swing"
SWEP.BackstabSound = "COD2019.Knife.Hit_Flesh"

local path = "weapons/cod2019/melee/knife/"

SWEP.FiremodeSound = ""

-------------------------- POSITIONS

SWEP.HasSights = false
SWEP.InstantSprintIdle = true

SWEP.ViewModelFOVBase = 65

SWEP.MovingMidPoint = {
    Pos = Vector(0, -0.5, -0.5),
    Ang = Angle(0, 0, 0)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingPos = Vector(0, -1, -1)
SWEP.MovingAng = Angle(0, 0, 0)

SWEP.SprintPos = Vector(0, -1, 0)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(0, 0, -2)
SWEP.CrouchAng = Angle(0, 0, 0)

SWEP.CustomizeAng = Angle(0, -55, -50)
SWEP.CustomizePos = Vector(-10, 29, 4)
SWEP.CustomizeSnapshotFOV = 65
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeSnapshotPos = Vector(0, 0, 3)

-------------------------- HoldTypes

SWEP.HoldTypeHolstered = "none"
SWEP.HoldTypeSprint = "knife"
SWEP.HoldType = "knife"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_KNIFE
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = ACT_HL2MP_GESTURE_RANGE_ATTACK_KNIFE
SWEP.AnimMelee = ACT_HL2MP_GESTURE_RANGE_ATTACK_KNIFE 

function SWEP:SecondaryAttack()
    return self:MeleeAttack()
end

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["ready"] = {
        Source = "draw",
        EventTable = {
            {s = path .. "melee_knife_charge_01.ogg", t = 0/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.1,
		FireASAP = true,
        EventTable = {
            {s = path .. "melee_knife_charge_01.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
    },
    ["bash"] = {
        Source = {"melee_01","melee_02","melee_03"},
    },
    ["backstab"] = {
        Source = {"backstab_01","backstab_02"},
    },
    ["idle_sprint"] = {
        Source = "sprint",
    },
    ["exit_sprint"] = {
        Source = "sprint_out",
        Time = 1.3,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
        Time = 1.3,
    },
    ["inspect"] = {
        Source = "lookat01",
        MinProgress = 0.1,
        FireASAP = true,
        EventTable = {
            {s = path .. "wfoly_me_knife_inspect_01.ogg", t = 0/30},
            {s = path .. "wfoly_me_knife_inspect_01.ogg", t = 72/30},
            {s = path .. "wfoly_me_knife_inspect_01.ogg", t = 132/30},
        },
    },
}
ATT = {}

ATT.PrintName = "Luca Canis 4x Optic"
ATT.CompactName = "Luca Canis 4x Optic"
ATT.Icon = Material("entities/mw22_augolf_attachments/icon_attachment_vm_p03_ar_augolf_fourx_scope.png", "mips smooth")
ATT.Description = [[A 4x optic designed by Luca Optics exclusively for the Bruen Rifle Platform.]]
ATT.Pros = {
    "+ Precision Sight Picture"
}
ATT.Cons = {
    "− Aim Down Sight Speed"
}
ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - MW2022 Attachments"
ATT.Free = false

ATT.Category = {"cod22_aug_optic"}
ATT.ActivateElements = {"optic_scope"}

ATT.Model = "models/weapons/cod2022/attachs/augolf/attachment_vm_p03_ar_augolf_fourx_scope.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(-1.5, 0, 0.1)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ATT.AimDownSightsTimeMult = 1.15

ATT.Sights = {
    {
        Pos = Vector(0.008, 9.7, -2.08),
        Ang = Angle(0, 0, 0),
        Magnification = 2,
        ViewModelFOV = 36,
        IgnoreExtra = false
    },
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 2
ATT.RTScopeFOV = 14
ATT.RTScopeRes = 512
ATT.RTScopeReticle = Material("hud/arc9_cod2022/reticles/reticle_augolf.png", "mips smooth")
ATT.RTScopeReticleScale = 1.4
ATT.RTScopeShadowIntensity = 5
ATT.RTScopeNoPP = false
ATT.RTScopeColorable = false
ATT.RTScopeNoBlur = false

ARC9.LoadAttachment(ATT, "cod2022_aug_optic")
-------------------------------------------------------------------------

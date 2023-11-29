local ATT = {}
local path = "weapons/cod2019/aug/"
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2022 Attachments"
ATT.PrintName = "42 Round Mag"
ATT.CompactName = "42 Round Mag"
ATT.Description = [[A polymer magazine that carries 42 rounds of 5.56 ammunition.]]

ATT.Icon = Material("entities/mw22_augolf_attachments/icon_attachment_vm_p03_ar_augolf_xmag.png", "mips smooth")

ATT.ClipSizeOverride = 42

ATT.SortOrder = 3
ATT.Category = "cod2022_aug_mag"
ATT.ActivateElements = {"xmag","mag_xmag"}

ATT.DropMagazineModel = "models/weapons/cod2022/attachs/augolf/attachment_vm_p03_ar_augolf_xmag.mdl"
ATT.BoneMerge = true

ARC9.LoadAttachment(ATT, "cod2022_aug_xmag")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2022 Attachments"
ATT.PrintName = "Single Tap Mod"
ATT.CompactName = "Single Tap Mod"
ATT.Description = [[Small and Mighty, this STB 556 magazine holds 10 rounds of 5.56 ammunition. Locks weapon is semi-auto to ensure every shot matters.]]

ATT.Icon = Material("entities/mw22_augolf_attachments/icon_attachment_vm_p03_ar_augolf_smag.png", "mips smooth")

ATT.ClipSizeOverride = 10

ATT.DamageMaxMult = 1.25
ATT.DamageMinMult = 1.15

ATT.SortOrder = 2
ATT.Category = "cod2022_aug_mag"
ATT.ActivateElements = {"smag","mag_smag"}

ATT.DropMagazineModel = "models/weapons/cod2022/attachs/augolf/attachment_vm_p03_ar_augolf_smag.mdl"
ATT.BoneMerge = true

ATT.Firemodes = {
    {
        Mode = 1,
    },
}

ARC9.LoadAttachment(ATT, "cod2022_aug_smag")
---------------------------------------------------------------------------------------
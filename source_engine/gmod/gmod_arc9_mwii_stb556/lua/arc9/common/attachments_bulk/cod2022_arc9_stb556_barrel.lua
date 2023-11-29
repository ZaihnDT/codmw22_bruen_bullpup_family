local ATT = {}
local path = "weapons/cod2019/aug/"
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2022 Attachments"
ATT.PrintName = "16.5 Bruen S901 Barrel"
ATT.CompactName = "16.5 Bruen S901 Barrel"
ATT.Description = [[Lighter and more agile. Bruen gunsmiths removed excess material in this fluted barrel to promote speed.]]

ATT.Icon = Material("entities/mw22_augolf_attachments/icon_attachment_vm_p03_ar_augolf_barlght.png", "mips smooth")

ATT.SpeedMultSights = 1.1

ATT.SortOrder = 6
ATT.Category = "cod2022_aug_barrel"
ATT.ActivateElements = {"barlght", "barlght_tip"}

ATT.MuzzleParticleOverride_Priority = 100
ATT.MuzzleDevice = true
ATT.MuzzleFlashQCA = 5

ARC9.LoadAttachment(ATT, "cod2022_aug_barlght")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2022 Attachments"
ATT.PrintName = "18 Bruen Guerilla"
ATT.CompactName = "18 Bruen Guerilla"
ATT.Description = [[A heavy barrel with an integrated rail system. Designed by Bruen to keep the muzzle recoil more controllable.]]

ATT.Icon = Material("entities/mw22_augolf_attachments/icon_attachment_vm_p03_ar_augolf_barrelhvy.png", "mips smooth")

ATT.DamageTypeOverride = DMG_AIRBOAT
ATT.ArmorPiercingMult = 3

ATT.SortOrder = 3
ATT.Category = "cod2022_aug_barrel"
ATT.ActivateElements = {"barhvy", "barhvy_tip","ref_hide"}

ATT.MuzzleParticleOverride_Priority = 100
ATT.MuzzleDevice = true
ATT.MuzzleFlashQCA = 4

ARC9.LoadAttachment(ATT, "cod2022_aug_barhvy")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2022 Attachments"
ATT.PrintName = "508MM Read Guard"
ATT.CompactName = "508MM Read Guard"
ATT.Description = [[Built for accuracy, this 508mm barrel increases precision.]]

ATT.Icon = Material("entities/mw22_augolf_attachments/icon_attachment_vm_p03_ar_augolf_barlong.png", "mips smooth")

ATT.RangeMaxMult = 2
ATT.PhysBulletMuzzleVelocityMult = 1.4
ATT.SpeedMult = 0.96
ATT.SpeedMultSights = 0.8

ATT.MuzzleParticleOverride_Priority = 100
ATT.MuzzleDevice = true

ATT.SortOrder = 5
ATT.Category = "cod2022_aug_barrel"
ATT.ActivateElements = {"barlong", "barlong_tip"}

ATT.MuzzleParticleOverride_Priority = 100
ATT.MuzzleDevice = true
ATT.MuzzleFlashQCA = 6

ARC9.LoadAttachment(ATT, "cod2022_aug_barlong")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2022 Attachments"
ATT.PrintName = "24.4 Bruen S-620"
ATT.CompactName = "24.4 Bruen S-620"
ATT.Description = [[This long and heavy barrel from Bruen is more accurate at distance but adds some weight to the weapon.]]

ATT.Icon = Material("entities/mw22_augolf_attachments/icon_attachment_vm_p03_ar_augolf_barsn.png", "mips smooth")

ATT.PhysBulletMuzzleVelocityMult = 2
ATT.SpeedMultSights = 0.8

ATT.SortOrder = 5
ATT.Category = "cod2022_aug_barrel"
ATT.ActivateElements = {"barsn", "barsn_tip"}

ATT.MuzzleParticleOverride_Priority = 100
ATT.MuzzleDevice = true
ATT.MuzzleFlashQCA = 7

ARC9.LoadAttachment(ATT, "cod2022_aug_barsn")
---------------------------------------------------------------------------------------
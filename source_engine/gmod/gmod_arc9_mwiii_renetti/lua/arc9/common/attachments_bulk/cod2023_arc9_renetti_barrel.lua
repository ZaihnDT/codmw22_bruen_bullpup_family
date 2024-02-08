local ATT = {}
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2023 Attachments"
ATT.PrintName = "Mk2 Renetti Long Barrel"
ATT.CompactName = "Mk2 Renetti Long Barrel"
ATT.Description = [[]]

ATT.Icon = Material("entities/mw23_mike93_attachments/icon_attachment_vm_jup_pi_mike93_bar_long_000.png", "mips smooth")

ATT.ExcludeElements = {"cod2019_muzzle_pistols"}

ATT.SortOrder = 2
ATT.Category = "cod2023_renetti_barrel"
ATT.ActivateElements = {"barlong"}

ATT.PhysBulletMuzzleVelocityMult = 1.4

ARC9.LoadAttachment(ATT, "cod2023_renetti_barlong")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2023 Attachments"
ATT.PrintName = "MLX Short Competition Barrel"
ATT.CompactName = "MLX Short Competition Barrel"
ATT.Description = [[]]

ATT.Icon = Material("entities/mw23_mike93_attachments/icon_attachment_vm_jup_pi_mike93_bar_short_000.png", "mips smooth")

ATT.ExcludeElements = {"cod2019_muzzle_pistols"}

ATT.SortOrder = 1
ATT.Category = "cod2023_renetti_barrel"
ATT.ActivateElements = {"barshort"}

ATT.DamageTypeOverride = DMG_AIRBOAT
ATT.ArmorPiercingMult = 3.5

ARC9.LoadAttachment(ATT, "cod2023_renetti_barshort")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2023 Attachments"
ATT.PrintName = "MLX Extended Heavy Barrel"
ATT.CompactName = "MLX Extended Heavy Barrel"
ATT.Description = [[]]

ATT.Icon = Material("entities/mw23_mike93_attachments/icon_attachment_vm_jup_pi_mike93_bar_longhvy_000.png", "mips smooth")

ATT.ExcludeElements = {"cod2019_muzzle_pistols"}

ATT.SortOrder = 3
ATT.Category = "cod2023_renetti_barrel"
ATT.ActivateElements = {"barlonghvy"}

ATT.RangeMaxMult = 1.3
ATT.PhysBulletMuzzleVelocityMult = 1.8

ATT.SpeedMult = 0.96
ATT.SpeedMultSights = 0.85

ARC9.LoadAttachment(ATT, "cod2023_renetti_barlonghvy")
---------------------------------------------------------------------------------------

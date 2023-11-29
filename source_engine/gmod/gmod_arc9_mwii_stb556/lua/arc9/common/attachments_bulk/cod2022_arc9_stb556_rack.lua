local ATT = {}
local path = "weapons/cod2019/aug/"
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2022 Attachments"
ATT.PrintName = "FTAC C11 Riser"
ATT.CompactName = "FTAC C11 Riser"
ATT.Description = [[Get-on sight faster with this riser modification from Forge Tac.]]

ATT.Icon = Material("entities/mw22_augolf_attachments/icon_attachment_vm_p03_ar_augolf_combtac.png", "mips smooth")

ATT.SpeedMultSights = 1.2

ATT.SortOrder = 3
ATT.Category = "cod2022_aug_rack"
ATT.ActivateElements = {"combtac"}
ARC9.LoadAttachment(ATT, "cod2022_aug_combtac")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2022 Attachments"
ATT.PrintName = "Schlager TTF3 Riser"
ATT.CompactName = "Schlager TTF3 Riser"
ATT.Description = [[Store some extra ammo in this padded comb designed by Schlager. Added ammo weight slightly slows aiming.]]

ATT.Icon = Material("entities/mw22_augolf_attachments/icon_attachment_vm_p03_ar_augolf_combammo.png", "mips smooth")

ATT.SpeedMultShooting = 1.05
ATT.SpeedMultSights = 1.15
ATT.SpreadMultHipFire = 1.15

ATT.SortOrder = 1
ATT.Category = "cod2022_aug_rack"
ATT.ActivateElements = {"combammo"}
ARC9.LoadAttachment(ATT, "cod2022_aug_combammo")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2022 Attachments"
ATT.PrintName = "Bruen TS-30 Comb"
ATT.CompactName = "Bruen TS-30 Comb"
ATT.Description = [[Bruen heavy comb designed to assist in recoil control and aiming stability.]]

ATT.Icon = Material("entities/mw22_augolf_attachments/icon_attachment_vm_p03_ar_augolf_combhvy.png", "mips smooth")

ATT.MultAimDownSightsTime = 0.9
ATT.SprintToFireTimeMult = 1.3
ATT.SpeedMultSights = 1.4
ATT.SpreadMultHipFire = 1.3

ATT.SortOrder = 2
ATT.Category = "cod2022_aug_rack"
ATT.ActivateElements = {"combhvy"}
ARC9.LoadAttachment(ATT, "cod2022_aug_combhvy")
---------------------------------------------------------------------------------------
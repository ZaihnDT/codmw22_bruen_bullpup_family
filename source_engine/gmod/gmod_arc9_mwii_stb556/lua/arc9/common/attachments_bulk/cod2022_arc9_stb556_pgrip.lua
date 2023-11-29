local ATT = {}
local path = "weapons/cod2019/aug/"
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2022 Attachments"
ATT.PrintName = "STIP-40 Grip"
ATT.CompactName = "STIP-40 Grip"
ATT.Description = [[Stipped grip tape for better grip on most firearms. Added texture creates better recoil control.]]

ATT.Icon = Material("entities/mw22_augolf_attachments/icon_attachment_vm_p03_ar_augolf_grips.png", "mips smooth")

ATT.AimDownSightsTimeMult = 0.9

ATT.SortOrder = 2
ATT.Category = "cod2022_aug_pgrip"
ATT.ActivateElements = {"gripass"}
ARC9.LoadAttachment(ATT, "cod2022_aug_gripass")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2022 Attachments"
ATT.PrintName = "Bruen Q900 Grip"
ATT.CompactName = "Bruen Q900 Grip"
ATT.Description = [[Rubber grip tape with a smooth texture to enhance speed. Increase to sprint speed, aiming speed, and drawing speed.]]

ATT.Icon = Material("entities/mw22_augolf_attachments/icon_attachment_vm_p03_ar_augolf_grips.png", "mips smooth")

ATT.SortOrder = 3
ATT.Category = "cod2022_aug_pgrip"
ATT.ActivateElements = {"griptac"}
ARC9.LoadAttachment(ATT, "cod2022_aug_griptac")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2022 Attachments"
ATT.PrintName = "Bruen G305 Grip Wrap"
ATT.CompactName = "Bruen G305 Grip Wrap"
ATT.Description = [[Granulated grip tape that provides better handling in firefights. Reduces flinch when under fire.]]

ATT.Icon = Material("entities/mw22_augolf_attachments/icon_attachment_vm_p03_ar_augolf_grips.png", "mips smooth")


ATT.AimDownSightsTimeMult = 0.85
ATT.SprintToFireTimeMult = 1.12

ATT.SortOrder = 1
ATT.Category = "cod2022_aug_pgrip"
ATT.ActivateElements = {"gripstdy"}
ARC9.LoadAttachment(ATT, "cod2022_aug_gripstdy")
---------------------------------------------------------------------------------------
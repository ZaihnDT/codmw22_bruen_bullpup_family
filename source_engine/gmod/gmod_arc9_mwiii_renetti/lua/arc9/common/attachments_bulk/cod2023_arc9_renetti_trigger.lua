local ATT = {}
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2023 Attachments"
ATT.PrintName = "Bruen MG89 Trigger"
ATT.CompactName = "Bruen MG89 Trigger"
ATT.Description = [[]]

ATT.Icon = Material("entities/mw23_mike93_attachments/icon_attachment_vm_jup_pi_mike93_rec_trigger_light_000.png", "mips smooth")

ATT.SortOrder = 2
ATT.Category = "cod2023_renetti_trigger"
ATT.ActivateElements = {"triggerlight"}

ATT.RPMMult = 1.35
ATT.RecoilMult = 1.1
ATT.RecoilUpMult = 1.1
ATT.RecoilSideMult = 1.4

ARC9.LoadAttachment(ATT, "cod2023_renetti_triggerlight")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2023 Attachments"
ATT.PrintName = "XRK Heavy V4"
ATT.CompactName = "XRK Heavy V4"
ATT.Description = [[]]

ATT.Icon = Material("entities/mw23_mike93_attachments/icon_attachment_vm_jup_pi_mike93_rec_trigger_heavy_000.png", "mips smooth")

ATT.SortOrder = 1
ATT.Category = "cod2023_renetti_trigger"
ATT.ActivateElements = {"triggerhvy"}

ATT.RPMMult = 0.8
ATT.RecoilMult = 0.85
ATT.RecoilSideMult = 1.15
ATT.RecoilAutoControlMult = 2

ARC9.LoadAttachment(ATT, "cod2023_renetti_triggerhvy")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2023 Attachments"
ATT.PrintName = "Fiammatta Trigger"
ATT.CompactName = "Fiammatta Trigger"
ATT.Description = [[]]

ATT.Icon = Material("entities/mw23_mike93_attachments/icon_attachment_vm_jup_pi_mike93_rec_trigger_hair_000.png", "mips smooth")

ATT.SortOrder = 3
ATT.Category = "cod2023_renetti_trigger"
ATT.ActivateElements = {"triggerhair"}

ATT.AimDownSightsTimeMult = 0.75

ATT.SprintToFireTimeMult = 1.1

ARC9.LoadAttachment(ATT, "cod2023_renetti_triggerhair")
---------------------------------------------------------------------------------------
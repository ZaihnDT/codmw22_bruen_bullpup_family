ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "Renetti Barrel + Burst"
ATTACHMENT.Model = Model("models/zaihny/mw23/attachments/mike93/attachment_vm_jup_pi_mike93_bar_000.mdl")
ATTACHMENT.Icon = Material("zaihny/mw23/attachments/icons/mike93/icon_attachment_vm_jup_pi_mike93_bar_000.vmt")
ATTACHMENT.ExcludedByAttachments = {"att_receiver"}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Primary.RPM = 1000
    weapon.Primary.BurstRounds = 3
    weapon.Primary.BurstDelay = 0.2
    weapon.Firemodes[1].Name = "3rnd Burst"
    weapon.Recoil.Shake = weapon.Recoil.Shake * 1.3
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 2.5
end
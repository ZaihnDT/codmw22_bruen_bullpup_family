ATTACHMENT.Base = "att_pistolgrip"
ATTACHMENT.Name = "Renetti Wood Grain Grip"
ATTACHMENT.Model = Model("models/zaihny/mw23/attachments/mike93/attachment_vm_jup_pi_mike93_pgrip_tac_000.mdl")
ATTACHMENT.Icon = Material("zaihny/mw23/attachments/icons/mike93/icon_attachment_vm_jup_pi_mike93_pgrip_tac_000.vmt")
ATTACHMENT.ExcludedByAttachments = {"att_receiver"}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.95
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.95
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 0.9
end
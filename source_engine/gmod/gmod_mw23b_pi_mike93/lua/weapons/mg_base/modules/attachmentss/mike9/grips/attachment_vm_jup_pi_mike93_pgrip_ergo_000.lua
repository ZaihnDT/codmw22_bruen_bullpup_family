ATTACHMENT.Base = "att_pistolgrip"
ATTACHMENT.Name = "EXF Eclipsor Grip"
ATTACHMENT.Model = Model("models/zaihny/mw23/attachments/mike93/attachment_vm_jup_pi_mike93_pgrip_ergo_000.mdl")
ATTACHMENT.Icon = Material("zaihny/mw23/attachments/icons/mike93/icon_attachment_vm_jup_pi_mike93_pgrip_ergo_000.vmt")
ATTACHMENT.ExcludedByAttachments = {"att_receiver"}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.2
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.07
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.07
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.1
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.1
end
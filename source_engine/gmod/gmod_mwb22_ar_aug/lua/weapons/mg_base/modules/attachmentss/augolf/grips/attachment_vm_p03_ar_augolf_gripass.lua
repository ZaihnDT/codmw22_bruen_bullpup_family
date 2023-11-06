ATTACHMENT.Base = "att_pistolgrip"
ATTACHMENT.Name = "STIP-40 Grip"
ATTACHMENT.Model = Model("models/zaihny/mw22/attachments/augolf/attachment_vm_p03_ar_augolf_gripass.mdl")
ATTACHMENT.Icon = Material("zaihny/mw22/attachments/icons/augolf/icon_attachment_vm_p03_ar_augolf_grips.vmt")
ATTACHMENT.ExcludedByAttachments = {"att_receiver"}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.85
    weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 0.85
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.93
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.93
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.93
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.93
end
ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "Schlager TTF3 Riser"
ATTACHMENT.Model = Model("models/zaihny/mw22/attachments/augolf/attachment_vm_p03_ar_augolf_combammo.mdl")
ATTACHMENT.Icon = Material("zaihny/mw22/attachments/icons/augolf/icon_attachment_vm_p03_ar_augolf_combammo.vmt")
ATTACHMENT.ExcludedByAttachments = {"att_receiver"}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.06
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.06
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.15
end
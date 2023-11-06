ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "FTAC C11 Riser"
ATTACHMENT.Model = Model("models/zaihny/mw22/attachments/augolf/attachment_vm_p03_ar_augolf_combtac.mdl")
ATTACHMENT.Icon = Material("zaihny/mw22/attachments/icons/augolf/icon_attachment_vm_p03_ar_augolf_combtac.vmt")
ATTACHMENT.ExcludedByAttachments = {"att_receiver"}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.05
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.05
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.08
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.08
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 1.1
    weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 1.1
end
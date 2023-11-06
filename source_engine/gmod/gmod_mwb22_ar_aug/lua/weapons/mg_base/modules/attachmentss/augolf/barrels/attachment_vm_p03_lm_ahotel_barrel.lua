ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "HCR Factory"
ATTACHMENT.Model = Model("models/zaihny/mw22/attachments/augolf/attachment_vm_p03_lm_ahotel_barrel.mdl")
ATTACHMENT.Icon = Material("zaihny/mw22/attachments/icons/augolf/icon_attachment_vm_p03_lm_ahotel_barrel.vmt")
ATTACHMENT.ExcludedByAttachments = {"att_receiver", "attachment_vm_p03_sm_apapa_receiver", "attachment_vm_p03_ar_augolf_receiver"}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.9
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.9
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.9
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.9
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.14
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.14
    weapon.Cone.Hip = weapon.Cone.Hip * 0.9

end
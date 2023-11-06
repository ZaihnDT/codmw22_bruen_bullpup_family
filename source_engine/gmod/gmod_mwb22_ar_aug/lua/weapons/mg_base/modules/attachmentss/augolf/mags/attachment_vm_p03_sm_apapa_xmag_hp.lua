ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "32 Round Mag Hollow Point"
ATTACHMENT.Model = Model("models/zaihny/mw22/attachments/augolf/attachment_vm_p03_sm_apapa_xmag_hp.mdl")
ATTACHMENT.Icon = Material("zaihny/mw22/attachments/icons/augolf/icon_attachment_vm_p03_sm_apapa_xmag_hp.vmt")
ATTACHMENT.ExcludedAttachments = {"att_perk_fmj"}
ATTACHMENT.ExcludedByAttachments = {"att_receiver", "attachment_vm_p03_ar_augolf_receiver", "attachment_vm_p03_lm_ahotel_receiver"}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Bullet.Damage[1] = weapon.Bullet.Damage[1] * 1.1
    weapon.Bullet.Damage[2] = weapon.Bullet.Damage[2] * 1.1
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 0.95
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 0.95
    weapon.Bullet.Penetration.Thickness = weapon.Bullet.Penetration.Thickness * 0.75
    weapon.Shell = "mw2_eject_9p_hp"
    weapon.Primary.ClipSize = 32
    weapon.Animations.Reload = weapon.Animations.Reload_Xmag
    weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_Xmag
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.95
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.95
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.93
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.93
    weapon.Primary.Sound = Sound("mwii.augolf.fire")
end
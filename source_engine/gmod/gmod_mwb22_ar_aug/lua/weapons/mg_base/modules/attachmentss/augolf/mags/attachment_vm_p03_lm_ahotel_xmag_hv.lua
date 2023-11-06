ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "100 Round Mag High Velocity"
ATTACHMENT.Model = Model("models/zaihny/mw22/attachments/augolf/attachment_vm_p03_lm_ahotel_xmag_hv.mdl")
ATTACHMENT.Icon = Material("zaihny/mw22/attachments/icons/augolf/icon_attachment_vm_p03_lm_ahotel_xmag_hv.vmt")
ATTACHMENT.ExcludedAttachments = {"att_perk_rof", "att_perk_fmj"}
ATTACHMENT.ExcludedByAttachments = {"att_receiver", "attachment_vm_p03_sm_apapa_receiver", "attachment_vm_p03_ar_augolf_receiver"}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon:doCalConversionStats()
    weapon.Shell = "mw2_eject_556n_hv"
    weapon.Primary.ClipSize = 100
    weapon.Animations.Reload = weapon.Animations.Reload_ARmag
    weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_ARmag
    weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 0.75
    weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 0.75
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.9
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.9
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.8
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.8
    weapon.Primary.RPM = weapon.Primary.RPM + (769 - 680)
    weapon.Bullet.Damage[1] = weapon.Bullet.Damage[1] * 1.095
    weapon.Bullet.Damage[2] = weapon.Bullet.Damage[2] * 1.095
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.3
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.3
    weapon.Bullet.Penetration.Thickness = weapon.Bullet.Penetration.Thickness * 2
    weapon.Bullet.Range = weapon.Bullet.Range * 1.6
    weapon.Cone.Increase = weapon.Cone.Increase * 2
    weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 1.5
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 1.5
    -- weapon.PrintName = "HCR 556"
    weapon.Primary.Sound = Sound("mwii.augolf.fire")
end
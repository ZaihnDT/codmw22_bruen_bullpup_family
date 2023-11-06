ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "30 Round Mag Armor Piercing"
ATTACHMENT.Model = Model("models/zaihny/mw22/attachments/augolf/attachment_vm_p03_ar_augolf_mag_ap.mdl")
ATTACHMENT.Icon = Material("zaihny/mw22/attachments/icons/augolf/icon_attachment_vm_p03_ar_augolf_mag_ap.vmt")
ATTACHMENT.ExcludedAttachments = {"att_perk_rof", "att_perk_fmj"}
ATTACHMENT.ExcludedByAttachments = {"att_receiver", "attachment_vm_p03_sm_apapa_receiver"}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon:doCalConversionStats()
    weapon.Shell = "mw2_eject_556n_ap"
    weapon.Primary.ClipSize = 30
    weapon.Animations.Reload = weapon.Animations.Reload_ARmag
    weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_ARmag
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.96
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.96
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.95
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.95
    weapon.Primary.RPM = weapon.Primary.RPM + (769 - 680)
    weapon.Bullet.Damage[1] = weapon.Bullet.Damage[1] * 1.315
    weapon.Bullet.Damage[2] = weapon.Bullet.Damage[2] * 1.315
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.1
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.1
    weapon.Bullet.Penetration.Thickness = weapon.Bullet.Penetration.Thickness * 2
    weapon.Bullet.Range = weapon.Bullet.Range * 1.5
    weapon.Cone.Increase = weapon.Cone.Increase * 2
    weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 1.5
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 1.5
    -- weapon.PrintName = "STB 556"
    weapon.Primary.Sound = Sound("mwii.augolf.fire")

end
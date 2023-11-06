ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "42 Round Mag Frangible"
ATTACHMENT.Model = Model("models/zaihny/mw22/attachments/augolf/attachment_vm_p03_ar_augolf_xmag_fn.mdl")
ATTACHMENT.Icon = Material("zaihny/mw22/attachments/icons/augolf/icon_attachment_vm_p03_ar_augolf_xmag_fn.vmt")
ATTACHMENT.ExcludedAttachments = {"att_perk_rof", "att_perk_fmj"}
ATTACHMENT.ExcludedByAttachments = {"att_receiver", "attachment_vm_p03_sm_apapa_receiver"}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon:doCalConversionStats()
    weapon.Shell = "mw2_eject_556n_fn"
    weapon.Primary.ClipSize = 42
    weapon.Animations.Reload = weapon.Animations.Reload_ARmag
    weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_ARmag
    weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 0.95
    weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 0.95
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.96
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.96
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.95
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.95
    weapon.Primary.RPM = weapon.Primary.RPM + (769 - 680)
    weapon.Bullet.Damage[1] = weapon.Bullet.Damage[1] * 1.5
    weapon.Bullet.Damage[2] = weapon.Bullet.Damage[2] * 1
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.08
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.08
    weapon.Bullet.Penetration.Thickness = weapon.Bullet.Penetration.Thickness * 2
    weapon.Bullet.Range = weapon.Bullet.Range * 1.5
    weapon.Cone.Increase = weapon.Cone.Increase * 2
    weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 1.5
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 1.5
    -- weapon.PrintName = "STB 556"
    weapon.Primary.Sound = Sound("mwii.augolf.fire")
end
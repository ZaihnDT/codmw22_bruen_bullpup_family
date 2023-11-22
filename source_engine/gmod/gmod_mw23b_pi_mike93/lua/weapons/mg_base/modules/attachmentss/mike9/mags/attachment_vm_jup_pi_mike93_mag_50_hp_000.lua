ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "50 Rounds Drum Hollow Point"
ATTACHMENT.Model = Model("models/zaihny/mw23/attachments/mike93/attachment_vm_jup_pi_mike93_mag_50_hp_000.mdl")
ATTACHMENT.Icon = Material("zaihny/mw23/attachments/icons/mike93/icon_attachment_vm_jup_pi_mike93_mag_50_hp_000.vmt")
ATTACHMENT.ExcludedAttachments = {"att_perk_fmj"}
ATTACHMENT.ExcludedByAttachments = {"att_receiver"}
ATTACHMENT.CosmeticChange = true

--Current mag
ATTACHMENT.BulletList = {
    [0] = {"j_bullet1"},
}


local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Bullet.Damage[1] = weapon.Bullet.Damage[1] * 1.1
    weapon.Bullet.Damage[2] = weapon.Bullet.Damage[2] * 1.1
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 0.95
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 0.95
    weapon.Bullet.Penetration.Thickness = weapon.Bullet.Penetration.Thickness * 0.75
    weapon.Shell = "mw2_eject_9p_hp"
    weapon.Primary.ClipSize = 50
    weapon.Animations.Reload = weapon.Animations.Reload_XmagLrg
    weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_XmagLrg
    weapon.Animations.Reload_Fast = weapon.Animations.Reload_XmagLrg_Fast
    weapon.Animations.Reload_Empty_Fast = weapon.Animations.Reload_Empty_XmagLrg_Fast
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.75
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.75
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.8
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.8
    weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 0.8
    weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 0.8
end
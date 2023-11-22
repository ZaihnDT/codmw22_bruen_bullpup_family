ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "24 Rounds Mag"
ATTACHMENT.Model = Model("models/zaihny/mw23/attachments/mike93/attachment_vm_jup_pi_mike93_mag_24_000.mdl")
ATTACHMENT.Icon = Material("zaihny/mw23/attachments/icons/mike93/icon_attachment_vm_jup_pi_mike93_mag_24_000.vmt")
ATTACHMENT.ExcludedByAttachments = {"att_receiver"}
ATTACHMENT.CosmeticChange = true

--Current mag
ATTACHMENT.BulletList = {
    [0] = {"j_bullet1"},
}


local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Shell = "mw2_eject_9p"
    weapon.Primary.ClipSize = 24
    weapon.Animations.Reload = weapon.Animations.Reload_Xmag
    weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_Xmag
    weapon.Animations.Reload_Fast = weapon.Animations.Reload_Xmag_Fast
    weapon.Animations.Reload_Empty_Fast = weapon.Animations.Reload_Empty_Xmag_Fast
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.9
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.9
end
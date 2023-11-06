ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "25 Round Mag Hollow Point"
ATTACHMENT.Model = Model("models/zaihny/mw22/attachments/augolf/attachment_vm_p03_sm_apapa_mag_hp.mdl")
ATTACHMENT.Icon = Material("zaihny/mw22/attachments/icons/augolf/icon_attachment_vm_p03_sm_apapa_mag_hp.vmt")
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
    weapon.Primary.Sound = Sound("mwii.augolf.fire")
end

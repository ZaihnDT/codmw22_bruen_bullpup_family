ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "25 Round Mag Overpressured"
ATTACHMENT.Model = Model("models/zaihny/mw22/attachments/augolf/attachment_vm_p03_sm_apapa_mag_op.mdl")
ATTACHMENT.Icon = Material("zaihny/mw22/attachments/icons/augolf/icon_attachment_vm_p03_sm_apapa_mag_op.vmt")
ATTACHMENT.ExcludedAttachments = {"att_perk_fmj"}
ATTACHMENT.ExcludedByAttachments = {"att_receiver", "attachment_vm_p03_ar_augolf_receiver", "attachment_vm_p03_lm_ahotel_receiver"}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Shell = "mw2_eject_9p_op"
    weapon.Primary.Sound = Sound("mwii.augolf.fire")
    weapon.Bullet.Damage[1] = weapon.Bullet.Damage[1] * 1.05
    weapon.Bullet.Damage[2] = weapon.Bullet.Damage[2] * 1.05
end

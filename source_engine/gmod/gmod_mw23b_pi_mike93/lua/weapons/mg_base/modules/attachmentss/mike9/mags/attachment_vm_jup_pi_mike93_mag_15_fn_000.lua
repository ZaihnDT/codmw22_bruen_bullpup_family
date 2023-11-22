ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "Renetti Mag Frangible"
ATTACHMENT.Model = Model("models/zaihny/mw23/attachments/mike93/attachment_vm_jup_pi_mike93_mag_15_fn_000.mdl")
ATTACHMENT.Icon = Material("zaihny/mw23/attachments/icons/mike93/icon_attachment_vm_jup_pi_mike93_mag_15_fn_000.vmt")
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
    weapon.Bullet.Damage[1] = weapon.Bullet.Damage[1] * 1.25
    weapon.Bullet.Damage[2] = weapon.Bullet.Damage[2] * 0.85
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 0.90
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 0.90
    weapon.Shell = "mw2_eject_9p_fn"
end
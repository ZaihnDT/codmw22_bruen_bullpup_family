ATTACHMENT.Base = "att_receiver"
ATTACHMENT.Name = "Renetti Receiver (MWIII)"
ATTACHMENT.Model = Model("models/zaihny/mw23/attachments/mike93/attachment_vm_jup_pi_mike93_rec_000.mdl")
ATTACHMENT.Icon = Material("zaihny/mw23/attachments/icons/mike93/icon_attachment_vm_jup_pi_mike93_rec_000.vmt")
ATTACHMENT.ExcludedAttachments = {"attachment_vm_pi_mike9_xmags", "attachment_vm_pi_mike9_xmagslrg", "attachment_vm_pi_mike9_pstlgrpcust", "attachment_vm_pi_mike9_pstlgrplght", "attachment_vm_pi_mike9_stock", "attachment_vm_pi_mike9_barrel_black", "attachment_vm_pi_mike9_barlong" , "attachment_vm_pi_mike9_barlight", "attachment_vm_pi_mike9_barauto", "attachment_vm_pi_mike9_gripvert"}
ATTACHMENT.Bodygroups = {
    ["receiver"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
end
ATTACHMENT.CosmeticChange = true
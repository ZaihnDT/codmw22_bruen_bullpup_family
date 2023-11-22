ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "MLX Short Competition Barrel"
ATTACHMENT.Model = Model("models/zaihny/mw23/attachments/mike93/attachment_vm_jup_pi_mike93_bar_short_000.mdl")
ATTACHMENT.Icon = Material("zaihny/mw23/attachments/icons/mike93/icon_attachment_vm_jup_pi_mike93_bar_short_000.vmt")
ATTACHMENT.ExcludedByAttachments = {"att_receiver"}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.9
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.9
    weapon.Cone.Increase = weapon.Cone.Increase * 0.5
    weapon.Cone.Hip = weapon.Cone.Hip * 0.5
end
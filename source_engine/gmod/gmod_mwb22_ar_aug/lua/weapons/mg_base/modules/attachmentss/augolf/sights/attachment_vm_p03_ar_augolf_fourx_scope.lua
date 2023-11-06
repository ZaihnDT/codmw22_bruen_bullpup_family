ATTACHMENT.Base = "att_optic_3x"
ATTACHMENT.Model = Model("models/zaihny/mw22/attachments/augolf/attachment_vm_p03_ar_augolf_fourx_scope.mdl")
ATTACHMENT.Icon = Material("zaihny/mw22/attachments/icons/augolf/icon_attachment_vm_p03_ar_augolf_fourx_scope.vmt")
ATTACHMENT.ExcludedByAttachments = {"att_receiver"}
ATTACHMENT.Name = "LUCA Canis 4x Optic"
ATTACHMENT.Bodygroups = {
    ["tag_sight"] = 2
}
ATTACHMENT.Optic = {
    HideModel = Model("models/zaihny/mw22/attachments/augolf/attachment_vm_p03_ar_augolf_fourx_scope_hide.mdl"),
    LensHideMaterial = Material("viper/mw/attachments/attachment_vm_4x_east_lens.vmt"),
    LensBodygroup = "lens",
    FOV = 7, 
    ParallaxSize = 400, --a value of zero means 1:1 size with the end of the optic
    Thermal = false
}
ATTACHMENT.Reticle = {
    Material = Material("viper/mw/reticles/reticle_aug.vmt"),
    Size = 1000,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle",
	Offset = Vector(0.07, 0.55, 0)
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    weapon.ViewModelOffsets.Aim.Pos = weapon.ViewModelOffsets.Aim.Pos + Vector(-0.115, -0.10, -0.605)
	weapon.ViewModelOffsets.Aim.Angles = weapon.ViewModelOffsets.Aim.Angles + Angle(0, 0, 0)
end
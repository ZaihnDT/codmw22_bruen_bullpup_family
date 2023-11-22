ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "FTAC Satus Folding Stock"
ATTACHMENT.Model = Model("models/zaihny/mw23/attachments/mike93/attachment_vm_jup_sm_mike93_stock_folding_000.mdl")
ATTACHMENT.Icon = Material("zaihny/mw23/attachments/icons/mike93/icon_attachment_vm_jup_sm_mike93_stock_folding_000.vmt")
ATTACHMENT.ExcludedByAttachments = {"att_receiver"}
ATTACHMENT.ExcludedAttachments = {"attachment_vm_pi_mike9_xmags", "attachment_vm_pi_mike9_xmagslrg", "attachment_vm_pi_mike9_pstlgrpcust", "attachment_vm_pi_mike9_pstlgrplght", "attachment_vm_pi_mike9_stock", "attachment_vm_pi_mike9_barrel_black", "attachment_vm_pi_mike9_barlong" , "attachment_vm_pi_mike9_barlight", "attachment_vm_pi_mike9_barauto", "attachment_vm_pi_mike9_gripvert"}


local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.9
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.9
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.85
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.85
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 0.5
    weapon.Zoom.Blur.EyeFocusDistance = 11
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    weapon:SetWorldModel("models/zaihny/mw23/weapons/w_mike93.mdl")
    weapon:SetViewModel("models/zaihny/mw23/weapons/v_mike93_stock.mdl")
end
local cm,m,o=GetID()
function cm.initial_effect(c)
	vgf.VgCard(c)
	vgd.EffectTypeContinuousChangeAttack(c,EFFECT_TYPE_SINGLE,2000,con)
	vgd.EffectTypeContinuousChangeAttack(c,EFFECT_TYPE_SINGLE,5000,con,tg,c,EFFECT_UPDATE_DEFENSE,reset,LOCATION_GZONE)
end
function cm.con(e,c)
	local tp=e:GetHandler()
	return vgf.IsExistingMatchingCard(cm.filter,tp,LOCATION_ORDER,0,1,nil)
end
function cm.filter(c)
	return c:GetFlagEffect(FLAG_IMPRISON)>0
end
--
local cm,m,o=GetID()
function cm.initial_effect(c)
	VgD.Rule(c)
	VgD.RideUp(c)
	VgD.CardTrigger(c,nil)
	VgD.SpellActivate(c,m,nil,cm.op,0,1)
end
function cm.op(e,tp,eg,ep,ev,re,r,rp)

end
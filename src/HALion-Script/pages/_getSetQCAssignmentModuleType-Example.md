```lua
-- Copy all quick control assignments with layer scope from one layer to another.

function copyQCsWithLayerScope(fromLayer, toLayer)

    for q = 1,8 do
        local n = fromLayer:getNumQCAssignments(q)
        for i = 1,n do
            local scope = fromLayer:getQCAssignmentScope(q, i)
            local param = fromLayer:getQCAssignmentParamId(q, i)
            local mtype = fromLayer:getQCAssignmentModuleType(q, i)
            local min   = fromLayer:getQCAssignmentMin(q, i)
            local max   = fromLayer:getQCAssignmentMax(q, i)
            local mode  = fromLayer:getQCAssignmentMode(q, i)
            local curve = fromLayer:getQCAssignmentCurve(q, i)
            local byp   = fromLayer:getQCAssignmentBypass(q, i)

            if scope == fromLayer then
                toLayer:addQCAssignment(q, mtype, param, toLayer)
                local j = toLayer:getNumQCAssignments(q)
                toLayer:setQCAssignmentParamId(q, j, param)
                toLayer:setQCAssignmentModuleType(q, j, mtype)
                toLayer:setQCAssignmentMin(q, j, min)
                toLayer:setQCAssignmentMax(q, j, max)
                toLayer:setQCAssignmentMode(q, j, mode)
                toLayer:setQCAssignmentCurve(q, j, curve)
                toLayer:setQCAssignmentBypass(q, j, byp)
            end
        end
        if toLayer:getNumQCAssignments(q) > 0 then
            local name = fromLayer:getParameter("QuickControl.Name" .. q)
            toLayer:setParameter("QuickControl.Name" .. q, name)
            local val = fromLayer:getParameter("QuickControl.QC" .. q)
            toLayer:setParameter("QuickControl.QC" .. q, val)
        end
    end

end

fromLayer = this.parent:getLayer(1)
toLayer = this.parent:getLayer(2)

copyQCsWithLayerScope(fromLayer, toLayer)
```
```lua
 -- Reset the amplitude envelope.
  
-- Default envelope times in seconds.
attack = 0
decay = 1
sustain = 1
release = 1
  
zone = this.program:getZone()
  
-- Get the envelope points of the amplitude envelope.
ampEnvPoints = zone:getParameter("Amp Env.EnvelopePoints")
ampSustainPoint = zone:getParameter("Amp Env.SustainIndex")
  
-- Set the envelope points to 4.
while #ampEnvPoints > 4 do
    removeEnvelopePoint(ampEnvPoints, #ampEnvPoints)
end
 
while #ampEnvPoints < 4 do
    insertEnvelopePoint(ampEnvPoints, #ampEnvPoints, 0, 1, 0)
end
  
-- Adjust the position of the sustain point.
ampSustainPoint = #ampEnvPoints - 1
  
-- Set first point.
ampEnvPoints[1].level = 0
ampEnvPoints[1].duration = 0
ampEnvPoints[1].curve = 0
  
-- Set second point.
ampEnvPoints[2].level = 1
ampEnvPoints[2].duration = attack
ampEnvPoints[2].curve = 0
  
-- Set third point.
ampEnvPoints[3].level = sustain
ampEnvPoints[3].duration = decay
ampEnvPoints[3].curve = 0
  
-- Set fourth point.
ampEnvPoints[4].level = 0
ampEnvPoints[4].duration = release
ampEnvPoints[4].curve = 0
  
-- Set the envelope points of the amplitude envelope.
zone:setParameter("Amp Env.EnvelopePoints", ampEnvPoints)
zone:setParameter("Amp Env.SustainIndex", ampSustainPoint)
```
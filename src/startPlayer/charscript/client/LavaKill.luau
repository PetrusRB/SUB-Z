-- Instances
local character = script.Parent
local humanoid = character:WaitForChild("Humanoid")
local rootPart = character:WaitForChild("HumanoidRootPart")

-- Configuração
local lavaMaterial = Enum.Material.CrackedLava -- Material que representa lava
local damageAmount = 50 -- Quantidade de dano
local damageDelay = 1 -- Delay entre danos (em segundos)

-- Função para verificar o material
local function checkMaterial()
	local touchingParts = rootPart:GetTouchingParts()
	for _, part in ipairs(touchingParts) do
		if part.Material == lavaMaterial then
			humanoid:TakeDamage(damageAmount)
			task.wait(damageDelay)
		end
	end
end

-- Conexão
rootPart.Touched:Connect(checkMaterial)

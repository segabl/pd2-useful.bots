-- Make bots actually use inspire, not only if you are in their detected attention objects
local check_inspire_original = TeamAILogicTravel.check_inspire
function TeamAILogicTravel.check_inspire(data, attention, ...)
	return check_inspire_original(data, attention or { unit = data.objective.follow_unit }, ...)
end

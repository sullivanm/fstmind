json.array!(@batts) do |batt|
  json.extract! batt, :id, :playerID, :yearID, :league, :teamID, :G, :AB, :R, :H, :2B, :3B, :HR, :RBI, :SB, :CS
  json.url batt_url(batt, format: :json)
end

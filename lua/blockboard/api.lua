local curl = require('plenary.curl')

local api = {}

local coins = {
  "bitcoin",
  "binancecoin",
  "dogecoin",
  "shiba-inu",
  "htmoon",
  "huobi-token",
  "pig-finance",
  "akita-inu",
}

local function getData()
  local res = curl.get("https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&ids="..table.concat(coins, ","))
  return vim.fn.json_decode(res.body)
end

return {
  getData = getData
}

coroutine.wrap(function()
  local sites = fetch({
    url = "http://api.buss.lol/domains",
    method = "GET",
    headers = {
      ["Content-Type"] = "application/json",
    }
  })
  local site = sites[math.random(1, #sites)]
  local el = get("site-anchor")

  site = site.name .. "." .. site.tld

  el.set_href(site)

  -- doesn't work in normal bussin and also broken on
  -- my custom version (atleast on page load)
  --[[
  if set_href ~= nil then
    set_href(site)
  end
  --]]
end)()

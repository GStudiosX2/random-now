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

  site = "buss://" .. site.name .. "." .. site.tld

  el.set_href(site)
end)()

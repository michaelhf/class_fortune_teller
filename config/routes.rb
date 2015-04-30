Rails.application.routes.draw do
  get("/",        { :controller => "numbers", :action => "lucky_numbers" })

  get("/lucky",   { :controller => "numbers", :action => "lucky_numbers" })
  get("/unlucky", { :controller => "numbers", :action => "unlucky_numbers" })

  get("/random_number/:num",   { :controller => "numbers", :action =>"random_numbers" })
  get("/random_number/",   { :controller => "numbers", :action =>"random_numbers" })

  # Uncomment each route below ONE AT A TIME and debug.
  # get("/zodiacs/aries",       { :controller =>  "zodiacs",  :action =>  "ram" })
  # get("/zodiacs/taurus",      { :controller =>  "zodiacs",  :action =>  "bull" })
  # get("/zodiacs/gemini",      { :controller => "zodiacs", :action => "twins" })
  # get("/zodiacs/cancer",      { :controller => "zodiacs", :action => "crab" })
  # get("/zodiacs/leo",         { :controller => "zodiacs",  :action => "lion" })
  # get("/zodiacs/virgo",       { :controller => "zodiacs", :action => "maiden" })
  # get("/zodiacs/libra",       { :controller => "zodiacs", :action => "scales" })
  # get("/zodiacs/scorpio",     { :controller => "zodiacs", :action => "scorpion" })
  # get("/zodiacs/sagittarius", { :controller => "zodiacs", :action => "archer" })
  # get("/zodiacs/capricorn",   { :controller => "zodiacs", :action => "goat" })
  # get("/zodiacs/aquarius",    { :controller => "zodiacs", :action => "waterbearer" })
  # get("/zodiacs/pisces",      { :controller => "zodiacs", :action => "fish" })
  get("/signs/:anything",     { :controller => "zodiacs", :action => "any" } )
  get("/zodiacs/:anything",     { :controller => "zodiacs", :action => "any_sign" } )

end

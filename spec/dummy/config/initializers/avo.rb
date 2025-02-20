Avo.configure do |config|
  config.root_path = "/avo"
  config.app_name = "Avocadelicious"
  config.license = "pro"
  config.locale = "en-US"
  config.license_key = ENV["AVO_LICENSE_KEY"]
  config.current_user_method(&:current_user)
  config.id_links_to_resource = true
  config.full_width_container = true
  config.set_context do
    {
      foo: "bar",
      user: current_user,
      params: request.params
    }
  end
end

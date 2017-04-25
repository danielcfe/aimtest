SparkPostRails.configure do |c|
  c.api_key = 'f10e2abf0cac4aa988018027c8d7d46be752c727'
  # c.sandbox = true                                # default: false
  # c.track_opens = true                            # default: false
  # c.track_clicks = true                           # default: false
  c.return_path = 'danielcfe@gmail.com'  # default: nil
  # c.campaign_id = 'YOUR-CAMPAIGN'                 # default: nil
  c.transactional = true                          # default: false
  c.inline_css = true                             # default: false
  c.html_content_only = true                      # default: false
  # c.subaccount = "123"                            # default: nil
end

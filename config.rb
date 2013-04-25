# Change this to :production when ready to deploy the CSS to the live server.
  environment = :production

# In development, we can turn on the FireSass-compatible debug_info.
  firesass = false

# Location of the theme's resources.
  css_dir         = "css"
  sass_dir        = "scss"
  extensions_dir  = "../../libraries/sass-extensions"
  images_dir      = "images"
  javascripts_dir = "js"
  fonts_dir       = "assets"
  relative_assets = true

# Require any additional compass plugins installed on your system.
# require 'zen-grids'
# require 'susy'

# You can select your preferred output style here (can be overridden via the command line):
# output_style = :expanded or :nested or :compact or :compressed
  output_style = (environment == :development) ? :expanded : :compressed

# To disable debugging comments that display the original location of your selectors. Uncomment:
  line_comments = false

# Pass options to sass. For development, we turn on the FireSass-compatible
# debug_info if the firesass config variable above is true.
  sass_options = (environment == :development && firesass == true) ? {
    :debug_info => true,
    :unix_newlines => true
  } : {
    :quiet => true,
    :unix_newlines => true
  }

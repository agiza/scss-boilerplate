# This file sets up Sass/Compass to compile in production mode. Local development
# environments should override these settings when required.
#
# Be mindful not to commit development changes back upstream.


# Explicitly define the environment
environment = :production

# output_style = :expanded or :nested or :compact or :compressed
output_style = :compressed

# Disable debugging comments that display the location of your selectors.
line_comments = false

# Location of the theme's resources.
relative_assets = true                                     # Use relative paths.
css_dir         = "css"
sass_dir        = "scss"
extensions_dir  = "../../libraries/sass-extensions"
images_dir      = "images"
javascripts_dir = "js"
fonts_dir       = "fonts"

# Silence deprecation warnings
disable-warnings = true

# Pass production options to Sass and force Unix newlines just in case.
sass_options = {
  :quiet => true,
  :unix_newlines => true
}


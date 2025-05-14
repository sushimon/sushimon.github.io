from datetime import datetime

AUTHOR = "Richard Shi"
SITEURL = "https://sushimon.github.io/"
# SITEURL = "http://127.0.0.1:8000"
SITENAME = "Richard Shi's Website"
SITETITLE = "Richard Shi"
SITESUBTITLE = "mscac student @ uoft"
SITEDESCRIPTION = ""
SITELOGO = '/images/profile.jpg'
FAVICON = '/images/favicon.ico'
BROWSER_COLOR = "#333333"
PYGMENTS_STYLE = "monokai"

ROBOTS = "index, follow"

THEME = "Flex"
PATH = "content"
OUTPUT_PATH = "output/"
TIMEZONE = "America/Toronto"

DISABLE_URL_HASH = True

I18N_TEMPLATES_LANG = "en"
DEFAULT_LANG = "en"
OG_LOCALE = "en_US"
LOCALE = "en_US"

DATE_FORMATS = {
    "en": "%B %d, %Y",
}

MAIN_MENU = False
PAGE_ORDER_BY = 'sortorder'

SOCIAL = (
    ("github", "https://github.com/sushimon"),
    ("linkedin", "https://www.linkedin.com/in/shi-richard/"),
    ("instagram", "https://www.instagram.com/rshi2vball/")
)
LINKS = (
    ("resume", "https://drive.google.com/file/d/1eU3-gcgqNb24vb0TU5g8KyGZelEM2b_L/view?usp=sharing"),
)

COPYRIGHT_YEAR = datetime.now().year

STATIC_PATHS = ["images"]

THEME_COLOR_AUTO_DETECT_BROWSER_PREFERENCE = True
THEME_COLOR_ENABLE_USER_OVERRIDE = True

USE_LESS = True

DELETE_OUTPUT_DIRECTORY = True
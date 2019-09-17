# pylint: disable=C0111
c = c  # noqa: F821 pylint: disable=E0602,C0103
config = config  # noqa: F821 pylint: disable=E0602,C0103

# Autogenerated config.py
# Documentation:
#   qute://help/configuring.html
#   qute://help/settings.html

c.content.plugins = True
c.fonts.hints = "14pt monospace"
c.fonts.keyhint = "14pt monospace"

# Uncomment this to still load settings configured via autoconfig.yml
config.load_autoconfig()

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'file://*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'chrome://*/*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'qute://*/*')

config.bind('<Ctrl-Shift-m>', 'hint links spawn --detach mpv --force-window yes {hint-url}')

c.completion.shrink = True

c.tabs.position = "left"
# c.tabs.max_width = 15
c.tabs.pinned.shrink = False
c.tabs.show = "switching"

c.url.default_page = "about:blank"
c.url.start_pages = "www.google.com"

c.url.searchengines = {
    "DEFAULT": "https://www.google.com/search?q={}",
    "y": "https://youtube.com/results?search_query={}",
    "a": "https://smile.amazon.com/s/ref=nb_sb_noss_1?url=search-alias%3Daps&field-keywords={}",
    "pd": "https://www.purdue.edu/directory/?searchString={}&selectedSearchTypeId=0",
    "s": "https://scholar.google.com/scholar?hl=en&q={}&btnG=&as_sdt=1%2C15",
    "r": "http://www.reddit.com/r/{}",
    "td": "https://www.torrentday.com/t?q={}&qf=&25=on&11=on&5=on&3=on&21=on&13=on&1=on&24=on&14=on&26=on&7=on&2=on&9=on&27=on&30=on#torrents",
    "aw": "https://wiki.archlinux.org/index.php?search={}&title=Special%3ASearch&go=Go"
}

c.aliases['yt'] = 'open https://www.youtube.com'
c.aliases['speed'] = 'open https://www.keyhero.com/free-typing-test/'
c.aliases['pmail'] = 'open https://outlook.office365.com/mail/inbox'
c.aliases['dl'] = 'hint links download'

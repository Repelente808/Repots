static const char norm_fg[] = "#c6c7ca";
static const char norm_bg[] = "#1e212b";
static const char norm_border[] = "#656a7b";

static const char sel_fg[] = "#c6c7ca";
static const char sel_bg[] = "#9EA0A0";
static const char sel_border[] = "#c6c7ca";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
};

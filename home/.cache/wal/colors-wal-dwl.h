/* Taken from https://github.com/djpohly/dwl/issues/466 */
#define COLOR(hex)    { ((hex >> 24) & 0xFF) / 255.0f, \
                        ((hex >> 16) & 0xFF) / 255.0f, \
                        ((hex >> 8) & 0xFF) / 255.0f, \
                        (hex & 0xFF) / 255.0f }

static const float rootcolor[]             = COLOR(0x1e212bff);
static uint32_t colors[][3]                = {
	/*               fg          bg          border    */
	[SchemeNorm] = { 0xc6c7caff, 0x1e212bff, 0x656a7bff },
	[SchemeSel]  = { 0xc6c7caff, 0xD9CBA3ff, 0x9EA0A0ff },
	[SchemeUrg]  = { 0xc6c7caff, 0x9EA0A0ff, 0xD9CBA3ff },
};

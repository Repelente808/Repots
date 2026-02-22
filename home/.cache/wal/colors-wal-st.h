const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#1e212b", /* black   */
  [1] = "#9EA0A0", /* red     */
  [2] = "#D9CBA3", /* green   */
  [3] = "#A6AECA", /* yellow  */
  [4] = "#92D8DA", /* blue    */
  [5] = "#DDDDDD", /* magenta */
  [6] = "#F6F8FC", /* cyan    */
  [7] = "#c6c7ca", /* white   */

  /* 8 bright colors */
  [8]  = "#656a7b",  /* black   */
  [9]  = "#9EA0A0",  /* red     */
  [10] = "#D9CBA3", /* green   */
  [11] = "#A6AECA", /* yellow  */
  [12] = "#92D8DA", /* blue    */
  [13] = "#DDDDDD", /* magenta */
  [14] = "#F6F8FC", /* cyan    */
  [15] = "#c6c7ca", /* white   */

  /* special colors */
  [256] = "#1e212b", /* background */
  [257] = "#c6c7ca", /* foreground */
  [258] = "#c6c7ca",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;

# =============================================================
# Character Sets
#
# @see https://dev.mysql.com/doc/refman/5.7/en/charset-charsets.html

O_CHARSET_NAME -> (
    "big5"
  | "dec8"
  | "cp850"
  | "hp8"
  | "koi8r"
  | "latin1"
  | "latin2"
  | "swe7"
  | "ascii"
  | "ujis"
  | "sjis"
  | "hebrew"
  | "tis620"
  | "euckr"
  | "koi8u"
  | "gb2312"
  | "greek"
  | "cp1250"
  | "gbk"
  | "latin5"
  | "armscii8"
  | "utf8"
  | "ucs2"
  | "cp866"
  | "keybcs2"
  | "macce"
  | "macroman"
  | "cp852"
  | "latin7"
  | "utf8mb4"
  | "cp1251"
  | "utf16"
  | "utf16le"
  | "cp1256"
  | "cp1257"
  | "utf32"
  | "binary"
  | "geostd8"
  | "cp932"
  | "eucjpms"
  | "gb18030"
) {% d => { return d[0][0] } %}

.class public final Lcom/tom_roush/fontbox/ttf/OpenTypeScript;
.super Ljava/lang/Object;
.source "OpenTypeScript.java"


# static fields
.field public static final INHERITED:Ljava/lang/String; = "Inherited"

.field public static final TAG_DEFAULT:Ljava/lang/String; = "DFLT"

.field private static final UNICODE_SCRIPT_TO_OPENTYPE_TAG_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNKNOWN:Ljava/lang/String; = "Unknown"

.field private static unicodeRangeScripts:[Ljava/lang/String;

.field private static unicodeRangeStarts:[I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "Could not close Scripts.txt"

    const-string v1, "PdfBox-Android"

    const/16 v2, 0x8a

    new-array v3, v2, [[Ljava/lang/Object;

    const-string v4, "adlm"

    .line 63
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "Adlam"

    filled-new-array {v5, v4}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "ahom"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "Ahom"

    filled-new-array {v6, v4}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-string v4, "hluw"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v7, "Anatolian_Hieroglyphs"

    filled-new-array {v7, v4}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const-string v4, "arab"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v7, "Arabic"

    filled-new-array {v7, v4}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v7, 0x3

    aput-object v4, v3, v7

    const-string v4, "armn"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v7, "Armenian"

    filled-new-array {v7, v4}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v7, 0x4

    aput-object v4, v3, v7

    const-string v4, "avst"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v7, "Avestan"

    filled-new-array {v7, v4}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v7, 0x5

    aput-object v4, v3, v7

    const-string v4, "bali"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v7, "Balinese"

    filled-new-array {v7, v4}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v7, 0x6

    aput-object v4, v3, v7

    const-string v4, "bamu"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v7, "Bamum"

    filled-new-array {v7, v4}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v7, 0x7

    aput-object v4, v3, v7

    const-string v4, "bass"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v7, "Bassa_Vah"

    filled-new-array {v7, v4}, [Ljava/lang/Object;

    move-result-object v4

    const/16 v7, 0x8

    aput-object v4, v3, v7

    const-string v4, "batk"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v7, "Batak"

    filled-new-array {v7, v4}, [Ljava/lang/Object;

    move-result-object v4

    const/16 v7, 0x9

    aput-object v4, v3, v7

    const-string v4, "bng2"

    const-string v7, "beng"

    filled-new-array {v4, v7}, [Ljava/lang/String;

    move-result-object v4

    const-string v7, "Bengali"

    filled-new-array {v7, v4}, [Ljava/lang/Object;

    move-result-object v4

    const/16 v7, 0xa

    aput-object v4, v3, v7

    const-string v4, "bhks"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v7, "Bhaiksuki"

    filled-new-array {v7, v4}, [Ljava/lang/Object;

    move-result-object v4

    const/16 v7, 0xb

    aput-object v4, v3, v7

    const-string v4, "bopo"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v7, "Bopomofo"

    filled-new-array {v7, v4}, [Ljava/lang/Object;

    move-result-object v4

    const/16 v7, 0xc

    aput-object v4, v3, v7

    const-string v4, "brah"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v7, "Brahmi"

    filled-new-array {v7, v4}, [Ljava/lang/Object;

    move-result-object v4

    const/16 v7, 0xd

    aput-object v4, v3, v7

    const-string v4, "brai"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v7, "Braille"

    filled-new-array {v7, v4}, [Ljava/lang/Object;

    move-result-object v4

    const/16 v7, 0xe

    aput-object v4, v3, v7

    const-string v4, "bugi"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v7, "Buginese"

    filled-new-array {v7, v4}, [Ljava/lang/Object;

    move-result-object v4

    const/16 v7, 0xf

    aput-object v4, v3, v7

    const-string v4, "buhd"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v7, "Buhid"

    filled-new-array {v7, v4}, [Ljava/lang/Object;

    move-result-object v4

    const/16 v7, 0x10

    aput-object v4, v3, v7

    const-string v4, "cans"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v7, "Canadian_Aboriginal"

    filled-new-array {v7, v4}, [Ljava/lang/Object;

    move-result-object v4

    const/16 v7, 0x11

    aput-object v4, v3, v7

    const-string v4, "cari"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v7, "Carian"

    filled-new-array {v7, v4}, [Ljava/lang/Object;

    move-result-object v4

    const/16 v7, 0x12

    aput-object v4, v3, v7

    const-string v4, "aghb"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v7, "Caucasian_Albanian"

    filled-new-array {v7, v4}, [Ljava/lang/Object;

    move-result-object v4

    const/16 v7, 0x13

    aput-object v4, v3, v7

    const-string v4, "cakm"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v7, "Chakma"

    filled-new-array {v7, v4}, [Ljava/lang/Object;

    move-result-object v4

    const/16 v7, 0x14

    aput-object v4, v3, v7

    const-string v4, "cham"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v7, "Cham"

    filled-new-array {v7, v4}, [Ljava/lang/Object;

    move-result-object v4

    const/16 v7, 0x15

    aput-object v4, v3, v7

    const-string v4, "cher"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v7, "Cherokee"

    filled-new-array {v7, v4}, [Ljava/lang/Object;

    move-result-object v4

    const/16 v7, 0x16

    aput-object v4, v3, v7

    const-string v4, "DFLT"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Common"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x17

    aput-object v7, v3, v8

    const-string v7, "copt"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Coptic"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x18

    aput-object v7, v3, v8

    const-string v7, "xsux"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Cuneiform"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x19

    aput-object v7, v3, v8

    const-string v7, "cprt"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Cypriot"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x1a

    aput-object v7, v3, v8

    const-string v7, "cyrl"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Cyrillic"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x1b

    aput-object v7, v3, v8

    const-string v7, "dsrt"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Deseret"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x1c

    aput-object v7, v3, v8

    const-string v7, "dev2"

    const-string v8, "deva"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Devanagari"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x1d

    aput-object v7, v3, v8

    const-string v7, "dupl"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Duployan"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x1e

    aput-object v7, v3, v8

    const-string v7, "egyp"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Egyptian_Hieroglyphs"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x1f

    aput-object v7, v3, v8

    const-string v7, "elba"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Elbasan"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x20

    aput-object v7, v3, v8

    const-string v7, "ethi"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Ethiopic"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x21

    aput-object v7, v3, v8

    const-string v7, "geor"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Georgian"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x22

    aput-object v7, v3, v8

    const-string v7, "glag"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Glagolitic"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x23

    aput-object v7, v3, v8

    const-string v7, "goth"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Gothic"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x24

    aput-object v7, v3, v8

    const-string v7, "gran"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Grantha"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x25

    aput-object v7, v3, v8

    const-string v7, "grek"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Greek"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x26

    aput-object v7, v3, v8

    const-string v7, "gjr2"

    const-string v8, "gujr"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Gujarati"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x27

    aput-object v7, v3, v8

    const-string v7, "gur2"

    const-string v8, "guru"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Gurmukhi"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x28

    aput-object v7, v3, v8

    const-string v7, "hani"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Han"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x29

    aput-object v7, v3, v8

    const-string v7, "hang"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Hangul"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x2a

    aput-object v7, v3, v8

    const-string v7, "hano"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Hanunoo"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x2b

    aput-object v7, v3, v8

    const-string v7, "hatr"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Hatran"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x2c

    aput-object v7, v3, v8

    const-string v7, "hebr"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Hebrew"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x2d

    aput-object v7, v3, v8

    const-string v7, "kana"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "Hiragana"

    filled-new-array {v9, v8}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x2e

    aput-object v8, v3, v9

    const-string v8, "armi"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "Imperial_Aramaic"

    filled-new-array {v9, v8}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x2f

    aput-object v8, v3, v9

    const-string v8, "Inherited"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v9

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x30

    aput-object v8, v3, v9

    const-string v8, "phli"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "Inscriptional_Pahlavi"

    filled-new-array {v9, v8}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x31

    aput-object v8, v3, v9

    const-string v8, "prti"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "Inscriptional_Parthian"

    filled-new-array {v9, v8}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x32

    aput-object v8, v3, v9

    const-string v8, "java"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "Javanese"

    filled-new-array {v9, v8}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x33

    aput-object v8, v3, v9

    const-string v8, "kthi"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "Kaithi"

    filled-new-array {v9, v8}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x34

    aput-object v8, v3, v9

    const-string v8, "knd2"

    const-string v9, "knda"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "Kannada"

    filled-new-array {v9, v8}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x35

    aput-object v8, v3, v9

    const-string v8, "Katakana"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x36

    aput-object v7, v3, v8

    const-string v7, "kali"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Kayah_Li"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x37

    aput-object v7, v3, v8

    const-string v7, "khar"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Kharoshthi"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x38

    aput-object v7, v3, v8

    const-string v7, "khmr"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Khmer"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x39

    aput-object v7, v3, v8

    const-string v7, "khoj"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Khojki"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x3a

    aput-object v7, v3, v8

    const-string v7, "sind"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Khudawadi"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x3b

    aput-object v7, v3, v8

    const-string v7, "lao "

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Lao"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x3c

    aput-object v7, v3, v8

    const-string v7, "latn"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Latin"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x3d

    aput-object v7, v3, v8

    const-string v7, "lepc"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Lepcha"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x3e

    aput-object v7, v3, v8

    const-string v7, "limb"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Limbu"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x3f

    aput-object v7, v3, v8

    const-string v7, "lina"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Linear_A"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x40

    aput-object v7, v3, v8

    const-string v7, "linb"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Linear_B"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x41

    aput-object v7, v3, v8

    const-string v7, "lisu"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Lisu"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x42

    aput-object v7, v3, v8

    const-string v7, "lyci"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Lycian"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x43

    aput-object v7, v3, v8

    const-string v7, "lydi"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Lydian"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x44

    aput-object v7, v3, v8

    const-string v7, "mahj"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Mahajani"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x45

    aput-object v7, v3, v8

    const-string v7, "mlm2"

    const-string v8, "mlym"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Malayalam"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x46

    aput-object v7, v3, v8

    const-string v7, "mand"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Mandaic"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x47

    aput-object v7, v3, v8

    const-string v7, "mani"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Manichaean"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x48

    aput-object v7, v3, v8

    const-string v7, "marc"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Marchen"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x49

    aput-object v7, v3, v8

    const-string v7, "mtei"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Meetei_Mayek"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x4a

    aput-object v7, v3, v8

    const-string v7, "mend"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Mende_Kikakui"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x4b

    aput-object v7, v3, v8

    const-string v7, "merc"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Meroitic_Cursive"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x4c

    aput-object v7, v3, v8

    const-string v7, "mero"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Meroitic_Hieroglyphs"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x4d

    aput-object v7, v3, v8

    const-string v7, "plrd"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Miao"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x4e

    aput-object v7, v3, v8

    const-string v7, "modi"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Modi"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x4f

    aput-object v7, v3, v8

    const-string v7, "mong"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Mongolian"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x50

    aput-object v7, v3, v8

    const-string v7, "mroo"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Mro"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x51

    aput-object v7, v3, v8

    const-string v7, "mult"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Multani"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x52

    aput-object v7, v3, v8

    const-string v7, "mym2"

    const-string v8, "mymr"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Myanmar"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x53

    aput-object v7, v3, v8

    const-string v7, "nbat"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Nabataean"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x54

    aput-object v7, v3, v8

    const-string v7, "newa"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Newa"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x55

    aput-object v7, v3, v8

    const-string v7, "talu"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "New_Tai_Lue"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x56

    aput-object v7, v3, v8

    const-string v7, "nko "

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Nko"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x57

    aput-object v7, v3, v8

    const-string v7, "ogam"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Ogham"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x58

    aput-object v7, v3, v8

    const-string v7, "olck"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Ol_Chiki"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x59

    aput-object v7, v3, v8

    const-string v7, "ital"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Old_Italic"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x5a

    aput-object v7, v3, v8

    const-string v7, "hung"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Old_Hungarian"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x5b

    aput-object v7, v3, v8

    const-string v7, "narb"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Old_North_Arabian"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x5c

    aput-object v7, v3, v8

    const-string v7, "perm"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Old_Permic"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x5d

    aput-object v7, v3, v8

    const-string v7, "xpeo"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Old_Persian"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x5e

    aput-object v7, v3, v8

    const-string v7, "sarb"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Old_South_Arabian"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x5f

    aput-object v7, v3, v8

    const-string v7, "orkh"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Old_Turkic"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x60

    aput-object v7, v3, v8

    const-string v7, "ory2"

    const-string v8, "orya"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Oriya"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x61

    aput-object v7, v3, v8

    const-string v7, "osge"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Osage"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x62

    aput-object v7, v3, v8

    const-string v7, "osma"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Osmanya"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x63

    aput-object v7, v3, v8

    const-string v7, "hmng"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Pahawh_Hmong"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x64

    aput-object v7, v3, v8

    const-string v7, "palm"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Palmyrene"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x65

    aput-object v7, v3, v8

    const-string v7, "pauc"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Pau_Cin_Hau"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x66

    aput-object v7, v3, v8

    const-string v7, "phag"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Phags_Pa"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x67

    aput-object v7, v3, v8

    const-string v7, "phnx"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Phoenician"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x68

    aput-object v7, v3, v8

    const-string v7, "phlp"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Psalter_Pahlavi"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x69

    aput-object v7, v3, v8

    const-string v7, "rjng"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Rejang"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x6a

    aput-object v7, v3, v8

    const-string v7, "runr"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Runic"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x6b

    aput-object v7, v3, v8

    const-string v7, "samr"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Samaritan"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x6c

    aput-object v7, v3, v8

    const-string v7, "saur"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Saurashtra"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x6d

    aput-object v7, v3, v8

    const-string v7, "shrd"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Sharada"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x6e

    aput-object v7, v3, v8

    const-string v7, "shaw"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Shavian"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x6f

    aput-object v7, v3, v8

    const-string v7, "sidd"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Siddham"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x70

    aput-object v7, v3, v8

    const-string v7, "sgnw"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "SignWriting"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x71

    aput-object v7, v3, v8

    const-string v7, "sinh"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Sinhala"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x72

    aput-object v7, v3, v8

    const-string v7, "sora"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Sora_Sompeng"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x73

    aput-object v7, v3, v8

    const-string v7, "sund"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Sundanese"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x74

    aput-object v7, v3, v8

    const-string v7, "sylo"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Syloti_Nagri"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x75

    aput-object v7, v3, v8

    const-string v7, "syrc"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Syriac"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x76

    aput-object v7, v3, v8

    const-string v7, "tglg"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Tagalog"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x77

    aput-object v7, v3, v8

    const-string v7, "tagb"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Tagbanwa"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x78

    aput-object v7, v3, v8

    const-string v7, "tale"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Tai_Le"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x79

    aput-object v7, v3, v8

    const-string v7, "lana"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Tai_Tham"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x7a

    aput-object v7, v3, v8

    const-string v7, "tavt"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Tai_Viet"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x7b

    aput-object v7, v3, v8

    const-string v7, "takr"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Takri"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x7c

    aput-object v7, v3, v8

    const-string v7, "tml2"

    const-string v8, "taml"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Tamil"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x7d

    aput-object v7, v3, v8

    const-string v7, "tang"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Tangut"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x7e

    aput-object v7, v3, v8

    const-string v7, "tel2"

    const-string v8, "telu"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Telugu"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x7f

    aput-object v7, v3, v8

    const-string v7, "thaa"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Thaana"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x80

    aput-object v7, v3, v8

    const-string v7, "thai"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Thai"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x81

    aput-object v7, v3, v8

    const-string v7, "tibt"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Tibetan"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x82

    aput-object v7, v3, v8

    const-string v7, "tfng"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Tifinagh"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x83

    aput-object v7, v3, v8

    const-string v7, "tirh"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Tirhuta"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x84

    aput-object v7, v3, v8

    const-string v7, "ugar"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "Ugaritic"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x85

    aput-object v7, v3, v8

    const-string v7, "Unknown"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    filled-new-array {v7, v4}, [Ljava/lang/Object;

    move-result-object v4

    const/16 v7, 0x86

    aput-object v4, v3, v7

    const-string v4, "vai "

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v7, "Vai"

    filled-new-array {v7, v4}, [Ljava/lang/Object;

    move-result-object v4

    const/16 v7, 0x87

    aput-object v4, v3, v7

    const-string v4, "wara"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v7, "Warang_Citi"

    filled-new-array {v7, v4}, [Ljava/lang/Object;

    move-result-object v4

    const/16 v7, 0x88

    aput-object v4, v3, v7

    const-string v4, "yi  "

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v7, "Yi"

    filled-new-array {v7, v4}, [Ljava/lang/Object;

    move-result-object v4

    const/16 v7, 0x89

    aput-object v4, v3, v7

    .line 208
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v4, Lcom/tom_roush/fontbox/ttf/OpenTypeScript;->UNICODE_SCRIPT_TO_OPENTYPE_TAG_MAP:Ljava/util/Map;

    move v4, v5

    :goto_0
    if-ge v4, v2, :cond_0

    .line 209
    aget-object v7, v3, v4

    sget-object v8, Lcom/tom_roush/fontbox/ttf/OpenTypeScript;->UNICODE_SCRIPT_TO_OPENTYPE_TAG_MAP:Ljava/util/Map;

    .line 211
    aget-object v9, v7, v5

    check-cast v9, Ljava/lang/String;

    aget-object v7, v7, v6

    check-cast v7, [Ljava/lang/String;

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 224
    :try_start_0
    invoke-static {}, Lcom/tom_roush/pdfbox/android/PDFBoxResourceLoader;->isReady()Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "/com/tom_roush/fontbox/resources/unicode/Scripts.txt"

    if-eqz v3, :cond_1

    .line 226
    :try_start_1
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-static {v4}, Lcom/tom_roush/pdfbox/android/PDFBoxResourceLoader;->getStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_1
    move-object v2, v3

    goto :goto_2

    .line 230
    :cond_1
    new-instance v3, Ljava/io/BufferedInputStream;

    const-class v5, Lcom/tom_roush/fontbox/ttf/OpenTypeScript;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_1

    .line 232
    :goto_2
    invoke-static {v2}, Lcom/tom_roush/fontbox/ttf/OpenTypeScript;->parseScriptsFile(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    :goto_3
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 249
    :catch_0
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catchall_0
    move-exception v3

    goto :goto_5

    :catch_1
    move-exception v3

    .line 236
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not parse Scripts.txt, mirroring char map will be empty: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 237
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 236
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    :goto_4
    return-void

    :goto_5
    if-eqz v2, :cond_3

    .line 245
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    .line 249
    :catch_2
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_3
    :goto_6
    throw v3
.end method

.method private constructor <init>()V
    .locals 0

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensureValidCodePoint(I)V
    .locals 3

    if-ltz p0, :cond_0

    const v0, 0x10ffff

    if-gt p0, v0, :cond_0

    return-void

    .line 381
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid codepoint: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getScriptTags(I)[Ljava/lang/String;
    .locals 1

    .line 372
    invoke-static {p0}, Lcom/tom_roush/fontbox/ttf/OpenTypeScript;->ensureValidCodePoint(I)V

    .line 373
    invoke-static {p0}, Lcom/tom_roush/fontbox/ttf/OpenTypeScript;->getUnicodeScript(I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/tom_roush/fontbox/ttf/OpenTypeScript;->UNICODE_SCRIPT_TO_OPENTYPE_TAG_MAP:Ljava/util/Map;

    .line 374
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static getUnicodeScript(I)Ljava/lang/String;
    .locals 1

    .line 345
    invoke-static {p0}, Lcom/tom_roush/fontbox/ttf/OpenTypeScript;->ensureValidCodePoint(I)V

    .line 346
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Unknown"

    return-object p0

    :cond_0
    sget-object v0, Lcom/tom_roush/fontbox/ttf/OpenTypeScript;->unicodeRangeStarts:[I

    .line 351
    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p0

    if-gez p0, :cond_1

    neg-int p0, p0

    add-int/lit8 p0, p0, -0x2

    :cond_1
    sget-object v0, Lcom/tom_roush/fontbox/ttf/OpenTypeScript;->unicodeRangeScripts:[Ljava/lang/String;

    .line 356
    aget-object p0, v0, p0

    return-object p0
.end method

.method private static parseScriptsFile(Ljava/io/InputStream;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lcom/tom_roush/fontbox/ttf/OpenTypeScript$1;

    invoke-direct {v1}, Lcom/tom_roush/fontbox/ttf/OpenTypeScript$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 269
    new-instance v1, Ljava/io/LineNumberReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    const/high16 p0, -0x80000000

    filled-new-array {p0, p0}, [I

    move-result-object p0

    const/4 v2, 0x0

    .line 274
    :goto_0
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_1

    .line 324
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->close()V

    .line 326
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p0

    new-array p0, p0, [I

    sput-object p0, Lcom/tom_roush/fontbox/ttf/OpenTypeScript;->unicodeRangeStarts:[I

    .line 327
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    sput-object p0, Lcom/tom_roush/fontbox/ttf/OpenTypeScript;->unicodeRangeScripts:[Ljava/lang/String;

    .line 329
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v0, v5

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    sget-object v2, Lcom/tom_roush/fontbox/ttf/OpenTypeScript;->unicodeRangeStarts:[I

    .line 331
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    aget v3, v3, v5

    aput v3, v2, v0

    sget-object v2, Lcom/tom_roush/fontbox/ttf/OpenTypeScript;->unicodeRangeScripts:[Ljava/lang/String;

    .line 332
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v2, v0

    add-int/2addr v0, v4

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    const/16 v6, 0x23

    .line 281
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 284
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 287
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v8, 0x2

    if-ge v6, v8, :cond_3

    goto :goto_0

    .line 292
    :cond_3
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v9, ";"

    invoke-direct {v6, v3, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    if-ge v3, v8, :cond_4

    goto :goto_0

    .line 298
    :cond_4
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 299
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    new-array v8, v8, [I

    const-string v9, ".."

    .line 301
    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/16 v10, 0x10

    if-ne v9, v7, :cond_5

    .line 304
    invoke-static {v3, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v8, v4

    aput v3, v8, v5

    goto :goto_2

    .line 308
    :cond_5
    invoke-virtual {v3, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    aput v7, v8, v5

    add-int/lit8 v9, v9, 0x2

    .line 309
    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v8, v4

    :goto_2
    aget v3, v8, v5

    .line 311
    aget v5, p0, v4

    add-int/2addr v5, v4

    if-ne v3, v5, :cond_6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    aget v3, v8, v4

    .line 314
    aput v3, p0, v4

    goto/16 :goto_0

    .line 318
    :cond_6
    invoke-interface {v0, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v6

    move-object p0, v8

    goto/16 :goto_0
.end method

.class Lcom/facebook/hermes/intl/UnicodeExtensionKeys$6;
.super Ljava/util/HashMap;
.source "UnicodeExtensionKeys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/hermes/intl/UnicodeExtensionKeys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 67

    move-object/from16 v0, p0

    .line 127
    invoke-direct/range {p0 .. p0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "adlm"

    const-string v2, "ahom"

    const-string v3, "arab"

    const-string v4, "arabext"

    const-string v5, "bali"

    const-string v6, "beng"

    const-string v7, "bhks"

    const-string v8, "brah"

    const-string v9, "cakm"

    const-string v10, "cham"

    const-string v11, "deva"

    const-string v12, "diak"

    const-string v13, "fullwide"

    const-string v14, "gong"

    const-string v15, "gonm"

    const-string v16, "gujr"

    const-string v17, "guru"

    const-string v18, "hanidec"

    const-string v19, "hmng"

    const-string v20, "hmnp"

    const-string v21, "java"

    const-string v22, "kali"

    const-string v23, "khmr"

    const-string v24, "knda"

    const-string v25, "lana"

    const-string v26, "lanatham"

    const-string v27, "laoo"

    const-string v28, "latn"

    const-string v29, "lepc"

    const-string v30, "limb"

    const-string v31, "mathbold"

    const-string v32, "mathdbl"

    const-string v33, "mathmono"

    const-string v34, "mathsanb"

    const-string v35, "mathsans"

    const-string v36, "mlym"

    const-string v37, "modi"

    const-string v38, "mong"

    const-string v39, "mroo"

    const-string v40, "mtei"

    const-string v41, "mymr"

    const-string v42, "mymrshan"

    const-string v43, "mymrtlng"

    const-string v44, "newa"

    const-string v45, "nkoo"

    const-string v46, "olck"

    const-string v47, "orya"

    const-string v48, "osma"

    const-string v49, "rohg"

    const-string v50, "saur"

    const-string v51, "segment"

    const-string v52, "shrd"

    const-string v53, "sind"

    const-string v54, "sinh"

    const-string v55, "sora"

    const-string v56, "sund"

    const-string/jumbo v57, "takr"

    const-string/jumbo v58, "talu"

    const-string/jumbo v59, "tamldec"

    const-string/jumbo v60, "telu"

    const-string/jumbo v61, "thai"

    const-string/jumbo v62, "tibt"

    const-string/jumbo v63, "tirh"

    const-string/jumbo v64, "vaii"

    const-string/jumbo v65, "wara"

    const-string/jumbo v66, "wcho"

    .line 132
    filled-new-array/range {v1 .. v66}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "nu"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/hermes/intl/UnicodeExtensionKeys$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "big5han"

    const-string v4, "compat"

    const-string v5, "dict"

    const-string v6, "direct"

    const-string v7, "ducet"

    const-string v8, "emoji"

    const-string v9, "eor"

    const-string v10, "gb2312"

    const-string v11, "phonebk"

    const-string v12, "phonetic"

    const-string v13, "pinyin"

    const-string v14, "reformed"

    const-string v15, "searchjl"

    const-string v16, "stroke"

    const-string/jumbo v17, "trad"

    const-string/jumbo v18, "unihan"

    const-string/jumbo v19, "zhuyin"

    .line 208
    filled-new-array/range {v3 .. v19}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "co"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/hermes/intl/UnicodeExtensionKeys$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "buddhist"

    const-string v4, "chinese"

    const-string v5, "coptic"

    const-string v6, "dangi"

    const-string v7, "ethioaa"

    const-string v8, "ethiopic"

    const-string v9, "gregory"

    const-string v10, "hebrew"

    const-string v11, "indian"

    const-string v12, "islamic"

    const-string v13, "islamic-umalqura"

    const-string v14, "islamic-tbla"

    const-string v15, "islamic-civil"

    const-string v16, "islamic-rgsa"

    const-string v17, "iso8601"

    const-string v18, "japanese"

    const-string v19, "persian"

    const-string v20, "roc"

    .line 230
    filled-new-array/range {v3 .. v20}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "ca"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/hermes/intl/UnicodeExtensionKeys$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

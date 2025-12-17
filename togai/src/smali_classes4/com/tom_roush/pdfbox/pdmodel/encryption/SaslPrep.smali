.class Lcom/tom_roush/pdfbox/pdmodel/encryption/SaslPrep;
.super Ljava/lang/Object;
.source "SaslPrep.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static asciiControl(C)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x1f

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x7f

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static changeDisplayProperties(I)Z
    .locals 1

    const/16 v0, 0x340

    if-eq p0, v0, :cond_1

    const/16 v0, 0x341

    if-eq p0, v0, :cond_1

    const/16 v0, 0x200e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x200f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x202a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x202b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x202c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x202d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x202e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x206a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x206b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x206c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x206d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x206e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x206f

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static inappropriateForCanonical(I)Z
    .locals 1

    const/16 v0, 0x2ff0

    if-gt v0, p0, :cond_0

    const/16 v0, 0x2ffb

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static inappropriateForPlainText(I)Z
    .locals 1

    const v0, 0xfff9

    if-eq p0, v0, :cond_1

    const v0, 0xfffa

    if-eq p0, v0, :cond_1

    const v0, 0xfffb

    if-eq p0, v0, :cond_1

    const v0, 0xfffc

    if-eq p0, v0, :cond_1

    const v0, 0xfffd

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static mappedToNothing(C)Z
    .locals 1

    const/16 v0, 0xad

    if-eq p0, v0, :cond_2

    const/16 v0, 0x34f

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1806

    if-eq p0, v0, :cond_2

    const/16 v0, 0x180b

    if-eq p0, v0, :cond_2

    const/16 v0, 0x180c

    if-eq p0, v0, :cond_2

    const/16 v0, 0x180d

    if-eq p0, v0, :cond_2

    const/16 v0, 0x200b

    if-eq p0, v0, :cond_2

    const/16 v0, 0x200c

    if-eq p0, v0, :cond_2

    const/16 v0, 0x200d

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2060

    if-eq p0, v0, :cond_2

    const v0, 0xfe00

    if-gt v0, p0, :cond_0

    const v0, 0xfe0f

    if-le p0, v0, :cond_2

    :cond_0
    const v0, 0xfeff

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static nonAsciiControl(I)Z
    .locals 1

    const/16 v0, 0x80

    if-gt v0, p0, :cond_0

    const/16 v0, 0x9f

    if-le p0, v0, :cond_4

    :cond_0
    const/16 v0, 0x6dd

    if-eq p0, v0, :cond_4

    const/16 v0, 0x70f

    if-eq p0, v0, :cond_4

    const/16 v0, 0x180e

    if-eq p0, v0, :cond_4

    const/16 v0, 0x200c

    if-eq p0, v0, :cond_4

    const/16 v0, 0x200d

    if-eq p0, v0, :cond_4

    const/16 v0, 0x2028

    if-eq p0, v0, :cond_4

    const/16 v0, 0x2029

    if-eq p0, v0, :cond_4

    const/16 v0, 0x2060

    if-eq p0, v0, :cond_4

    const/16 v0, 0x2061

    if-eq p0, v0, :cond_4

    const/16 v0, 0x2062

    if-eq p0, v0, :cond_4

    const/16 v0, 0x2063

    if-eq p0, v0, :cond_4

    const/16 v0, 0x206a

    if-gt v0, p0, :cond_1

    const/16 v0, 0x206f

    if-le p0, v0, :cond_4

    :cond_1
    const v0, 0xfeff

    if-eq p0, v0, :cond_4

    const v0, 0xfff9

    if-gt v0, p0, :cond_2

    const v0, 0xfffc

    if-le p0, v0, :cond_4

    :cond_2
    const v0, 0x1d173

    if-gt v0, p0, :cond_3

    const v0, 0x1d17a

    if-gt p0, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static nonAsciiSpace(C)Z
    .locals 1

    const/16 v0, 0xa0

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1680

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2000

    if-gt v0, p0, :cond_0

    const/16 v0, 0x200b

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x202f

    if-eq p0, v0, :cond_2

    const/16 v0, 0x205f

    if-eq p0, v0, :cond_2

    const/16 v0, 0x3000

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static nonCharacterCodePoint(I)Z
    .locals 1

    const v0, 0xfdd0

    if-gt v0, p0, :cond_0

    const v0, 0xfdef

    if-le p0, v0, :cond_11

    :cond_0
    const v0, 0xfffe

    if-gt v0, p0, :cond_1

    const v0, 0xffff

    if-le p0, v0, :cond_11

    :cond_1
    const v0, 0x1fffe

    if-gt v0, p0, :cond_2

    const v0, 0x1ffff

    if-le p0, v0, :cond_11

    :cond_2
    const v0, 0x2fffe

    if-gt v0, p0, :cond_3

    const v0, 0x2ffff

    if-le p0, v0, :cond_11

    :cond_3
    const v0, 0x3fffe

    if-gt v0, p0, :cond_4

    const v0, 0x3ffff

    if-le p0, v0, :cond_11

    :cond_4
    const v0, 0x4fffe

    if-gt v0, p0, :cond_5

    const v0, 0x4ffff

    if-le p0, v0, :cond_11

    :cond_5
    const v0, 0x5fffe

    if-gt v0, p0, :cond_6

    const v0, 0x5ffff

    if-le p0, v0, :cond_11

    :cond_6
    const v0, 0x6fffe

    if-gt v0, p0, :cond_7

    const v0, 0x6ffff

    if-le p0, v0, :cond_11

    :cond_7
    const v0, 0x7fffe

    if-gt v0, p0, :cond_8

    const v0, 0x7ffff

    if-le p0, v0, :cond_11

    :cond_8
    const v0, 0x8fffe

    if-gt v0, p0, :cond_9

    const v0, 0x8ffff

    if-le p0, v0, :cond_11

    :cond_9
    const v0, 0x9fffe

    if-gt v0, p0, :cond_a

    const v0, 0x9ffff

    if-le p0, v0, :cond_11

    :cond_a
    const v0, 0xafffe

    if-gt v0, p0, :cond_b

    const v0, 0xaffff

    if-le p0, v0, :cond_11

    :cond_b
    const v0, 0xbfffe

    if-gt v0, p0, :cond_c

    const v0, 0xbffff

    if-le p0, v0, :cond_11

    :cond_c
    const v0, 0xcfffe

    if-gt v0, p0, :cond_d

    const v0, 0xcffff

    if-le p0, v0, :cond_11

    :cond_d
    const v0, 0xdfffe

    if-gt v0, p0, :cond_e

    const v0, 0xdffff

    if-le p0, v0, :cond_11

    :cond_e
    const v0, 0xefffe

    if-gt v0, p0, :cond_f

    const v0, 0xeffff

    if-le p0, v0, :cond_11

    :cond_f
    const v0, 0xffffe

    if-gt v0, p0, :cond_10

    const v0, 0xfffff

    if-le p0, v0, :cond_11

    :cond_10
    const v0, 0x10fffe

    if-gt v0, p0, :cond_12

    const v0, 0x10ffff

    if-gt p0, v0, :cond_12

    :cond_11
    const/4 p0, 0x1

    goto :goto_0

    :cond_12
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static privateUse(I)Z
    .locals 1

    const v0, 0xe000

    if-gt v0, p0, :cond_0

    const v0, 0xf8ff

    if-le p0, v0, :cond_2

    :cond_0
    const/high16 v0, 0xf0000

    if-gt v0, p0, :cond_1

    const v0, 0xffffd

    if-le p0, v0, :cond_2

    :cond_1
    const/high16 v0, 0x100000

    if-gt v0, p0, :cond_3

    const v0, 0x10fffd

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static prohibited(I)Z
    .locals 2

    int-to-char v0, p0

    .line 145
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SaslPrep;->nonAsciiSpace(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SaslPrep;->asciiControl(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    invoke-static {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SaslPrep;->nonAsciiControl(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    invoke-static {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SaslPrep;->privateUse(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    invoke-static {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SaslPrep;->nonCharacterCodePoint(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    invoke-static {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SaslPrep;->surrogateCodePoint(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    invoke-static {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SaslPrep;->inappropriateForPlainText(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    invoke-static {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SaslPrep;->inappropriateForCanonical(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    invoke-static {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SaslPrep;->changeDisplayProperties(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    invoke-static {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SaslPrep;->tagging(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static saslPrep(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9

    .line 70
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 74
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 76
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 77
    invoke-static {v3}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SaslPrep;->nonAsciiSpace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x20

    .line 79
    aput-char v3, v0, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    move v3, v2

    .line 84
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 86
    aget-char v4, v0, v2

    .line 87
    invoke-static {v4}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SaslPrep;->mappedToNothing(C)Z

    move-result v5

    if-nez v5, :cond_2

    add-int/lit8 v5, v3, 0x1

    .line 89
    aput-char v4, v0, v3

    move v3, v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 94
    :cond_3
    invoke-static {v0, v1, v3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object p0

    sget-object v0, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    invoke-static {p0, v0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p0

    move v0, v1

    move v2, v0

    move v3, v2

    move v4, v3

    .line 100
    :cond_4
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_d

    .line 102
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    .line 104
    invoke-static {v5}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SaslPrep;->prohibited(I)Z

    move-result v6

    if-nez v6, :cond_c

    .line 111
    invoke-static {v5}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_5

    goto :goto_3

    :cond_5
    move v8, v1

    goto :goto_4

    :cond_6
    :goto_3
    move v8, v7

    :goto_4
    or-int/2addr v2, v8

    if-nez v6, :cond_7

    move v6, v7

    goto :goto_5

    :cond_7
    move v6, v1

    :goto_5
    or-int/2addr v3, v6

    if-nez v0, :cond_8

    if-eqz v8, :cond_8

    goto :goto_6

    :cond_8
    move v7, v1

    :goto_6
    or-int/2addr v4, v7

    if-nez p1, :cond_a

    .line 118
    invoke-static {v5}, Ljava/lang/Character;->isDefined(I)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_7

    .line 120
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Character at position "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is unassigned"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 123
    :cond_a
    :goto_7
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v0, v5

    if-eqz v4, :cond_4

    .line 125
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v0, v5, :cond_4

    if-eqz v8, :cond_b

    goto :goto_2

    .line 127
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "First character is RandALCat, but last character is not"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 106
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Prohibited character "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " at position "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    if-eqz v2, :cond_f

    if-nez v3, :cond_e

    goto :goto_8

    .line 132
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Contains both RandALCat characters and LCat characters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    :goto_8
    return-object p0
.end method

.method static saslPrepQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 47
    invoke-static {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SaslPrep;->saslPrep(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static saslPrepStored(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-static {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SaslPrep;->saslPrep(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static surrogateCodePoint(I)Z
    .locals 1

    const v0, 0xd800

    if-gt v0, p0, :cond_0

    const v0, 0xdfff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static tagging(I)Z
    .locals 1

    const v0, 0xe0001

    if-eq p0, v0, :cond_1

    const v0, 0xe0020

    if-gt v0, p0, :cond_0

    const v0, 0xe007f

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

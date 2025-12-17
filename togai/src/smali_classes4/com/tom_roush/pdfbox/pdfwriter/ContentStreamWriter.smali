.class public Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;
.super Ljava/lang/Object;
.source "ContentStreamWriter.java"


# static fields
.field public static final EOL:[B

.field public static final SPACE:[B


# instance fields
.field private final output:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/16 v2, 0x20

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    sput-object v1, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->SPACE:[B

    new-array v0, v0, [B

    const/16 v1, 0xa

    aput-byte v1, v0, v3

    sput-object v0, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->EOL:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->output:Ljava/io/OutputStream;

    return-void
.end method

.method private writeObject(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSString;

    if-eqz v0, :cond_0

    .line 119
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSString;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->output:Ljava/io/OutputStream;

    invoke-static {p1, v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->writeString(Lcom/tom_roush/pdfbox/cos/COSString;Ljava/io/OutputStream;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->output:Ljava/io/OutputStream;

    sget-object v0, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->SPACE:[B

    .line 120
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_3

    .line 122
    :cond_0
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    if-eqz v0, :cond_1

    .line 124
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->output:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSFloat;->writePDF(Ljava/io/OutputStream;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->output:Ljava/io/OutputStream;

    sget-object v0, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->SPACE:[B

    .line 125
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_3

    .line 127
    :cond_1
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSInteger;

    if-eqz v0, :cond_2

    .line 129
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSInteger;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->output:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSInteger;->writePDF(Ljava/io/OutputStream;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->output:Ljava/io/OutputStream;

    sget-object v0, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->SPACE:[B

    .line 130
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_3

    .line 132
    :cond_2
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSBoolean;

    if-eqz v0, :cond_3

    .line 134
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSBoolean;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->output:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSBoolean;->writePDF(Ljava/io/OutputStream;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->output:Ljava/io/OutputStream;

    sget-object v0, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->SPACE:[B

    .line 135
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_3

    .line 137
    :cond_3
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSName;

    if-eqz v0, :cond_4

    .line 139
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSName;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->output:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSName;->writePDF(Ljava/io/OutputStream;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->output:Ljava/io/OutputStream;

    sget-object v0, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->SPACE:[B

    .line 140
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_3

    .line 142
    :cond_4
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_6

    .line 144
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSArray;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->output:Ljava/io/OutputStream;

    .line 145
    sget-object v1, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->ARRAY_OPEN:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, 0x0

    .line 146
    :goto_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 148
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->output:Ljava/io/OutputStream;

    .line 150
    sget-object v0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->ARRAY_CLOSE:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->output:Ljava/io/OutputStream;

    sget-object v0, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->SPACE:[B

    .line 151
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_3

    .line 153
    :cond_6
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_9

    .line 155
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->output:Ljava/io/OutputStream;

    .line 156
    sget-object v1, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->DICT_OPEN:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 157
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 159
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 161
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->writeObject(Ljava/lang/Object;)V

    .line 162
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->writeObject(Ljava/lang/Object;)V

    goto :goto_1

    :cond_8
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->output:Ljava/io/OutputStream;

    .line 165
    sget-object v0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->DICT_CLOSE:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->output:Ljava/io/OutputStream;

    sget-object v0, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->SPACE:[B

    .line 166
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_3

    .line 168
    :cond_9
    instance-of v0, p1, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;

    if-eqz v0, :cond_c

    .line 170
    check-cast p1, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;

    .line 171
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->output:Ljava/io/OutputStream;

    .line 173
    sget-object v2, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->output:Ljava/io/OutputStream;

    sget-object v1, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->EOL:[B

    .line 174
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 175
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;->getImageParameters()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSName;

    .line 178
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    iget-object v4, p0, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->output:Ljava/io/OutputStream;

    .line 179
    invoke-virtual {v2, v4}, Lcom/tom_roush/pdfbox/cos/COSName;->writePDF(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->output:Ljava/io/OutputStream;

    sget-object v4, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->SPACE:[B

    .line 180
    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    .line 181
    invoke-direct {p0, v3}, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->writeObject(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->output:Ljava/io/OutputStream;

    sget-object v3, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->EOL:[B

    .line 182
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->output:Ljava/io/OutputStream;

    const-string v1, "ID"

    .line 184
    sget-object v2, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->output:Ljava/io/OutputStream;

    sget-object v1, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->EOL:[B

    .line 185
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->output:Ljava/io/OutputStream;

    .line 186
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;->getImageData()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->output:Ljava/io/OutputStream;

    .line 187
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->output:Ljava/io/OutputStream;

    const-string v0, "EI"

    .line 188
    sget-object v2, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->output:Ljava/io/OutputStream;

    .line 189
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->output:Ljava/io/OutputStream;

    .line 193
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->output:Ljava/io/OutputStream;

    sget-object v0, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->EOL:[B

    .line 194
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_3

    .line 197
    :cond_c
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSNull;

    if-eqz v0, :cond_d

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->output:Ljava/io/OutputStream;

    const-string v0, "null"

    .line 199
    sget-object v1, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->output:Ljava/io/OutputStream;

    sget-object v0, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->SPACE:[B

    .line 200
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :goto_3
    return-void

    .line 204
    :cond_d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error:Unknown type in content stream:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public writeToken(Lcom/tom_roush/pdfbox/contentstream/operator/Operator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

.method public writeToken(Lcom/tom_roush/pdfbox/cos/COSBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

.method public writeTokens(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 111
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs writeTokens([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 96
    invoke-direct {p0, v2}, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->output:Ljava/io/OutputStream;

    const-string v0, "\n"

    .line 98
    sget-object v1, Lcom/tom_roush/pdfbox/util/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.class public Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer$Std;
.super Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;
.source "FromStringDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Std"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field protected static final LOCALE_EXT_MARKER:Ljava/lang/String; = "_#"

.field public static final STD_CHARSET:I = 0x9

.field public static final STD_CLASS:I = 0x4

.field public static final STD_CURRENCY:I = 0x6

.field public static final STD_FILE:I = 0x1

.field public static final STD_INET_ADDRESS:I = 0xb

.field public static final STD_INET_SOCKET_ADDRESS:I = 0xc

.field public static final STD_JAVA_TYPE:I = 0x5

.field public static final STD_LOCALE:I = 0x8

.field public static final STD_PATTERN:I = 0x7

.field public static final STD_TIME_ZONE:I = 0xa

.field public static final STD_URI:I = 0x3

.field public static final STD_URL:I = 0x2

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _kind:I


# direct methods
.method protected constructor <init>(Ljava/lang/Class;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    .line 307
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;-><init>(Ljava/lang/Class;)V

    iput p2, p0, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer$Std;->_kind:I

    return-void
.end method

.method private _deSerializeBCP47Locale(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/util/Locale;
    .locals 3

    const-string v0, ""

    if-lez p5, :cond_0

    if-le p5, p2, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 444
    :try_start_0
    invoke-virtual {p1, p2, p5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    add-int/lit8 p5, p5, 0x2

    .line 446
    invoke-virtual {p1, p5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x5f

    .line 448
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p5

    const/16 v1, 0x2d

    if-gez p5, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result p5

    if-gez p5, :cond_1

    .line 449
    new-instance p2, Ljava/util/Locale$Builder;

    invoke-direct {p2}, Ljava/util/Locale$Builder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object p2

    .line 450
    invoke-virtual {p2, p4}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/util/Locale$Builder;->setVariant(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/Locale$Builder;->setScript(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object p1

    return-object p1

    .line 452
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p5

    const/4 v2, 0x0

    if-gez p5, :cond_2

    .line 453
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    .line 454
    new-instance p5, Ljava/util/Locale$Builder;

    invoke-direct {p5}, Ljava/util/Locale$Builder;-><init>()V

    invoke-virtual {p5, p3}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object p5

    .line 455
    invoke-virtual {p5, p4}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object p5

    invoke-virtual {p5, v0}, Ljava/util/Locale$Builder;->setVariant(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object p5

    .line 456
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, v1, p1}, Ljava/util/Locale$Builder;->setExtension(CLjava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object p1

    .line 457
    invoke-virtual {p1}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object p1

    return-object p1

    .line 459
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    .line 460
    new-instance p5, Ljava/util/Locale$Builder;

    invoke-direct {p5}, Ljava/util/Locale$Builder;-><init>()V

    invoke-virtual {p5, p3}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object p5

    .line 461
    invoke-virtual {p5, p4}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object p5

    invoke-virtual {p5, v0}, Ljava/util/Locale$Builder;->setVariant(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object p5

    .line 462
    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/util/Locale$Builder;->setScript(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object p5

    add-int/lit8 v1, p2, 0x1

    .line 463
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 p2, p2, 0x3

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, v1, p1}, Ljava/util/Locale$Builder;->setExtension(CLjava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object p1

    .line 464
    invoke-virtual {p1}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/IllformedLocaleException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 467
    :catch_0
    new-instance p1, Ljava/util/Locale;

    invoke-direct {p1, p3, p4, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private _deserializeLocale(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Locale;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 416
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer$Std;->_firstHyphenOrUnderscore(Ljava/lang/String;)I

    move-result p2

    if-gez p2, :cond_0

    .line 418
    new-instance p2, Ljava/util/Locale;

    invoke-direct {p2, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object p2

    :cond_0
    const/4 v0, 0x0

    .line 420
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 p2, p2, 0x1

    .line 421
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 422
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer$Std;->_firstHyphenOrUnderscore(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_1

    .line 424
    new-instance p1, Ljava/util/Locale;

    invoke-direct {p1, v4, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 426
    :cond_1
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string p1, "_#"

    .line 428
    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_2

    .line 430
    new-instance p1, Ljava/util/Locale;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v4, v5, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_2
    move-object v1, p0

    .line 432
    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer$Std;->_deSerializeBCP47Locale(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/util/Locale;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected _deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer$Std;->_kind:I

    packed-switch v0, :pswitch_data_0

    .line 368
    invoke-static {}, Lcom/fasterxml/jackson/core/util/VersionUtil;->throwInternal()V

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    const-string v0, "["

    .line 345
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x3a

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/16 v0, 0x5d

    .line 348
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 355
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result p2

    if-le p2, v3, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 356
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v2

    .line 357
    :goto_0
    new-instance v1, Ljava/net/InetSocketAddress;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 350
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/exc/InvalidFormatException;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getParser()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p2

    const-string v1, "Bracketed IPv6 address must contain closing bracket"

    const-class v2, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p2, v1, p1, v2}, Lcom/fasterxml/jackson/databind/exc/InvalidFormatException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    throw v0

    .line 359
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-ltz p2, :cond_3

    add-int/lit8 v0, p2, 0x1

    .line 360
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-gez v1, :cond_3

    .line 362
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 363
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 366
    :cond_3
    new-instance p2, Ljava/net/InetSocketAddress;

    invoke-direct {p2, p1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    return-object p2

    .line 343
    :pswitch_1
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    return-object p1

    .line 341
    :pswitch_2
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    return-object p1

    .line 339
    :pswitch_3
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    return-object p1

    .line 337
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer$Std;->_deserializeLocale(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Locale;

    move-result-object p1

    return-object p1

    .line 335
    :pswitch_5
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    return-object p1

    .line 332
    :pswitch_6
    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p1

    return-object p1

    .line 329
    :pswitch_7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructFromCanonical(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    return-object p1

    .line 323
    :pswitch_8
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 325
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer$Std;->_valueClass:Ljava/lang/Class;

    .line 326
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 325
    invoke-virtual {p2, v1, p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleInstantiationProblem(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 320
    :pswitch_9
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    return-object p1

    .line 318
    :pswitch_a
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object p2

    .line 316
    :pswitch_b
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected _deserializeFromEmptyStringDefault(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer$Std;->getEmptyValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected _firstHyphenOrUnderscore(Ljava/lang/String;)I
    .locals 4

    .line 404
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 405
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5f

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method protected _shouldTrim()Z
    .locals 2

    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer$Std;->_kind:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getEmptyValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer$Std;->_kind:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 384
    invoke-super {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;->getEmptyValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 382
    :cond_0
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    return-object p1

    :cond_1
    const-string p1, ""

    .line 379
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    return-object p1
.end method

.class public Lcom/fasterxml/jackson/core/JsonPointer;
.super Ljava/lang/Object;
.source "JsonPointer.java"


# static fields
.field protected static final EMPTY:Lcom/fasterxml/jackson/core/JsonPointer;

.field public static final SEPARATOR:C = '/'


# instance fields
.field protected final _asString:Ljava/lang/String;

.field protected volatile _head:Lcom/fasterxml/jackson/core/JsonPointer;

.field protected final _matchingElementIndex:I

.field protected final _matchingPropertyName:Ljava/lang/String;

.field protected final _nextSegment:Lcom/fasterxml/jackson/core/JsonPointer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/fasterxml/jackson/core/JsonPointer;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/JsonPointer;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonPointer;->EMPTY:Lcom/fasterxml/jackson/core/JsonPointer;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_nextSegment:Lcom/fasterxml/jackson/core/JsonPointer;

    const-string v0, ""

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingPropertyName:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingElementIndex:I

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_asString:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonPointer;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_asString:Ljava/lang/String;

    iput-object p4, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_nextSegment:Lcom/fasterxml/jackson/core/JsonPointer;

    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingPropertyName:Ljava/lang/String;

    iput p3, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingElementIndex:I

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonPointer;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_asString:Ljava/lang/String;

    iput-object p3, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_nextSegment:Lcom/fasterxml/jackson/core/JsonPointer;

    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingPropertyName:Ljava/lang/String;

    .line 91
    invoke-static {p2}, Lcom/fasterxml/jackson/core/JsonPointer;->_parseIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingElementIndex:I

    return-void
.end method

.method private static _appendEscape(Ljava/lang/StringBuilder;C)V
    .locals 2

    const/16 v0, 0x30

    const/16 v1, 0x7e

    if-ne p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x31

    if-ne p1, v0, :cond_1

    const/16 p1, 0x2f

    goto :goto_0

    .line 584
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 586
    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static _appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 4

    .line 227
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 228
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_0

    const-string v2, "~1"

    .line 230
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/16 v3, 0x7e

    if-ne v2, v3, :cond_1

    const-string v2, "~0"

    .line 234
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 237
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static _fullPath(Lcom/fasterxml/jackson/core/JsonPointer;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x2f

    if-nez p0, :cond_0

    .line 212
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 213
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    invoke-static {p0, p1}, Lcom/fasterxml/jackson/core/JsonPointer;->_appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 217
    :cond_0
    iget-object p0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_asString:Ljava/lang/String;

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 219
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 220
    invoke-static {v1, p1}, Lcom/fasterxml/jackson/core/JsonPointer;->_appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 221
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final _parseIndex(Ljava/lang/String;)I
    .locals 7

    .line 470
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    const/16 v2, 0xa

    if-le v0, v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v3, 0x0

    .line 477
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x1

    const/16 v6, 0x30

    if-gt v4, v6, :cond_2

    if-ne v0, v5, :cond_1

    if-ne v4, v6, :cond_1

    move v1, v3

    :cond_1
    return v1

    :cond_2
    const/16 v3, 0x39

    if-le v4, v3, :cond_3

    return v1

    :cond_3
    :goto_0
    if-ge v5, v0, :cond_6

    .line 485
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-gt v4, v3, :cond_5

    if-ge v4, v6, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v1

    :cond_6
    if-ne v0, v2, :cond_7

    .line 491
    invoke-static {p0}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    cmp-long v0, v2, v4

    if-lez v0, :cond_7

    return v1

    .line 496
    :cond_7
    invoke-static {p0}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_8
    :goto_2
    return v1
.end method

.method protected static _parseQuotedTail(Ljava/lang/String;I)Lcom/fasterxml/jackson/core/JsonPointer;
    .locals 5

    .line 530
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 531
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x10

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x2

    if-le p1, v2, :cond_0

    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x1

    .line 533
    invoke-virtual {v1, p0, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, p1, 0x1

    .line 535
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {v1, p1}, Lcom/fasterxml/jackson/core/JsonPointer;->_appendEscape(Ljava/lang/StringBuilder;C)V

    :goto_0
    if-ge v2, v0, :cond_3

    .line 537
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v3, 0x2f

    if-ne p1, v3, :cond_1

    .line 539
    new-instance p1, Lcom/fasterxml/jackson/core/JsonPointer;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 540
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fasterxml/jackson/core/JsonPointer;->_parseTail(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonPointer;

    move-result-object v1

    invoke-direct {p1, p0, v0, v1}, Lcom/fasterxml/jackson/core/JsonPointer;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonPointer;)V

    return-object p1

    :cond_1
    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x7e

    if-ne p1, v4, :cond_2

    if-ge v3, v0, :cond_2

    add-int/lit8 v2, v2, 0x2

    .line 544
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {v1, p1}, Lcom/fasterxml/jackson/core/JsonPointer;->_appendEscape(Ljava/lang/StringBuilder;C)V

    goto :goto_0

    .line 547
    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v3

    goto :goto_0

    .line 550
    :cond_3
    new-instance p1, Lcom/fasterxml/jackson/core/JsonPointer;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonPointer;->EMPTY:Lcom/fasterxml/jackson/core/JsonPointer;

    invoke-direct {p1, p0, v0, v1}, Lcom/fasterxml/jackson/core/JsonPointer;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonPointer;)V

    return-object p1
.end method

.method protected static _parseTail(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonPointer;
    .locals 5

    .line 500
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    move v2, v1

    :cond_0
    if-ge v2, v0, :cond_2

    .line 504
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_1

    .line 506
    new-instance v0, Lcom/fasterxml/jackson/core/JsonPointer;

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 507
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fasterxml/jackson/core/JsonPointer;->_parseTail(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonPointer;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/fasterxml/jackson/core/JsonPointer;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonPointer;)V

    return-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    const/16 v4, 0x7e

    if-ne v3, v4, :cond_0

    if-ge v2, v0, :cond_0

    .line 512
    invoke-static {p0, v2}, Lcom/fasterxml/jackson/core/JsonPointer;->_parseQuotedTail(Ljava/lang/String;I)Lcom/fasterxml/jackson/core/JsonPointer;

    move-result-object p0

    return-object p0

    .line 517
    :cond_2
    new-instance v0, Lcom/fasterxml/jackson/core/JsonPointer;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonPointer;->EMPTY:Lcom/fasterxml/jackson/core/JsonPointer;

    invoke-direct {v0, p0, v1, v2}, Lcom/fasterxml/jackson/core/JsonPointer;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonPointer;)V

    return-object v0
.end method

.method public static compile(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonPointer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 124
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 128
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1

    .line 131
    invoke-static {p0}, Lcom/fasterxml/jackson/core/JsonPointer;->_parseTail(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonPointer;

    move-result-object p0

    return-object p0

    .line 129
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid input: JSON Pointer expression must start with \'/\': \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    sget-object p0, Lcom/fasterxml/jackson/core/JsonPointer;->EMPTY:Lcom/fasterxml/jackson/core/JsonPointer;

    return-object p0
.end method

.method public static empty()Lcom/fasterxml/jackson/core/JsonPointer;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/core/JsonPointer;->EMPTY:Lcom/fasterxml/jackson/core/JsonPointer;

    return-object v0
.end method

.method public static forPath(Lcom/fasterxml/jackson/core/JsonStreamContext;Z)Lcom/fasterxml/jackson/core/JsonPointer;
    .locals 5

    if-nez p0, :cond_0

    sget-object p0, Lcom/fasterxml/jackson/core/JsonPointer;->EMPTY:Lcom/fasterxml/jackson/core/JsonPointer;

    return-object p0

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->hasPathSegment()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 181
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->inRoot()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->hasCurrentIndex()Z

    move-result v0

    if-nez v0, :cond_2

    .line 182
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->getParent()Lcom/fasterxml/jackson/core/JsonStreamContext;

    move-result-object p0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_7

    .line 188
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->inObject()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 189
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, ""

    .line 193
    :cond_3
    new-instance v2, Lcom/fasterxml/jackson/core/JsonPointer;

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/core/JsonPointer;->_fullPath(Lcom/fasterxml/jackson/core/JsonPointer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Lcom/fasterxml/jackson/core/JsonPointer;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonPointer;)V

    move-object v0, v2

    goto :goto_1

    .line 194
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->inArray()Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz p1, :cond_6

    .line 195
    :cond_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->getCurrentIndex()I

    move-result v1

    .line 196
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 197
    new-instance v3, Lcom/fasterxml/jackson/core/JsonPointer;

    invoke-static {v0, v2}, Lcom/fasterxml/jackson/core/JsonPointer;->_fullPath(Lcom/fasterxml/jackson/core/JsonPointer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2, v1, v0}, Lcom/fasterxml/jackson/core/JsonPointer;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonPointer;)V

    move-object v0, v3

    .line 187
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->getParent()Lcom/fasterxml/jackson/core/JsonStreamContext;

    move-result-object p0

    goto :goto_0

    :cond_7
    if-nez v0, :cond_8

    sget-object p0, Lcom/fasterxml/jackson/core/JsonPointer;->EMPTY:Lcom/fasterxml/jackson/core/JsonPointer;

    return-object p0

    :cond_8
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonPointer;
    .locals 0

    .line 142
    invoke-static {p0}, Lcom/fasterxml/jackson/core/JsonPointer;->compile(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonPointer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected _constructHead()Lcom/fasterxml/jackson/core/JsonPointer;
    .locals 7

    .line 556
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonPointer;->last()Lcom/fasterxml/jackson/core/JsonPointer;

    move-result-object v0

    if-ne v0, p0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/core/JsonPointer;->EMPTY:Lcom/fasterxml/jackson/core/JsonPointer;

    return-object v0

    .line 561
    :cond_0
    iget-object v1, v0, Lcom/fasterxml/jackson/core/JsonPointer;->_asString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_nextSegment:Lcom/fasterxml/jackson/core/JsonPointer;

    .line 563
    new-instance v3, Lcom/fasterxml/jackson/core/JsonPointer;

    iget-object v4, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_asString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v1

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingPropertyName:Ljava/lang/String;

    iget v6, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingElementIndex:I

    .line 564
    invoke-virtual {v2, v1, v0}, Lcom/fasterxml/jackson/core/JsonPointer;->_constructHead(ILcom/fasterxml/jackson/core/JsonPointer;)Lcom/fasterxml/jackson/core/JsonPointer;

    move-result-object v0

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/fasterxml/jackson/core/JsonPointer;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonPointer;)V

    return-object v3
.end method

.method protected _constructHead(ILcom/fasterxml/jackson/core/JsonPointer;)Lcom/fasterxml/jackson/core/JsonPointer;
    .locals 5

    if-ne p0, p2, :cond_0

    sget-object p1, Lcom/fasterxml/jackson/core/JsonPointer;->EMPTY:Lcom/fasterxml/jackson/core/JsonPointer;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_nextSegment:Lcom/fasterxml/jackson/core/JsonPointer;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_asString:Ljava/lang/String;

    .line 574
    new-instance v2, Lcom/fasterxml/jackson/core/JsonPointer;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, p1

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingPropertyName:Ljava/lang/String;

    iget v4, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingElementIndex:I

    .line 575
    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonPointer;->_constructHead(ILcom/fasterxml/jackson/core/JsonPointer;)Lcom/fasterxml/jackson/core/JsonPointer;

    move-result-object p1

    invoke-direct {v2, v1, v3, v4, p1}, Lcom/fasterxml/jackson/core/JsonPointer;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonPointer;)V

    return-object v2
.end method

.method public append(Lcom/fasterxml/jackson/core/JsonPointer;)Lcom/fasterxml/jackson/core/JsonPointer;
    .locals 3

    sget-object v0, Lcom/fasterxml/jackson/core/JsonPointer;->EMPTY:Lcom/fasterxml/jackson/core/JsonPointer;

    if-ne p0, v0, :cond_0

    return-object p1

    :cond_0
    if-ne p1, v0, :cond_1

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_asString:Ljava/lang/String;

    const-string v1, "/"

    .line 330
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 332
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 334
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Lcom/fasterxml/jackson/core/JsonPointer;->_asString:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/fasterxml/jackson/core/JsonPointer;->compile(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonPointer;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 459
    :cond_1
    instance-of v1, p1, Lcom/fasterxml/jackson/core/JsonPointer;

    if-nez v1, :cond_2

    return v0

    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_asString:Ljava/lang/String;

    .line 460
    check-cast p1, Lcom/fasterxml/jackson/core/JsonPointer;

    iget-object p1, p1, Lcom/fasterxml/jackson/core/JsonPointer;->_asString:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getMatchingIndex()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingElementIndex:I

    return v0
.end method

.method public getMatchingProperty()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingPropertyName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_asString:Ljava/lang/String;

    .line 454
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public head()Lcom/fasterxml/jackson/core/JsonPointer;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_head:Lcom/fasterxml/jackson/core/JsonPointer;

    if-nez v0, :cond_1

    sget-object v1, Lcom/fasterxml/jackson/core/JsonPointer;->EMPTY:Lcom/fasterxml/jackson/core/JsonPointer;

    if-eq p0, v1, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonPointer;->_constructHead()Lcom/fasterxml/jackson/core/JsonPointer;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_head:Lcom/fasterxml/jackson/core/JsonPointer;

    :cond_1
    return-object v0
.end method

.method public last()Lcom/fasterxml/jackson/core/JsonPointer;
    .locals 3

    sget-object v0, Lcom/fasterxml/jackson/core/JsonPointer;->EMPTY:Lcom/fasterxml/jackson/core/JsonPointer;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    move-object v0, p0

    .line 297
    :goto_0
    iget-object v1, v0, Lcom/fasterxml/jackson/core/JsonPointer;->_nextSegment:Lcom/fasterxml/jackson/core/JsonPointer;

    sget-object v2, Lcom/fasterxml/jackson/core/JsonPointer;->EMPTY:Lcom/fasterxml/jackson/core/JsonPointer;

    if-eq v1, v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public matchElement(I)Lcom/fasterxml/jackson/core/JsonPointer;
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingElementIndex:I

    if-ne p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_nextSegment:Lcom/fasterxml/jackson/core/JsonPointer;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public matchProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonPointer;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_nextSegment:Lcom/fasterxml/jackson/core/JsonPointer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingPropertyName:Ljava/lang/String;

    .line 363
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_nextSegment:Lcom/fasterxml/jackson/core/JsonPointer;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public matches()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_nextSegment:Lcom/fasterxml/jackson/core/JsonPointer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public matchesElement(I)Z
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingElementIndex:I

    if-ne p1, v0, :cond_0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public matchesProperty(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_nextSegment:Lcom/fasterxml/jackson/core/JsonPointer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingPropertyName:Ljava/lang/String;

    .line 348
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public mayMatchElement()Z
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingElementIndex:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public mayMatchProperty()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingPropertyName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tail()Lcom/fasterxml/jackson/core/JsonPointer;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_nextSegment:Lcom/fasterxml/jackson/core/JsonPointer;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_asString:Ljava/lang/String;

    return-object v0
.end method

.class public Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;
.super Lcom/fasterxml/jackson/core/util/JsonGeneratorDelegate;
.source "FilteringGeneratorDelegate.java"


# instance fields
.field protected _allowMultipleMatches:Z

.field protected _filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

.field protected _inclusion:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

.field protected _itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

.field protected _matchCount:I

.field protected rootFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/core/filter/TokenFilter;Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/core/util/JsonGeneratorDelegate;-><init>(Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    iput-object p2, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->rootFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    iput-object p2, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 116
    invoke-static {p2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createRootContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iput-object p3, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_inclusion:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    iput-boolean p4, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_allowMultipleMatches:Z

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/core/filter/TokenFilter;ZZ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p3, :cond_0

    .line 97
    sget-object p3, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_ALL_AND_PATH:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->ONLY_INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;-><init>(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/core/filter/TokenFilter;Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;Z)V

    return-void
.end method


# virtual methods
.method protected _checkBinaryWrite()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1057
    :cond_0
    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    return v3

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 1060
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeBinary()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1061
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    return v3

    :cond_2
    return v1
.end method

.method protected _checkParentPath()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1006
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath(Z)V

    return-void
.end method

.method protected _checkParentPath(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_matchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_matchCount:I

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_inclusion:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    .line 1015
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_ALL_AND_PATH:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 1016
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->writePath(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_inclusion:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    .line 1017
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_NON_NULL:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 1019
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->ensureFieldNameWritten(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_allowMultipleMatches:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 1024
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->skipParentChecks()V

    :cond_3
    return-void
.end method

.method protected _checkPropertyParentPath()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_matchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_matchCount:I

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_inclusion:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    .line 1038
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_ALL_AND_PATH:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 1039
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->writePath(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_inclusion:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    .line 1040
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_NON_NULL:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 1042
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->ensureFieldNameWritten(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_allowMultipleMatches:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 1048
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->skipParentChecks()V

    :cond_2
    return-void
.end method

.method protected _checkRawValueWrite()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1072
    :cond_0
    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    return v3

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 1075
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeRawValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1076
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    return v3

    :cond_2
    return v1
.end method

.method public getFilter()Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->rootFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    return-object v0
.end method

.method public getFilterContext()Lcom/fasterxml/jackson/core/JsonStreamContext;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    return-object v0
.end method

.method public getMatchCount()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_matchCount:I

    return v0
.end method

.method public getOutputContext()Lcom/fasterxml/jackson/core/JsonStreamContext;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    return-object v0
.end method

.method public writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 644
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkBinaryWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 636
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkBinaryWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V

    :cond_0
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_0

    return-void

    .line 851
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 852
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 856
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_2

    .line 857
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeBoolean(Z)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 861
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    .line 863
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBoolean(Z)V

    return-void
.end method

.method public writeEndArray()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 294
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->closeArray(Lcom/fasterxml/jackson/core/JsonGenerator;)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->getFilter()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    :cond_0
    return-void
.end method

.method public writeEndObject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 402
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->closeObject(Lcom/fasterxml/jackson/core/JsonGenerator;)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->getFilter()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    :cond_0
    return-void
.end method

.method public writeFieldId(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 451
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->writeFieldName(Ljava/lang/String;)V

    return-void
.end method

.method public writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 431
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->setFieldName(Ljava/lang/String;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    return-void

    .line 436
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v1, :cond_1

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 438
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V

    return-void

    .line 441
    :cond_1
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 443
    sget-object v0, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne p1, v0, :cond_2

    .line 444
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkPropertyParentPath()V

    :cond_2
    return-void
.end method

.method public writeFieldName(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 411
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->setFieldName(Ljava/lang/String;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    return-void

    .line 416
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v1, :cond_1

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 418
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    return-void

    .line 421
    :cond_1
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 423
    sget-object v0, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne p1, v0, :cond_2

    .line 424
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkPropertyParentPath()V

    :cond_2
    return-void
.end method

.method public writeNull()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_0

    return-void

    .line 872
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 873
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 877
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_2

    .line 878
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeNull()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 882
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    .line 884
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNull()V

    return-void
.end method

.method public writeNumber(D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_0

    return-void

    .line 746
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 747
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 751
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_2

    .line 752
    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeNumber(D)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 756
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    .line 758
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(D)V

    return-void
.end method

.method public writeNumber(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_0

    return-void

    .line 767
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 768
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 772
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_2

    .line 773
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeNumber(F)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 777
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    .line 779
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(F)V

    return-void
.end method

.method public writeNumber(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_0

    return-void

    .line 683
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 684
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 688
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_2

    .line 689
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeNumber(I)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 693
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    .line 695
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(I)V

    return-void
.end method

.method public writeNumber(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_0

    return-void

    .line 704
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 705
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 709
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_2

    .line 710
    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeNumber(J)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 714
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    .line 716
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(J)V

    return-void
.end method

.method public writeNumber(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_0

    return-void

    .line 809
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 810
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 814
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_2

    .line 815
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeRawValue()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 819
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    .line 821
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(Ljava/lang/String;)V

    return-void
.end method

.method public writeNumber(Ljava/math/BigDecimal;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_0

    return-void

    .line 788
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 789
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 793
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_2

    .line 794
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeNumber(Ljava/math/BigDecimal;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 798
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    .line 800
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(Ljava/math/BigDecimal;)V

    return-void
.end method

.method public writeNumber(Ljava/math/BigInteger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_0

    return-void

    .line 725
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 726
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 730
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_2

    .line 731
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeNumber(Ljava/math/BigInteger;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 735
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    .line 737
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(Ljava/math/BigInteger;)V

    return-void
.end method

.method public writeNumber(S)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_0

    return-void

    .line 662
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 663
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 667
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_2

    .line 668
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeNumber(I)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 672
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    .line 674
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(S)V

    return-void
.end method

.method public writeNumber([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_0

    return-void

    .line 830
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 831
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 835
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_2

    .line 836
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeRawValue()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 840
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    .line 842
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber([CII)V

    return-void
.end method

.method public writeObjectId(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectId(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public writeObjectRef(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectRef(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public writeOmittedField(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeOmittedField(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public writeRaw(C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 604
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkRawValueWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(C)V

    :cond_0
    return-void
.end method

.method public writeRaw(Lcom/fasterxml/jackson/core/SerializableString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 588
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkRawValueWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(Lcom/fasterxml/jackson/core/SerializableString;)V

    :cond_0
    return-void
.end method

.method public writeRaw(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 572
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkRawValueWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public writeRaw(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 580
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkRawValueWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public writeRaw([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 596
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkRawValueWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw([CII)V

    :cond_0
    return-void
.end method

.method public writeRawUTF8String([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 549
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkRawValueWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRawUTF8String([BII)V

    :cond_0
    return-void
.end method

.method public writeRawValue(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 612
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkRawValueWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRawValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public writeRawValue(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 620
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkRawValueWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRawValue(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public writeRawValue([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 628
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkRawValueWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRawValue([CII)V

    :cond_0
    return-void
.end method

.method public writeStartArray()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 169
    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    return-void

    .line 172
    :cond_0
    sget-object v3, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v4, 0x1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 173
    invoke-virtual {v0, v1, v4}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 174
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v3, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 178
    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 180
    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    return-void

    .line 183
    :cond_2
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 184
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->filterStartArray()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 186
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v1, :cond_4

    .line 187
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 188
    invoke-virtual {v0, v1, v4}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 189
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_inclusion:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    .line 190
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_NON_NULL:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v0, v1, :cond_5

    .line 191
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath(Z)V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 192
    invoke-virtual {v0, v1, v4}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 193
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 195
    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    :goto_0
    return-void
.end method

.method public writeStartArray(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 204
    invoke-virtual {p1, v1, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    return-void

    .line 207
    :cond_0
    sget-object v3, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v4, 0x1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 208
    invoke-virtual {v0, v1, v4}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 209
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v3, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 212
    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 214
    invoke-virtual {p1, v1, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    return-void

    .line 217
    :cond_2
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 218
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->filterStartArray()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 220
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v1, :cond_4

    .line 221
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 222
    invoke-virtual {v0, v1, v4}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 223
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_inclusion:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    .line 224
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_NON_NULL:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v0, v1, :cond_5

    .line 225
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath(Z)V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 226
    invoke-virtual {v0, v1, v4}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 227
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray(I)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 229
    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    :goto_0
    return-void
.end method

.method public writeStartArray(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 237
    invoke-virtual {p1, v1, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    return-void

    .line 240
    :cond_0
    sget-object v3, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v4, 0x1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 241
    invoke-virtual {v0, v1, v4}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 242
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v3, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 245
    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 247
    invoke-virtual {p1, v1, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    return-void

    .line 250
    :cond_2
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 251
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->filterStartArray()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 253
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v1, :cond_4

    .line 254
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 255
    invoke-virtual {v0, v1, v4}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 256
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 258
    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    :goto_0
    return-void
.end method

.method public writeStartArray(Ljava/lang/Object;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 266
    invoke-virtual {p1, v1, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    return-void

    .line 269
    :cond_0
    sget-object v3, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v4, 0x1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 270
    invoke-virtual {v0, v1, v4}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 271
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray(Ljava/lang/Object;I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v3, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 274
    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 276
    invoke-virtual {p1, v1, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    return-void

    .line 279
    :cond_2
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 280
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->filterStartArray()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 282
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v1, :cond_4

    .line 283
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 284
    invoke-virtual {v0, v1, v4}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 285
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object p2, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 287
    invoke-virtual {p1, p2, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    :goto_0
    return-void
.end method

.method public writeStartObject()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 305
    invoke-virtual {v2, v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    return-void

    .line 308
    :cond_0
    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 309
    invoke-virtual {v0, v1, v3}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 310
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 314
    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 319
    :cond_2
    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v2, :cond_3

    .line 320
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->filterStartObject()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    .line 322
    :cond_3
    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v2, :cond_4

    .line 323
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 324
    invoke-virtual {v1, v0, v3}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 325
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_inclusion:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    .line 326
    sget-object v4, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_NON_NULL:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v2, v4, :cond_5

    .line 327
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath(Z)V

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 328
    invoke-virtual {v1, v0, v3}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 329
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 331
    invoke-virtual {v2, v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    :goto_0
    return-void
.end method

.method public writeStartObject(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 339
    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    return-void

    .line 342
    :cond_0
    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 343
    invoke-virtual {v0, v1, v3}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 344
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 348
    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 353
    :cond_2
    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v2, :cond_3

    .line 354
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->filterStartObject()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    .line 356
    :cond_3
    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v2, :cond_4

    .line 357
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 358
    invoke-virtual {v1, v0, v3}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 359
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_inclusion:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    .line 360
    sget-object v4, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_NON_NULL:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v2, v4, :cond_5

    .line 361
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath(Z)V

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 362
    invoke-virtual {v1, v0, v3}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 363
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 365
    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    :goto_0
    return-void
.end method

.method public writeStartObject(Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 373
    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    return-void

    .line 376
    :cond_0
    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 377
    invoke-virtual {v0, v1, v3}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 378
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject(Ljava/lang/Object;I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 382
    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 387
    :cond_2
    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v2, :cond_3

    .line 388
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->filterStartObject()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    .line 390
    :cond_3
    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v2, :cond_4

    .line 391
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 392
    invoke-virtual {v1, v0, v3}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 393
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 395
    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    :goto_0
    return-void
.end method

.method public writeString(Lcom/fasterxml/jackson/core/SerializableString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_0

    return-void

    .line 509
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 510
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 514
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_2

    .line 515
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 519
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    .line 521
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Lcom/fasterxml/jackson/core/SerializableString;)V

    return-void
.end method

.method public writeString(Ljava/io/Reader;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_0

    return-void

    .line 529
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 530
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 534
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_2

    .line 537
    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeString(Ljava/io/Reader;I)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 541
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    .line 543
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/io/Reader;I)V

    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_0

    return-void

    .line 466
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 467
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 471
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_2

    .line 472
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 476
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    .line 478
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeString([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_0

    return-void

    .line 487
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    .line 488
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_filterContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 489
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 493
    :cond_1
    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v1, v2, :cond_2

    .line 494
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 498
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkParentPath()V

    .line 500
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString([CII)V

    return-void
.end method

.method public writeTypeId(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeTypeId(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public writeUTF8String([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 558
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->_checkRawValueWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringGeneratorDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeUTF8String([BII)V

    :cond_0
    return-void
.end method

.class public Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;
.super Lcom/fasterxml/jackson/core/util/JsonParserDelegate;
.source "FilteringParserDelegate.java"


# instance fields
.field protected _allowMultipleMatches:Z

.field protected _currToken:Lcom/fasterxml/jackson/core/JsonToken;

.field protected _exposedContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

.field protected _headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

.field protected _inclusion:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

.field protected _itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

.field protected _lastClearedToken:Lcom/fasterxml/jackson/core/JsonToken;

.field protected _matchCount:I

.field protected rootFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/filter/TokenFilter;Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;Z)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;-><init>(Lcom/fasterxml/jackson/core/JsonParser;)V

    iput-object p2, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->rootFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    iput-object p2, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 124
    invoke-static {p2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createRootContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iput-object p3, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_inclusion:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    iput-boolean p4, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_allowMultipleMatches:Z

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/filter/TokenFilter;ZZ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p3, :cond_0

    .line 108
    sget-object p3, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_ALL_AND_PATH:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->ONLY_INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/filter/TokenFilter;Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;Z)V

    return-void
.end method

.method private _nextBuffered(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_exposedContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 787
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->nextTokenToRead()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_exposedContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 801
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->findChildOf(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_exposedContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    if-eqz p1, :cond_1

    .line 806
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->nextTokenToRead()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const-string p1, "Unexpected problem: chain of filtered context broken"

    .line 804
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p1

    throw p1

    :cond_2
    const-string p1, "Internal error: failed to locate expected buffered tokens"

    .line 794
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p1

    throw p1
.end method

.method private final _verifyAllowedMatches()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_matchCount:I

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_allowMultipleMatches:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_matchCount:I

    return v1
.end method


# virtual methods
.method protected _filterContext()Lcom/fasterxml/jackson/core/JsonStreamContext;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_exposedContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    return-object v0
.end method

.method protected final _nextToken2()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 481
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-nez v0, :cond_1

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 488
    :cond_1
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_13

    const/4 v4, 0x2

    if-eq v1, v4, :cond_11

    const/4 v4, 0x3

    if-eq v1, v4, :cond_a

    const/4 v2, 0x4

    if-eq v1, v2, :cond_11

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 623
    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v1, v2, :cond_2

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_2
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 627
    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    .line 628
    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    .line 629
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeValue(Lcom/fasterxml/jackson/core/JsonParser;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 630
    :cond_3
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_verifyAllowedMatches()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 582
    :cond_4
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 583
    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->setFieldName(Ljava/lang/String;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v2

    .line 584
    sget-object v3, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v2, v3, :cond_5

    iput-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_5
    if-nez v2, :cond_6

    .line 589
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 590
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_0

    .line 593
    :cond_6
    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    if-nez v1, :cond_7

    .line 595
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 596
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_0

    :cond_7
    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 600
    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v1, v2, :cond_9

    .line 601
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_verifyAllowedMatches()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_inclusion:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    .line 602
    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_ALL_AND_PATH:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v1, v2, :cond_0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 606
    :cond_8
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 607
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_inclusion:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    .line 611
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->ONLY_INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 612
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_nextTokenWithBuffering(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_a
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 491
    sget-object v4, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v1, v4, :cond_b

    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 492
    invoke-virtual {v2, v1, v3}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_b
    if-nez v1, :cond_c

    .line 496
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_0

    :cond_c
    iget-object v4, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 500
    invoke-virtual {v4, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    if-nez v1, :cond_d

    .line 502
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_0

    .line 505
    :cond_d
    sget-object v4, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v1, v4, :cond_e

    .line 506
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->filterStartArray()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    :cond_e
    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 509
    sget-object v4, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v1, v4, :cond_f

    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 510
    invoke-virtual {v2, v1, v3}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_f
    if-eqz v1, :cond_10

    iget-object v4, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_inclusion:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    .line 512
    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_NON_NULL:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v4, v5, :cond_10

    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 513
    invoke-virtual {v2, v1, v3}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 516
    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_inclusion:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    .line 518
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_ALL_AND_PATH:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 519
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_nextTokenWithBuffering(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_11
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 567
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->isStartHandled()Z

    move-result v1

    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 568
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->getFilter()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 569
    sget-object v3, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v2, v3, :cond_12

    .line 570
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->filterFinishArray()V

    :cond_12
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 572
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->getParent()Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 573
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->getFilter()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_13
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 529
    sget-object v4, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v1, v4, :cond_14

    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 530
    invoke-virtual {v2, v1, v3}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_14
    if-nez v1, :cond_15

    .line 534
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_0

    :cond_15
    iget-object v4, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 538
    invoke-virtual {v4, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    if-nez v1, :cond_16

    .line 540
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_0

    .line 543
    :cond_16
    sget-object v4, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v1, v4, :cond_17

    .line 544
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->filterStartObject()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    :cond_17
    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 547
    sget-object v4, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v1, v4, :cond_18

    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 548
    invoke-virtual {v2, v1, v3}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_18
    if-eqz v1, :cond_19

    iget-object v4, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_inclusion:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    .line 550
    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_NON_NULL:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v4, v5, :cond_19

    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 551
    invoke-virtual {v2, v1, v3}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_19
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 554
    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_inclusion:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    .line 555
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_ALL_AND_PATH:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 556
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_nextTokenWithBuffering(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method protected final _nextTokenWithBuffering(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 647
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v0

    .line 657
    :cond_1
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_11

    const/4 v4, 0x2

    if-eq v1, v4, :cond_e

    const/4 v4, 0x3

    if-eq v1, v4, :cond_9

    const/4 v4, 0x4

    if-eq v1, v4, :cond_e

    const/4 v0, 0x5

    if-eq v1, v0, :cond_4

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 765
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v1, :cond_2

    .line 766
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_nextBuffered(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 769
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    .line 770
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    .line 771
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeValue(Lcom/fasterxml/jackson/core/JsonParser;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 772
    :cond_3
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_verifyAllowedMatches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_nextBuffered(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 733
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 734
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->setFieldName(Ljava/lang/String;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    .line 735
    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v1, v2, :cond_5

    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 737
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_nextBuffered(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_5
    if-nez v1, :cond_6

    .line 740
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 741
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_0

    .line 744
    :cond_6
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    if-nez v1, :cond_7

    .line 746
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 747
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_0

    :cond_7
    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 751
    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v1, v2, :cond_0

    .line 752
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_verifyAllowedMatches()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 753
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_nextBuffered(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_8
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 757
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->setFieldName(Ljava/lang/String;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 659
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_a

    .line 661
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_0

    .line 664
    :cond_a
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_b

    .line 665
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->filterStartArray()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    :cond_b
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 668
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v1, :cond_c

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 669
    invoke-virtual {v1, v0, v3}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 670
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_nextBuffered(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_c
    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_inclusion:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    .line 671
    sget-object v4, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_NON_NULL:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v1, v4, :cond_d

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 673
    invoke-virtual {v1, v0, v3}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 674
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_nextBuffered(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_d
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 676
    invoke-virtual {v1, v0, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    goto/16 :goto_0

    :cond_e
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 715
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->getFilter()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 716
    sget-object v4, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v1, v4, :cond_f

    .line 717
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->filterFinishArray()V

    :cond_f
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    if-ne v1, p1, :cond_10

    .line 720
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->isStartHandled()Z

    move-result v1

    if-eqz v1, :cond_10

    move v2, v3

    :cond_10
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 722
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->getParent()Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 723
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->getFilter()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eqz v2, :cond_0

    return-object v0

    :cond_11
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 681
    sget-object v4, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v1, v4, :cond_12

    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 682
    invoke-virtual {p1, v1, v3}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    return-object v0

    :cond_12
    if-nez v1, :cond_13

    .line 686
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_0

    :cond_13
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 690
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_14

    .line 692
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_0

    .line 695
    :cond_14
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_15

    .line 696
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->filterStartObject()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    :cond_15
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 699
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v1, :cond_16

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 700
    invoke-virtual {v1, v0, v3}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 701
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_nextBuffered(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_16
    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_inclusion:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    .line 702
    sget-object v4, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_NON_NULL:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v1, v4, :cond_17

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 704
    invoke-virtual {v1, v0, v3}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 705
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_nextBuffered(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_17
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 707
    invoke-virtual {v1, v0, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    goto/16 :goto_0
.end method

.method public clearCurrentToken()V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_lastClearedToken:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    :cond_0
    return-void
.end method

.method public currentName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_filterContext()Lcom/fasterxml/jackson/core/JsonStreamContext;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 203
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 204
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->getParent()Lcom/fasterxml/jackson/core/JsonStreamContext;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    .line 205
    :cond_2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public currentToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public final currentTokenId()I
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 914
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 981
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->getBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;)[B

    move-result-object p1

    return-object p1
.end method

.method public getBooleanValue()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 917
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v0

    return v0
.end method

.method public getByteValue()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 920
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getByteValue()B

    move-result v0

    return v0
.end method

.method public getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_filterContext()Lcom/fasterxml/jackson/core/JsonStreamContext;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 192
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 193
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->getParent()Lcom/fasterxml/jackson/core/JsonStreamContext;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    .line 194
    :cond_2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public final getCurrentTokenId()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 158
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->currentTokenId()I

    move-result v0

    return v0
.end method

.method public getDecimalValue()Ljava/math/BigDecimal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 926
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 929
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getDoubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getEmbeddedObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 980
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->rootFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    return-object v0
.end method

.method public getFloatValue()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 932
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getFloatValue()F

    move-result v0

    return v0
.end method

.method public getIntValue()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 935
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getLastClearedToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_lastClearedToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public getLongValue()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 938
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMatchCount()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_matchCount:I

    return v0
.end method

.method public getNumberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 941
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getNumberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    move-result-object v0

    return-object v0
.end method

.method public getNumberValue()Ljava/lang/Number;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 944
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getParsingContext()Lcom/fasterxml/jackson/core/JsonStreamContext;
    .locals 1

    .line 185
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_filterContext()Lcom/fasterxml/jackson/core/JsonStreamContext;

    move-result-object v0

    return-object v0
.end method

.method public getShortValue()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 923
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getShortValue()S

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 872
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 873
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->currentName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 875
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextCharacters()[C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 888
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 889
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->currentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0

    .line 891
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getTextCharacters()[C

    move-result-object v0

    return-object v0
.end method

.method public getTextLength()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 895
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 896
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->currentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getTextLength()I

    move-result v0

    return v0
.end method

.method public getTextOffset()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 901
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 904
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getTextOffset()I

    move-result v0

    return v0
.end method

.method public getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 1

    .line 983
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v0

    return-object v0
.end method

.method public getValueAsBoolean()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 958
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getValueAsBoolean(Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 959
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean(Z)Z

    move-result p1

    return p1
.end method

.method public getValueAsDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 956
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public getValueAsDouble(D)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 957
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsDouble(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public getValueAsInt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 952
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getValueAsInt(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 953
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsInt(I)I

    move-result p1

    return p1
.end method

.method public getValueAsLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 954
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getValueAsLong(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 955
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsLong(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getValueAsString()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 962
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 963
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->currentName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 965
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValueAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 968
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 969
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->currentName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 971
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hasCurrentToken()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTextCharacters()Z
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 879
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 882
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->hasTextCharacters()Z

    move-result v0

    return v0
.end method

.method public final hasToken(Lcom/fasterxml/jackson/core/JsonToken;)Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasTokenId(I)Z
    .locals 3

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 171
    :cond_1
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v0

    if-ne v0, p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public isExpectedStartArrayToken()Z
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 178
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isExpectedStartObjectToken()Z
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 179
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_allowMultipleMatches:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_exposedContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    if-nez v2, :cond_0

    .line 255
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->isScalarValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->isStartHandled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_inclusion:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->ONLY_INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v2, :cond_0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_exposedContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    if-eqz v0, :cond_5

    .line 266
    :goto_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->nextTokenToRead()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    if-eqz v2, :cond_1

    iput-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    if-ne v0, v2, :cond_3

    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_exposedContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 274
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->inArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 275
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 285
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->currentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 286
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_5

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 293
    :cond_3
    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->findChildOf(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_exposedContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const-string v0, "Unexpected problem: chain of filtered context broken"

    .line 296
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object v0

    throw v0

    .line 302
    :cond_5
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-nez v0, :cond_6

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 312
    :cond_6
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_18

    const/4 v4, 0x2

    if-eq v1, v4, :cond_16

    const/4 v4, 0x3

    if-eq v1, v4, :cond_f

    const/4 v2, 0x4

    if-eq v1, v2, :cond_16

    const/4 v2, 0x5

    if-eq v1, v2, :cond_9

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 453
    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v1, v2, :cond_7

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_7
    if-eqz v1, :cond_1f

    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 457
    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    .line 458
    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v1, v2, :cond_8

    if-eqz v1, :cond_1f

    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    .line 459
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeValue(Lcom/fasterxml/jackson/core/JsonParser;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 460
    :cond_8
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_verifyAllowedMatches()Z

    move-result v1

    if-eqz v1, :cond_1f

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 412
    :cond_9
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 414
    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->setFieldName(Ljava/lang/String;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v2

    .line 415
    sget-object v3, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v2, v3, :cond_a

    iput-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_a
    if-nez v2, :cond_b

    .line 420
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 421
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_1

    .line 424
    :cond_b
    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    if-nez v1, :cond_c

    .line 426
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 427
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_1

    :cond_c
    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 431
    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v1, v2, :cond_e

    .line 432
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_verifyAllowedMatches()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_inclusion:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    .line 433
    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_ALL_AND_PATH:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v1, v2, :cond_e

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 437
    :cond_d
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 438
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    :cond_e
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_inclusion:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    .line 441
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->ONLY_INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-eq v0, v1, :cond_1f

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 442
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_nextTokenWithBuffering(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-eqz v0, :cond_1f

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_f
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 315
    sget-object v4, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v1, v4, :cond_10

    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 316
    invoke-virtual {v2, v1, v3}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_10
    if-nez v1, :cond_11

    .line 320
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_1

    :cond_11
    iget-object v4, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 324
    invoke-virtual {v4, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    if-nez v1, :cond_12

    .line 326
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_1

    .line 329
    :cond_12
    sget-object v4, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v1, v4, :cond_13

    .line 330
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->filterStartArray()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    :cond_13
    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 333
    sget-object v4, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v1, v4, :cond_14

    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 334
    invoke-virtual {v2, v1, v3}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_14
    if-eqz v1, :cond_15

    iget-object v4, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_inclusion:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    .line 336
    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_NON_NULL:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v4, v5, :cond_15

    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 338
    invoke-virtual {v2, v1, v3}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_15
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 341
    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_inclusion:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    .line 344
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_ALL_AND_PATH:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 345
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_nextTokenWithBuffering(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-eqz v0, :cond_1f

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_16
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 397
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->isStartHandled()Z

    move-result v1

    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 398
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->getFilter()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 399
    sget-object v3, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v2, v3, :cond_17

    .line 400
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->filterFinishArray()V

    :cond_17
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 402
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->getParent()Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 403
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->getFilter()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eqz v1, :cond_1f

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_18
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 355
    sget-object v4, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v1, v4, :cond_19

    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 356
    invoke-virtual {v2, v1, v3}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_19
    if-nez v1, :cond_1a

    .line 360
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    :cond_1a
    iget-object v4, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 364
    invoke-virtual {v4, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    if-nez v1, :cond_1b

    .line 366
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 369
    :cond_1b
    sget-object v4, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v1, v4, :cond_1c

    .line 370
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->filterStartObject()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    :cond_1c
    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 373
    sget-object v4, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v1, v4, :cond_1d

    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 374
    invoke-virtual {v2, v1, v3}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_1d
    if-eqz v1, :cond_1e

    iget-object v4, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_inclusion:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    .line 376
    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_NON_NULL:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v4, v5, :cond_1e

    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 378
    invoke-virtual {v2, v1, v3}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_1e
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 381
    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_inclusion:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    .line 383
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_ALL_AND_PATH:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 384
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_nextTokenWithBuffering(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-eqz v0, :cond_1f

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 470
    :cond_1f
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_nextToken2()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method public nextValue()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 824
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 825
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 826
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public overrideCurrentName(Ljava/lang/String;)V
    .locals 1

    .line 232
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Can not currently override name during filtering read"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/OutputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 982
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonParser;->readBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/OutputStream;)I

    move-result p1

    return p1
.end method

.method public skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 839
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 848
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    if-nez v1, :cond_2

    return-object p0

    .line 852
    :cond_2
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->isStructStart()Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 854
    :cond_3
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->isStructEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_1

    return-object p0
.end method

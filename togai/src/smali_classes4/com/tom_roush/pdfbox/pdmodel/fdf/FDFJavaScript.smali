.class public Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFJavaScript;
.super Ljava/lang/Object;
.source "FDFJavaScript.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# instance fields
.field private final dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFJavaScript;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFJavaScript;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method


# virtual methods
.method public getAfter()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFJavaScript;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 109
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->AFTER:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 110
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSString;

    if-eqz v1, :cond_0

    .line 112
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 114
    :cond_0
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    if-eqz v1, :cond_1

    .line 116
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSStream;->toTextString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBefore()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFJavaScript;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 77
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BEFORE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 78
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSString;

    if-eqz v1, :cond_0

    .line 80
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 82
    :cond_0
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    if-eqz v1, :cond_1

    .line 84
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSStream;->toTextString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFJavaScript;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFJavaScript;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getDoc()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionJavaScript;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFJavaScript;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 142
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DOC:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSArray(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 147
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v2, 0x1

    .line 148
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 150
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getName(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 153
    invoke-virtual {v0, v3}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    .line 154
    instance-of v5, v3, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v5, :cond_1

    .line 156
    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-static {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionFactory;->createAction(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDAction;

    move-result-object v3

    .line 157
    instance-of v5, v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionJavaScript;

    if-eqz v5, :cond_1

    .line 159
    check-cast v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionJavaScript;

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public setAfter(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFJavaScript;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 131
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->AFTER:Lcom/tom_roush/pdfbox/cos/COSName;

    new-instance v2, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-direct {v2, p1}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setBefore(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFJavaScript;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 99
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BEFORE:Lcom/tom_roush/pdfbox/cos/COSName;

    new-instance v2, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-direct {v2, p1}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setDoc(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionJavaScript;",
            ">;)V"
        }
    .end annotation

    .line 174
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 175
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 177
    new-instance v2, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 178
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFJavaScript;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 180
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DOC:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

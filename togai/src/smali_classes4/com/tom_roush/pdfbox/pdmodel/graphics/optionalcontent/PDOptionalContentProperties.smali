.class public Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;
.super Ljava/lang/Object;
.source "PDOptionalContentProperties.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties$BaseState;
    }
.end annotation


# instance fields
.field private final dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 90
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->OCGS:Lcom/tom_roush/pdfbox/cos/COSName;

    new-instance v2, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v2}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 91
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    .line 94
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->NAME:Lcom/tom_roush/pdfbox/cos/COSName;

    const-string v3, "Top"

    invoke-virtual {v1, v2, v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    .line 96
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->D:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v2, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method

.method private getD()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 128
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->D:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 129
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_0

    .line 131
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0

    .line 134
    :cond_0
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    .line 137
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->NAME:Lcom/tom_roush/pdfbox/cos/COSName;

    const-string v2, "Top"

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 140
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->D:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-object v0
.end method

.method private getOCGs()Lcom/tom_roush/pdfbox/cos/COSArray;
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 117
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->OCGS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSArray(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 121
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->OCGS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :cond_0
    return-object v0
.end method

.method private toDictionary(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    .line 336
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSObject;

    if-eqz v0, :cond_0

    .line 338
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSObject;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object p1

    .line 342
    :cond_0
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object p1
.end method


# virtual methods
.method public addGroup(Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup;)V
    .locals 3

    .line 172
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;->getOCGs()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    .line 173
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 176
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;->getD()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ORDER:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 180
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;->getD()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->ORDER:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 182
    :cond_0
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public getBaseState()Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties$BaseState;
    .locals 2

    .line 206
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;->getD()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    .line 207
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BASE_STATE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getItem(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSName;

    .line 208
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties$BaseState;->valueOf(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties$BaseState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getGroup(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup;
    .locals 3

    .line 153
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;->getOCGs()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 156
    invoke-direct {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;->toDictionary(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    .line 157
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->NAME:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    new-instance p1, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup;

    invoke-direct {p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getGroupNames()[Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 227
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->OCGS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSArray(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    return-object v0

    .line 232
    :cond_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v2

    .line 233
    new-array v3, v2, [Ljava/lang/String;

    :goto_0
    if-ge v1, v2, :cond_1

    .line 236
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v4

    .line 237
    invoke-direct {p0, v4}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;->toDictionary(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v4

    .line 238
    sget-object v5, Lcom/tom_roush/pdfbox/cos/COSName;->NAME:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v4, v5}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public getOptionalContentGroups()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup;",
            ">;"
        }
    .end annotation

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;->getOCGs()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v1

    .line 193
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 195
    new-instance v3, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup;

    invoke-direct {p0, v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;->toDictionary(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public hasGroup(Ljava/lang/String;)Z
    .locals 5

    .line 250
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;->getGroupNames()[Ljava/lang/String;

    move-result-object v0

    .line 251
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 253
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public isGroupEnabled(Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup;)Z
    .locals 6

    .line 295
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;->getBaseState()Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties$BaseState;

    move-result-object v0

    .line 296
    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties$BaseState;->OFF:Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties$BaseState;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties$BaseState;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez p1, :cond_0

    return v0

    .line 304
    :cond_0
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;->getD()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v2

    .line 305
    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->ON:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    .line 306
    instance-of v4, v3, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v4, :cond_2

    .line 308
    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/cos/COSArray;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 310
    invoke-direct {p0, v4}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;->toDictionary(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v4

    .line 311
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v5

    if-ne v4, v5, :cond_1

    return v1

    .line 318
    :cond_2
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->OFF:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    .line 319
    instance-of v2, v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v2, :cond_4

    .line 321
    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 323
    invoke-direct {p0, v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;->toDictionary(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v2

    .line 324
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v3

    if-ne v2, v3, :cond_3

    const/4 p1, 0x0

    return p1

    :cond_4
    return v0
.end method

.method public isGroupEnabled(Ljava/lang/String;)Z
    .locals 4

    .line 272
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;->getOCGs()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 275
    invoke-direct {p0, v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;->toDictionary(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v2

    .line 276
    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->NAME:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v3

    .line 277
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup;

    invoke-direct {v3, v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    invoke-virtual {p0, v3}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;->isGroupEnabled(Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public setBaseState(Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties$BaseState;)V
    .locals 2

    .line 217
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;->getD()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    .line 218
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BASE_STATE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties$BaseState;->getName()Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setGroupEnabled(Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup;Z)Z
    .locals 8

    .line 381
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;->getD()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    .line 382
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ON:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    .line 383
    instance-of v2, v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-nez v2, :cond_0

    .line 385
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 386
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->ON:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v2, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    .line 390
    :cond_0
    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 392
    :goto_0
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->OFF:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    .line 393
    instance-of v3, v2, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-nez v3, :cond_1

    .line 395
    new-instance v2, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v2}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 396
    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->OFF:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v3, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_1

    .line 400
    :cond_1
    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSArray;

    :goto_1
    const/4 v0, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_3

    .line 406
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 408
    invoke-direct {p0, v5}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;->toDictionary(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v6

    .line 409
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v7

    if-ne v6, v7, :cond_2

    .line 412
    invoke-virtual {v2, v5}, Lcom/tom_roush/pdfbox/cos/COSArray;->remove(Lcom/tom_roush/pdfbox/cos/COSBase;)Z

    .line 413
    invoke-virtual {v1, v5}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_2

    .line 421
    :cond_3
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 423
    invoke-direct {p0, v5}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;->toDictionary(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v6

    .line 424
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v7

    if-ne v6, v7, :cond_4

    .line 427
    invoke-virtual {v1, v5}, Lcom/tom_roush/pdfbox/cos/COSArray;->remove(Lcom/tom_roush/pdfbox/cos/COSBase;)Z

    .line 428
    invoke-virtual {v2, v5}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_2

    :cond_5
    move v0, v3

    :goto_2
    if-nez v0, :cond_7

    if-eqz p2, :cond_6

    .line 438
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_3

    .line 442
    :cond_6
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :cond_7
    :goto_3
    return v0
.end method

.method public setGroupEnabled(Ljava/lang/String;Z)Z
    .locals 4

    .line 357
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;->getOCGs()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    .line 358
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 360
    invoke-direct {p0, v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;->toDictionary(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v2

    .line 361
    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->NAME:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v3

    .line 362
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup;

    invoke-direct {v3, v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    invoke-virtual {p0, v3, p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;->setGroupEnabled(Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

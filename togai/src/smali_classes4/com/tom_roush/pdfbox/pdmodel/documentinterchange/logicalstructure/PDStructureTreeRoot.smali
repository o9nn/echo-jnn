.class public Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;
.super Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureNode;
.source "PDStructureTreeRoot.java"


# static fields
.field private static final TYPE:Ljava/lang/String; = "StructTreeRoot"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "StructTreeRoot"

    .line 52
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureNode;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureNode;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void
.end method


# virtual methods
.method public getIDTree()Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode<",
            "Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;",
            ">;"
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ID_TREE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 124
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_0

    .line 126
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/PDStructureElementNameTreeNode;

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDStructureElementNameTreeNode;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getK()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 2

    .line 103
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->K:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    return-object v0
.end method

.method public getKArray()Lcom/tom_roush/pdfbox/cos/COSArray;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 77
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->K:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 78
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_0

    .line 80
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 81
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->K:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 82
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_1

    .line 84
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    return-object v0

    .line 87
    :cond_0
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_1

    .line 89
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentTree()Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;
    .locals 3

    .line 148
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PARENT_TREE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 149
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_0

    .line 151
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    const-class v2, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDParentTreeValue;

    invoke-direct {v1, v0, v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;Ljava/lang/Class;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentTreeNextKey()I
    .locals 2

    .line 173
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PARENT_TREE_NEXT_KEY:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;)I

    move-result v0

    return v0
.end method

.method public getRoleMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 193
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ROLE_MAP:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 194
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_0

    .line 198
    :try_start_0
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/COSDictionaryMap;->convertBasicTypesToMap(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/pdmodel/common/COSDictionaryMap;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "PdfBox-Android"

    .line 202
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public setIDTree(Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode<",
            "Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;",
            ">;)V"
        }
    .end annotation

    .line 138
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ID_TREE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setK(Lcom/tom_roush/pdfbox/cos/COSBase;)V
    .locals 2

    .line 113
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->K:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setParentTree(Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;)V
    .locals 2

    .line 163
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PARENT_TREE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setParentTreeNextKey(I)V
    .locals 2

    .line 183
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PARENT_TREE_NEXT_KEY:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method

.method public setRoleMap(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 215
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    .line 216
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

    .line 218
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ROLE_MAP:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.class public Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;
.super Ljava/lang/Object;
.source "PDXObject.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# instance fields
.field private final stream:Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;


# direct methods
.method protected constructor <init>(Lcom/tom_roush/pdfbox/cos/COSStream;Lcom/tom_roush/pdfbox/cos/COSName;)V
    .locals 2

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;->stream:Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    .line 101
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->XOBJECT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    .line 102
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->SUBTYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/tom_roush/pdfbox/cos/COSStream;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/cos/COSName;)V
    .locals 3

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;->stream:Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    .line 126
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object p1

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->XOBJECT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSStream;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object p1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->SUBTYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/tom_roush/pdfbox/cos/COSStream;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;Lcom/tom_roush/pdfbox/cos/COSName;)V
    .locals 3

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;->stream:Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    .line 114
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->XOBJECT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSStream;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object p1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->SUBTYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/tom_roush/pdfbox/cos/COSStream;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public static createXObject(Lcom/tom_roush/pdfbox/cos/COSBase;Lcom/tom_roush/pdfbox/pdmodel/PDResources;)Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 60
    :cond_0
    instance-of v1, p0, Lcom/tom_roush/pdfbox/cos/COSStream;

    if-eqz v1, :cond_6

    .line 65
    check-cast p0, Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 66
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SUBTYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v1

    .line 68
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->IMAGE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    invoke-direct {v1, p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;)V

    invoke-direct {v0, v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;-><init>(Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V

    return-object v0

    .line 72
    :cond_1
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->FORM:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p1, :cond_2

    .line 74
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getResourceCache()Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    move-result-object v0

    .line 75
    :cond_2
    sget-object p1, Lcom/tom_roush/pdfbox/cos/COSName;->GROUP:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->getCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 76
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TRANSPARENCY:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->S:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSName(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 78
    new-instance p1, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;

    invoke-direct {p1, p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;)V

    return-object p1

    .line 80
    :cond_3
    new-instance p1, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;

    invoke-direct {p1, p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;)V

    return-object p1

    .line 82
    :cond_4
    sget-object p1, Lcom/tom_roush/pdfbox/cos/COSName;->PS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 84
    new-instance p1, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDPostScriptXObject;

    invoke-direct {p1, p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDPostScriptXObject;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;)V

    return-object p1

    .line 88
    :cond_5
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid XObject Subtype: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 62
    :cond_6
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected object type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    return-object v0
.end method

.method public final getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;->stream:Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    .line 137
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    return-object v0
.end method

.method public final getCOSStream()Lcom/tom_roush/pdfbox/cos/COSStream;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;->stream:Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    .line 148
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    return-object v0
.end method

.method public final getPDStream()Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;->stream:Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    return-object v0
.end method

.method public final getStream()Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;->stream:Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    return-object v0
.end method

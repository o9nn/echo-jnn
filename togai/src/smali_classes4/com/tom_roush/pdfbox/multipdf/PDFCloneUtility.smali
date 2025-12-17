.class public Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;
.super Ljava/lang/Object;
.source "PDFCloneUtility.java"


# instance fields
.field private final clonedValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/tom_roush/pdfbox/cos/COSBase;",
            ">;"
        }
    .end annotation
.end field

.field private final clonedVersion:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/tom_roush/pdfbox/cos/COSBase;",
            ">;"
        }
    .end annotation
.end field

.field private final destination:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->clonedVersion:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->clonedValues:Ljava/util/Set;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->destination:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    return-void
.end method

.method private hasSelfReference(Ljava/lang/Object;Lcom/tom_roush/pdfbox/cos/COSBase;)Z
    .locals 2

    .line 292
    instance-of v0, p2, Lcom/tom_roush/pdfbox/cos/COSObject;

    if-eqz v0, :cond_0

    .line 294
    check-cast p2, Lcom/tom_roush/pdfbox/cos/COSObject;

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " object has a reference to itself: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 299
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObjectNumber()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/cos/COSObject;->getGenerationNumber()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " R"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PdfBox-Android"

    .line 298
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public cloneForNewDocument(Ljava/lang/Object;)Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->clonedVersion:Ljava/util/Map;

    .line 84
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSBase;

    if-eqz v0, :cond_1

    return-object v0

    .line 90
    :cond_1
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSBase;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->clonedValues:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 93
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSBase;

    return-object p1

    .line 95
    :cond_2
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 97
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 98
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    .line 99
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 101
    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->cloneForNewDocument(Ljava/lang/Object;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    .line 105
    :cond_3
    instance-of v1, p1, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;

    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    .line 107
    move-object v0, p1

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;

    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->cloneForNewDocument(Ljava/lang/Object;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    goto/16 :goto_5

    .line 109
    :cond_4
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSObject;

    if-eqz v0, :cond_5

    .line 111
    move-object v0, p1

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSObject;

    .line 112
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->cloneForNewDocument(Ljava/lang/Object;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    goto/16 :goto_5

    .line 114
    :cond_5
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_7

    .line 116
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 117
    move-object v1, p1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v2, 0x0

    .line 118
    :goto_1
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_d

    .line 120
    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    .line 121
    invoke-direct {p0, p1, v3}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->hasSelfReference(Ljava/lang/Object;Lcom/tom_roush/pdfbox/cos/COSBase;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 123
    invoke-virtual {v0, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_2

    .line 127
    :cond_6
    invoke-virtual {p0, v3}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->cloneForNewDocument(Ljava/lang/Object;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 132
    :cond_7
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSStream;

    if-eqz v0, :cond_a

    .line 134
    move-object v0, p1

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->destination:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    .line 135
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocument()Lcom/tom_roush/pdfbox/cos/COSDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSDocument;->createCOSStream()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v1

    .line 136
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->createRawOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 137
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSStream;->createRawInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 138
    invoke-static {v3, v2}, Lcom/tom_roush/pdfbox/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 139
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 140
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    iget-object v2, p0, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->clonedVersion:Ljava/util/Map;

    .line 141
    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSStream;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 144
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 145
    invoke-direct {p0, p1, v3}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->hasSelfReference(Ljava/lang/Object;Lcom/tom_roush/pdfbox/cos/COSBase;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 147
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_3

    .line 151
    :cond_8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v3}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->cloneForNewDocument(Ljava/lang/Object;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tom_roush/pdfbox/cos/COSStream;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_3

    :cond_9
    move-object v0, v1

    goto :goto_5

    .line 156
    :cond_a
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_c

    .line 158
    move-object v0, p1

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 159
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iget-object v2, p0, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->clonedVersion:Ljava/util/Map;

    .line 160
    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 163
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 164
    invoke-direct {p0, p1, v3}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->hasSelfReference(Ljava/lang/Object;Lcom/tom_roush/pdfbox/cos/COSBase;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 166
    move-object v3, v1

    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_4

    .line 170
    :cond_b
    move-object v4, v1

    check-cast v4, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v3}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->cloneForNewDocument(Ljava/lang/Object;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_4

    .line 176
    :cond_c
    move-object v0, p1

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSBase;

    :cond_d
    :goto_5
    iget-object v1, p0, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->clonedVersion:Ljava/util/Map;

    .line 178
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->clonedValues:Ljava/util/Set;

    .line 179
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public cloneMerge(Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_d

    if-ne p1, p2, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->clonedVersion:Ljava/util/Map;

    .line 197
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSBase;

    if-eqz v0, :cond_1

    return-void

    .line 204
    :cond_1
    instance-of v1, p1, Lcom/tom_roush/pdfbox/cos/COSBase;

    if-nez v1, :cond_2

    .line 206
    invoke-interface {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    invoke-interface {p2}, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p2

    invoke-virtual {p0, v1, p2}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->cloneMerge(Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    goto/16 :goto_3

    .line 208
    :cond_2
    instance-of v1, p1, Lcom/tom_roush/pdfbox/cos/COSObject;

    if-eqz v1, :cond_5

    .line 210
    instance-of v1, p2, Lcom/tom_roush/pdfbox/cos/COSObject;

    if-eqz v1, :cond_3

    .line 212
    move-object v1, p1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSObject;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    check-cast p2, Lcom/tom_roush/pdfbox/cos/COSObject;

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p2

    invoke-virtual {p0, v1, p2}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->cloneMerge(Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    goto/16 :goto_3

    .line 214
    :cond_3
    instance-of v1, p2, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-nez v1, :cond_4

    instance-of v1, p2, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_c

    .line 216
    :cond_4
    move-object v1, p1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSObject;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->cloneMerge(Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    goto/16 :goto_3

    .line 219
    :cond_5
    instance-of v1, p1, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_7

    .line 221
    instance-of v1, p2, Lcom/tom_roush/pdfbox/cos/COSObject;

    if-eqz v1, :cond_6

    .line 223
    check-cast p2, Lcom/tom_roush/pdfbox/cos/COSObject;

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->cloneMerge(Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    goto/16 :goto_3

    .line 227
    :cond_6
    move-object v1, p1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v2, 0x0

    .line 228
    :goto_0
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_c

    .line 230
    move-object v3, p2

    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->cloneForNewDocument(Ljava/lang/Object;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 234
    :cond_7
    instance-of v1, p1, Lcom/tom_roush/pdfbox/cos/COSStream;

    if-eqz v1, :cond_8

    .line 237
    move-object p2, p1

    check-cast p2, Lcom/tom_roush/pdfbox/cos/COSStream;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->destination:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    .line 238
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocument()Lcom/tom_roush/pdfbox/cos/COSDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSDocument;->createCOSStream()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    .line 239
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/cos/COSStream;->getFilters()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->createOutputStream(Lcom/tom_roush/pdfbox/cos/COSBase;)Ljava/io/OutputStream;

    move-result-object v1

    .line 240
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/cos/COSStream;->createInputStream()Lcom/tom_roush/pdfbox/cos/COSInputStream;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tom_roush/pdfbox/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 241
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->clonedVersion:Ljava/util/Map;

    .line 242
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/cos/COSStream;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 246
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSName;

    .line 247
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->cloneForNewDocument(Ljava/lang/Object;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    .line 245
    invoke-virtual {v0, v2, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_1

    .line 251
    :cond_8
    instance-of v1, p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_b

    .line 253
    instance-of v1, p2, Lcom/tom_roush/pdfbox/cos/COSObject;

    if-eqz v1, :cond_9

    .line 255
    check-cast p2, Lcom/tom_roush/pdfbox/cos/COSObject;

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->cloneMerge(Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    goto :goto_3

    .line 259
    :cond_9
    move-object v1, p1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->clonedVersion:Ljava/util/Map;

    .line 260
    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 263
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSName;

    .line 264
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 265
    move-object v4, p2

    check-cast v4, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-virtual {v4, v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getItem(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 267
    invoke-virtual {v4, v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getItem(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->cloneMerge(Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    goto :goto_2

    .line 271
    :cond_a
    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->cloneForNewDocument(Ljava/lang/Object;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_2

    .line 278
    :cond_b
    move-object v0, p1

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSBase;

    :cond_c
    :goto_3
    iget-object p2, p0, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->clonedVersion:Ljava/util/Map;

    .line 280
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->clonedValues:Ljava/util/Set;

    .line 281
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_4
    return-void
.end method

.method public getDestination()Lcom/tom_roush/pdfbox/pdmodel/PDDocument;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->destination:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    return-object v0
.end method

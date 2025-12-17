.class public final Lcom/tom_roush/pdfbox/pdmodel/interactive/form/FieldUtils;
.super Ljava/lang/Object;
.source "FieldUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/pdfbox/pdmodel/interactive/form/FieldUtils$KeyValueValueComparator;,
        Lcom/tom_roush/pdfbox/pdmodel/interactive/form/FieldUtils$KeyValueKeyComparator;,
        Lcom/tom_roush/pdfbox/pdmodel/interactive/form/FieldUtils$KeyValue;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getPairableItems(Lcom/tom_roush/pdfbox/cos/COSBase;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/cos/COSBase;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-ltz p1, :cond_5

    const/4 v0, 0x1

    if-gt p1, v0, :cond_5

    .line 169
    instance-of v1, p0, Lcom/tom_roush/pdfbox/cos/COSString;

    if-eqz v1, :cond_0

    .line 171
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 172
    check-cast p0, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSString;->getString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 175
    :cond_0
    instance-of v0, p0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_4

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    check-cast p0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSArray;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 180
    instance-of v2, v1, Lcom/tom_roush/pdfbox/cos/COSString;

    if-eqz v2, :cond_2

    .line 182
    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 184
    :cond_2
    instance-of v2, v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v2, :cond_1

    .line 186
    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 187
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v2

    add-int/lit8 v3, p1, 0x1

    if-lt v2, v3, :cond_1

    invoke-virtual {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    instance-of v2, v2, Lcom/tom_roush/pdfbox/cos/COSString;

    if-eqz v2, :cond_1

    .line 189
    invoke-virtual {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0

    .line 195
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 166
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only 0 and 1 are allowed as an index into two-element arrays"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static sortByKey(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/form/FieldUtils$KeyValue;",
            ">;)V"
        }
    .end annotation

    .line 142
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/FieldUtils$KeyValueKeyComparator;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/FieldUtils$KeyValueKeyComparator;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method static sortByValue(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/form/FieldUtils$KeyValue;",
            ">;)V"
        }
    .end annotation

    .line 132
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/FieldUtils$KeyValueValueComparator;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/FieldUtils$KeyValueValueComparator;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method static toKeyValueList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/form/FieldUtils$KeyValue;",
            ">;"
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 118
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 120
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/FieldUtils$KeyValue;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/FieldUtils$KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.class Lcom/tom_roush/pdfbox/util/SmallMap$SmallMapEntry;
.super Ljava/lang/Object;
.source "SmallMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/util/SmallMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmallMapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final keyIdx:I

.field final synthetic this$0:Lcom/tom_roush/pdfbox/util/SmallMap;


# direct methods
.method constructor <init>(Lcom/tom_roush/pdfbox/util/SmallMap;I)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/util/SmallMap$SmallMapEntry;->this$0:Lcom/tom_roush/pdfbox/util/SmallMap;

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/tom_roush/pdfbox/util/SmallMap$SmallMapEntry;->keyIdx:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 361
    instance-of v0, p1, Lcom/tom_roush/pdfbox/util/SmallMap$SmallMapEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 366
    :cond_0
    check-cast p1, Lcom/tom_roush/pdfbox/util/SmallMap$SmallMapEntry;

    .line 368
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/util/SmallMap$SmallMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/util/SmallMap$SmallMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/util/SmallMap$SmallMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/util/SmallMap$SmallMapEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/SmallMap$SmallMapEntry;->this$0:Lcom/tom_roush/pdfbox/util/SmallMap;

    .line 329
    invoke-static {v0}, Lcom/tom_roush/pdfbox/util/SmallMap;->access$000(Lcom/tom_roush/pdfbox/util/SmallMap;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/tom_roush/pdfbox/util/SmallMap$SmallMapEntry;->keyIdx:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/SmallMap$SmallMapEntry;->this$0:Lcom/tom_roush/pdfbox/util/SmallMap;

    .line 336
    invoke-static {v0}, Lcom/tom_roush/pdfbox/util/SmallMap;->access$000(Lcom/tom_roush/pdfbox/util/SmallMap;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/tom_roush/pdfbox/util/SmallMap$SmallMapEntry;->keyIdx:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 355
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/util/SmallMap$SmallMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/util/SmallMap$SmallMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/util/SmallMap$SmallMapEntry;->this$0:Lcom/tom_roush/pdfbox/util/SmallMap;

    .line 348
    invoke-static {v1}, Lcom/tom_roush/pdfbox/util/SmallMap;->access$000(Lcom/tom_roush/pdfbox/util/SmallMap;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/tom_roush/pdfbox/util/SmallMap$SmallMapEntry;->keyIdx:I

    add-int/lit8 v2, v2, 0x1

    aput-object p1, v1, v2

    return-object v0

    .line 344
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Key or value must not be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

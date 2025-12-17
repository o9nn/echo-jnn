.class public abstract Lcom/tom_roush/fontbox/cff/CFFCharset;
.super Ljava/lang/Object;
.source "CFFCharset.java"


# instance fields
.field private final gidToCid:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final gidToName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final gidToSid:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final isCIDFont:Z

.field private final nameToSid:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final sidOrCidToGid:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Z)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xfa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFCharset;->sidOrCidToGid:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFCharset;->gidToSid:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFCharset;->nameToSid:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFCharset;->gidToCid:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFCharset;->gidToName:Ljava/util/Map;

    iput-boolean p1, p0, Lcom/tom_roush/fontbox/cff/CFFCharset;->isCIDFont:Z

    return-void
.end method


# virtual methods
.method public addCID(II)V
    .locals 3

    iget-boolean v0, p0, Lcom/tom_roush/fontbox/cff/CFFCharset;->isCIDFont:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFCharset;->sidOrCidToGid:Ljava/util/Map;

    .line 90
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFCharset;->gidToCid:Ljava/util/Map;

    .line 91
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 88
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not a CIDFont"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addSID(IILjava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/tom_roush/fontbox/cff/CFFCharset;->isCIDFont:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFCharset;->sidOrCidToGid:Ljava/util/Map;

    .line 72
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFCharset;->gidToSid:Ljava/util/Map;

    .line 73
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFCharset;->nameToSid:Ljava/util/Map;

    .line 74
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/tom_roush/fontbox/cff/CFFCharset;->gidToName:Ljava/util/Map;

    .line 75
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 70
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not a Type 1-equivalent font"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCIDForGID(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/fontbox/cff/CFFCharset;->isCIDFont:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFCharset;->gidToCid:Ljava/util/Map;

    .line 203
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 206
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 200
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not a CIDFont"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getGIDForCID(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/fontbox/cff/CFFCharset;->isCIDFont:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFCharset;->sidOrCidToGid:Ljava/util/Map;

    .line 146
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 151
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 144
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not a CIDFont"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getGIDForSID(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/fontbox/cff/CFFCharset;->isCIDFont:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFCharset;->sidOrCidToGid:Ljava/util/Map;

    .line 126
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 131
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 124
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not a Type 1-equivalent font"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getNameForGID(I)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/fontbox/cff/CFFCharset;->isCIDFont:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFCharset;->gidToName:Ljava/util/Map;

    .line 187
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 185
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not a Type 1-equivalent font"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getSID(Ljava/lang/String;)I
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/fontbox/cff/CFFCharset;->isCIDFont:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFCharset;->nameToSid:Ljava/util/Map;

    .line 167
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 172
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 165
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not a Type 1-equivalent font"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getSIDForGID(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/fontbox/cff/CFFCharset;->isCIDFont:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFCharset;->gidToSid:Ljava/util/Map;

    .line 106
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 111
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 104
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not a Type 1-equivalent font"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isCIDFont()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/fontbox/cff/CFFCharset;->isCIDFont:Z

    return v0
.end method

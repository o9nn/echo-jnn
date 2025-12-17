.class public abstract Lcom/tom_roush/fontbox/encoding/Encoding;
.super Ljava/lang/Object;
.source "Encoding.java"


# instance fields
.field protected codeToName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected nameToCode:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xfa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/tom_roush/fontbox/encoding/Encoding;->codeToName:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/tom_roush/fontbox/encoding/Encoding;->nameToCode:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected addCharacterEncoding(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/fontbox/encoding/Encoding;->codeToName:Ljava/util/Map;

    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tom_roush/fontbox/encoding/Encoding;->nameToCode:Ljava/util/Map;

    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getCode(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/encoding/Encoding;->nameToCode:Ljava/util/Map;

    .line 60
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public getCodeToNameMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/encoding/Encoding;->codeToName:Ljava/util/Map;

    .line 87
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/encoding/Encoding;->codeToName:Ljava/util/Map;

    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const-string p1, ".notdef"

    return-object p1
.end method

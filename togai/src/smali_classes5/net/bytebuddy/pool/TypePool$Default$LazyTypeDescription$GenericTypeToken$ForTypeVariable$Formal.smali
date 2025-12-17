.class public Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForTypeVariable$Formal;
.super Ljava/lang/Object;
.source "TypePool.java"

# interfaces
.implements Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$OfFormalTypeVariable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForTypeVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Formal"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForTypeVariable$Formal$LazyTypeVariable;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final boundTypeTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken;",
            ">;"
        }
    .end annotation
.end field

.field private final symbol:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken;",
            ">;)V"
        }
    .end annotation

    .line 4663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForTypeVariable$Formal;->symbol:Ljava/lang/String;

    iput-object p2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForTypeVariable$Formal;->boundTypeTokens:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForTypeVariable$Formal;->symbol:Ljava/lang/String;

    check-cast p1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForTypeVariable$Formal;

    iget-object v3, p1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForTypeVariable$Formal;->symbol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForTypeVariable$Formal;->boundTypeTokens:Ljava/util/List;

    iget-object p1, p1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForTypeVariable$Formal;->boundTypeTokens:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForTypeVariable$Formal;->symbol:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForTypeVariable$Formal;->boundTypeTokens:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public toGenericType(Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/description/TypeVariableSource;Ljava/util/Map;Ljava/util/Map;)Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/pool/TypePool;",
            "Lnet/bytebuddy/description/TypeVariableSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;>;)",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;"
        }
    .end annotation

    .line 4675
    new-instance v7, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForTypeVariable$Formal$LazyTypeVariable;

    if-nez p3, :cond_0

    .line 4678
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p3

    :cond_0
    move-object v3, p3

    if-nez p4, :cond_1

    .line 4681
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p4

    :cond_1
    move-object v4, p4

    iget-object v5, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForTypeVariable$Formal;->symbol:Ljava/lang/String;

    iget-object v6, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForTypeVariable$Formal;->boundTypeTokens:Ljava/util/List;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForTypeVariable$Formal$LazyTypeVariable;-><init>(Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/description/TypeVariableSource;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V

    return-object v7
.end method

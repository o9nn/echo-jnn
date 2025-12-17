.class public abstract Lcom/google/common/flogger/context/ScopeMetadata;
.super Lcom/google/common/flogger/backend/Metadata;
.source "ScopeMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/flogger/context/ScopeMetadata$EmptyMetadata;,
        Lcom/google/common/flogger/context/ScopeMetadata$SingletonMetadata;,
        Lcom/google/common/flogger/context/ScopeMetadata$ImmutableScopeMetadata;,
        Lcom/google/common/flogger/context/ScopeMetadata$Builder;,
        Lcom/google/common/flogger/context/ScopeMetadata$Entry;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/google/common/flogger/backend/Metadata;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/flogger/context/ScopeMetadata$1;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/google/common/flogger/context/ScopeMetadata;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/common/flogger/context/ScopeMetadata$Builder;
    .locals 2

    .line 78
    new-instance v0, Lcom/google/common/flogger/context/ScopeMetadata$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/flogger/context/ScopeMetadata$Builder;-><init>(Lcom/google/common/flogger/context/ScopeMetadata$1;)V

    return-object v0
.end method

.method public static none()Lcom/google/common/flogger/context/ScopeMetadata;
    .locals 1

    .line 89
    sget-object v0, Lcom/google/common/flogger/context/ScopeMetadata$EmptyMetadata;->INSTANCE:Lcom/google/common/flogger/context/ScopeMetadata;

    return-object v0
.end method

.method public static singleton(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)Lcom/google/common/flogger/context/ScopeMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/MetadataKey<",
            "TT;>;TT;)",
            "Lcom/google/common/flogger/context/ScopeMetadata;"
        }
    .end annotation

    .line 83
    new-instance v0, Lcom/google/common/flogger/context/ScopeMetadata$SingletonMetadata;

    invoke-direct {v0, p0, p1}, Lcom/google/common/flogger/context/ScopeMetadata$SingletonMetadata;-><init>(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public abstract concatenate(Lcom/google/common/flogger/context/ScopeMetadata;)Lcom/google/common/flogger/context/ScopeMetadata;
.end method

.method abstract get(I)Lcom/google/common/flogger/context/ScopeMetadata$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/flogger/context/ScopeMetadata$Entry<",
            "*>;"
        }
    .end annotation
.end method

.method public getKey(I)Lcom/google/common/flogger/MetadataKey;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/flogger/MetadataKey<",
            "*>;"
        }
    .end annotation

    .line 112
    invoke-virtual {p0, p1}, Lcom/google/common/flogger/context/ScopeMetadata;->get(I)Lcom/google/common/flogger/context/ScopeMetadata$Entry;

    move-result-object p1

    iget-object p1, p1, Lcom/google/common/flogger/context/ScopeMetadata$Entry;->key:Lcom/google/common/flogger/MetadataKey;

    return-object p1
.end method

.method public getValue(I)Ljava/lang/Object;
    .locals 0

    .line 117
    invoke-virtual {p0, p1}, Lcom/google/common/flogger/context/ScopeMetadata;->get(I)Lcom/google/common/flogger/context/ScopeMetadata$Entry;

    move-result-object p1

    iget-object p1, p1, Lcom/google/common/flogger/context/ScopeMetadata$Entry;->value:Ljava/lang/Object;

    return-object p1
.end method

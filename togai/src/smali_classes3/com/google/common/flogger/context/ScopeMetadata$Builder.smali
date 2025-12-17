.class public final Lcom/google/common/flogger/context/ScopeMetadata$Builder;
.super Ljava/lang/Object;
.source "ScopeMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/context/ScopeMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final EMPTY_ARRAY:[Lcom/google/common/flogger/context/ScopeMetadata$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/flogger/context/ScopeMetadata$Entry<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/common/flogger/context/ScopeMetadata$Entry<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/flogger/context/ScopeMetadata$Entry;

    sput-object v0, Lcom/google/common/flogger/context/ScopeMetadata$Builder;->EMPTY_ARRAY:[Lcom/google/common/flogger/context/ScopeMetadata$Entry;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/flogger/context/ScopeMetadata$Builder;->entries:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/flogger/context/ScopeMetadata$1;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/google/common/flogger/context/ScopeMetadata$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)Lcom/google/common/flogger/context/ScopeMetadata$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/MetadataKey<",
            "TT;>;TT;)",
            "Lcom/google/common/flogger/context/ScopeMetadata$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/flogger/context/ScopeMetadata$Builder;->entries:Ljava/util/List;

    .line 65
    new-instance v1, Lcom/google/common/flogger/context/ScopeMetadata$Entry;

    invoke-direct {v1, p1, p2}, Lcom/google/common/flogger/context/ScopeMetadata$Entry;-><init>(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/google/common/flogger/context/ScopeMetadata;
    .locals 3

    .line 72
    new-instance v0, Lcom/google/common/flogger/context/ScopeMetadata$ImmutableScopeMetadata;

    iget-object v1, p0, Lcom/google/common/flogger/context/ScopeMetadata$Builder;->entries:Ljava/util/List;

    sget-object v2, Lcom/google/common/flogger/context/ScopeMetadata$Builder;->EMPTY_ARRAY:[Lcom/google/common/flogger/context/ScopeMetadata$Entry;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/common/flogger/context/ScopeMetadata$Entry;

    invoke-direct {v0, v1}, Lcom/google/common/flogger/context/ScopeMetadata$ImmutableScopeMetadata;-><init>([Lcom/google/common/flogger/context/ScopeMetadata$Entry;)V

    return-object v0
.end method

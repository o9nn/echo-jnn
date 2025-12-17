.class public abstract Lcom/google/common/flogger/backend/Metadata;
.super Ljava/lang/Object;
.source "Metadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/flogger/backend/Metadata$Empty;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static empty()Lcom/google/common/flogger/backend/Metadata;
    .locals 1

    .line 43
    sget-object v0, Lcom/google/common/flogger/backend/Metadata$Empty;->INSTANCE:Lcom/google/common/flogger/backend/Metadata$Empty;

    return-object v0
.end method


# virtual methods
.method public abstract findValue(Lcom/google/common/flogger/MetadataKey;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/MetadataKey<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end method

.method public abstract getKey(I)Lcom/google/common/flogger/MetadataKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/flogger/MetadataKey<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getValue(I)Ljava/lang/Object;
.end method

.method public abstract size()I
.end method

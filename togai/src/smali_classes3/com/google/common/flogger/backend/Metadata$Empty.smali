.class final Lcom/google/common/flogger/backend/Metadata$Empty;
.super Lcom/google/common/flogger/backend/Metadata;
.source "Metadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/backend/Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Empty"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/common/flogger/backend/Metadata$Empty;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lcom/google/common/flogger/backend/Metadata$Empty;

    invoke-direct {v0}, Lcom/google/common/flogger/backend/Metadata$Empty;-><init>()V

    sput-object v0, Lcom/google/common/flogger/backend/Metadata$Empty;->INSTANCE:Lcom/google/common/flogger/backend/Metadata$Empty;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/google/common/flogger/backend/Metadata;-><init>()V

    return-void
.end method


# virtual methods
.method public findValue(Lcom/google/common/flogger/MetadataKey;)Ljava/lang/Object;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public getKey(I)Lcom/google/common/flogger/MetadataKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/flogger/MetadataKey<",
            "*>;"
        }
    .end annotation

    .line 60
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "cannot read from empty metadata"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getValue(I)Ljava/lang/Object;
    .locals 1

    .line 65
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "cannot read from empty metadata"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

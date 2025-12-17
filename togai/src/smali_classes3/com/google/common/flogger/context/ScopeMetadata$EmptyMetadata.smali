.class final Lcom/google/common/flogger/context/ScopeMetadata$EmptyMetadata;
.super Lcom/google/common/flogger/context/ScopeMetadata;
.source "ScopeMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/context/ScopeMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmptyMetadata"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/common/flogger/context/ScopeMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 217
    new-instance v0, Lcom/google/common/flogger/context/ScopeMetadata$EmptyMetadata;

    invoke-direct {v0}, Lcom/google/common/flogger/context/ScopeMetadata$EmptyMetadata;-><init>()V

    sput-object v0, Lcom/google/common/flogger/context/ScopeMetadata$EmptyMetadata;->INSTANCE:Lcom/google/common/flogger/context/ScopeMetadata;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 216
    invoke-direct {p0, v0}, Lcom/google/common/flogger/context/ScopeMetadata;-><init>(Lcom/google/common/flogger/context/ScopeMetadata$1;)V

    return-void
.end method


# virtual methods
.method public concatenate(Lcom/google/common/flogger/context/ScopeMetadata;)Lcom/google/common/flogger/context/ScopeMetadata;
    .locals 0

    return-object p1
.end method

.method public findValue(Lcom/google/common/flogger/MetadataKey;)Ljava/lang/Object;
    .locals 1
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

    .line 233
    invoke-virtual {p1}, Lcom/google/common/flogger/MetadataKey;->canRepeat()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const-string v0, "metadata key must be single valued"

    invoke-static {p1, v0}, Lcom/google/common/flogger/util/Checks;->checkArgument(ZLjava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method get(I)Lcom/google/common/flogger/context/ScopeMetadata$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/flogger/context/ScopeMetadata$Entry<",
            "*>;"
        }
    .end annotation

    .line 226
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

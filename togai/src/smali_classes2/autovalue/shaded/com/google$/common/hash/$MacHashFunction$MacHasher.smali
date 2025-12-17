.class final Lautovalue/shaded/com/google$/common/hash/$MacHashFunction$MacHasher;
.super Lautovalue/shaded/com/google$/common/hash/$AbstractByteHasher;
.source "$MacHashFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/hash/$MacHashFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MacHasher"
.end annotation


# instance fields
.field private done:Z

.field private final mac:Ljavax/crypto/Mac;


# direct methods
.method private constructor <init>(Ljavax/crypto/Mac;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/hash/$AbstractByteHasher;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/hash/$MacHashFunction$MacHasher;->mac:Ljavax/crypto/Mac;

    return-void
.end method

.method synthetic constructor <init>(Ljavax/crypto/Mac;Lautovalue/shaded/com/google$/common/hash/$MacHashFunction$1;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/hash/$MacHashFunction$MacHasher;-><init>(Ljavax/crypto/Mac;)V

    return-void
.end method

.method private checkNotDone()V
    .locals 2

    iget-boolean v0, p0, Lautovalue/shaded/com/google$/common/hash/$MacHashFunction$MacHasher;->done:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot re-use a Hasher after calling hash() on it"

    .line 131
    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkState(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public hash()Lautovalue/shaded/com/google$/common/hash/$HashCode;
    .locals 1

    .line 136
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/hash/$MacHashFunction$MacHasher;->checkNotDone()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lautovalue/shaded/com/google$/common/hash/$MacHashFunction$MacHasher;->done:Z

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/hash/$MacHashFunction$MacHasher;->mac:Ljavax/crypto/Mac;

    .line 138
    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/hash/$HashCode;->fromBytesNoCopy([B)Lautovalue/shaded/com/google$/common/hash/$HashCode;

    move-result-object v0

    return-object v0
.end method

.method protected update(B)V
    .locals 1

    .line 107
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/hash/$MacHashFunction$MacHasher;->checkNotDone()V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/hash/$MacHashFunction$MacHasher;->mac:Ljavax/crypto/Mac;

    .line 108
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update(B)V

    return-void
.end method

.method protected update(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 125
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/hash/$MacHashFunction$MacHasher;->checkNotDone()V

    .line 126
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/hash/$MacHashFunction$MacHasher;->mac:Ljavax/crypto/Mac;

    .line 127
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected update([B)V
    .locals 1

    .line 113
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/hash/$MacHashFunction$MacHasher;->checkNotDone()V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/hash/$MacHashFunction$MacHasher;->mac:Ljavax/crypto/Mac;

    .line 114
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update([B)V

    return-void
.end method

.method protected update([BII)V
    .locals 1

    .line 119
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/hash/$MacHashFunction$MacHasher;->checkNotDone()V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/hash/$MacHashFunction$MacHasher;->mac:Ljavax/crypto/Mac;

    .line 120
    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Mac;->update([BII)V

    return-void
.end method

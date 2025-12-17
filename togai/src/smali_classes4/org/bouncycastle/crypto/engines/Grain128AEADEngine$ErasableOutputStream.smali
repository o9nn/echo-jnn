.class final Lorg/bouncycastle/crypto/engines/Grain128AEADEngine$ErasableOutputStream;
.super Ljava/io/ByteArrayOutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ErasableOutputStream"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public erase()V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine$ErasableOutputStream;->buf:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine$ErasableOutputStream;->reset()V

    return-void
.end method

.method public getBuf()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine$ErasableOutputStream;->buf:[B

    return-object v0
.end method

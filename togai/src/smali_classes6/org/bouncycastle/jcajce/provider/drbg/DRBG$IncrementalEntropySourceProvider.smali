.class Lorg/bouncycastle/jcajce/provider/drbg/DRBG$IncrementalEntropySourceProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/prng/EntropySourceProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/drbg/DRBG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IncrementalEntropySourceProvider"
.end annotation


# instance fields
.field private final predictionResistant:Z

.field private final random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$IncrementalEntropySourceProvider;->random:Ljava/security/SecureRandom;

    iput-boolean p2, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$IncrementalEntropySourceProvider;->predictionResistant:Z

    return-void
.end method

.method static synthetic access$1400(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$IncrementalEntropySourceProvider;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$IncrementalEntropySourceProvider;->predictionResistant:Z

    return p0
.end method

.method static synthetic access$1500(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$IncrementalEntropySourceProvider;)Ljava/security/SecureRandom;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$IncrementalEntropySourceProvider;->random:Ljava/security/SecureRandom;

    return-object p0
.end method


# virtual methods
.method public get(I)Lorg/bouncycastle/crypto/prng/EntropySource;
    .locals 1

    new-instance v0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$IncrementalEntropySourceProvider$1;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$IncrementalEntropySourceProvider$1;-><init>(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$IncrementalEntropySourceProvider;I)V

    return-object v0
.end method

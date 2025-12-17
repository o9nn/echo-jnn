.class public Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;
.super Ljava/lang/Object;


# static fields
.field public static final sikep434:Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;

.field public static final sikep434_compressed:Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;

.field public static final sikep503:Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;

.field public static final sikep503_compressed:Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;

.field public static final sikep610:Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;

.field public static final sikep610_compressed:Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;

.field public static final sikep751:Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;

.field public static final sikep751_compressed:Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;


# instance fields
.field private final engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;

    const-string v1, "sikep434"

    const/16 v2, 0x1b2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;-><init>(IZLjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;->sikep434:Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;

    const-string v1, "sikep503"

    const/16 v4, 0x1f7

    invoke-direct {v0, v4, v3, v1}, Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;-><init>(IZLjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;->sikep503:Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;

    const-string v1, "sikep610"

    const/16 v5, 0x262

    invoke-direct {v0, v5, v3, v1}, Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;-><init>(IZLjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;->sikep610:Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;

    const-string v1, "sikep751"

    const/16 v6, 0x2ef

    invoke-direct {v0, v6, v3, v1}, Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;-><init>(IZLjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;->sikep751:Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;

    const-string v1, "sikep434_compressed"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;-><init>(IZLjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;->sikep434_compressed:Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;

    const-string v1, "sikep503_compressed"

    invoke-direct {v0, v4, v3, v1}, Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;-><init>(IZLjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;->sikep503_compressed:Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;

    const-string v1, "sikep610_compressed"

    invoke-direct {v0, v5, v3, v1}, Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;-><init>(IZLjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;->sikep610_compressed:Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;

    const-string v1, "sikep751_compressed"

    invoke-direct {v0, v6, v3, v1}, Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;-><init>(IZLjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;->sikep751_compressed:Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;

    return-void
.end method

.method private constructor <init>(IZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;->name:Ljava/lang/String;

    new-instance p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    invoke-direct {p3, p1, p2}, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;-><init>(IZ)V

    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    return-void
.end method


# virtual methods
.method getEngine()Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionKeySize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->getDefaultSessionKeySize()I

    move-result v0

    return v0
.end method

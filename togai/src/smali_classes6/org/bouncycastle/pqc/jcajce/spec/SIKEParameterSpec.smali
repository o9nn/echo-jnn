.class public Lorg/bouncycastle/pqc/jcajce/spec/SIKEParameterSpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field private static parameters:Ljava/util/Map;

.field public static final sikep434:Lorg/bouncycastle/pqc/jcajce/spec/SIKEParameterSpec;

.field public static final sikep434_compressed:Lorg/bouncycastle/pqc/jcajce/spec/SIKEParameterSpec;

.field public static final sikep503:Lorg/bouncycastle/pqc/jcajce/spec/SIKEParameterSpec;

.field public static final sikep503_compressed:Lorg/bouncycastle/pqc/jcajce/spec/SIKEParameterSpec;

.field public static final sikep610:Lorg/bouncycastle/pqc/jcajce/spec/SIKEParameterSpec;

.field public static final sikep610_compressed:Lorg/bouncycastle/pqc/jcajce/spec/SIKEParameterSpec;

.field public static final sikep751:Lorg/bouncycastle/pqc/jcajce/spec/SIKEParameterSpec;

.field public static final sikep751_compressed:Lorg/bouncycastle/pqc/jcajce/spec/SIKEParameterSpec;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/SIKEParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;->sikep434:Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/SIKEParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SIKEParameterSpec;->sikep434:Lorg/bouncycastle/pqc/jcajce/spec/SIKEParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/SIKEParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;->sikep503:Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/SIKEParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SIKEParameterSpec;->sikep503:Lorg/bouncycastle/pqc/jcajce/spec/SIKEParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/SIKEParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;->sikep610:Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/SIKEParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SIKEParameterSpec;->sikep610:Lorg/bouncycastle/pqc/jcajce/spec/SIKEParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/SIKEParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;->sikep751:Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/SIKEParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SIKEParameterSpec;->sikep751:Lorg/bouncycastle/pqc/jcajce/spec/SIKEParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/SIKEParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;->sikep434_compressed:Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/SIKEParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SIKEParameterSpec;->sikep434_compressed:Lorg/bouncycastle/pqc/jcajce/spec/SIKEParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/SIKEParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;->sikep503_compressed:Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/SIKEParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SIKEParameterSpec;->sikep503_compressed:Lorg/bouncycastle/pqc/jcajce/spec/SIKEParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/SIKEParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;->sikep610_compressed:Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/SIKEParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SIKEParameterSpec;->sikep610_compressed:Lorg/bouncycastle/pqc/jcajce/spec/SIKEParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/SIKEParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;->sikep751_compressed:Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/SIKEParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SIKEParameterSpec;->sikep751_compressed:Lorg/bouncycastle/pqc/jcajce/spec/SIKEParameterSpec;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SIKEParameterSpec;->parameters:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/spec/SIKEParameterSpec;->name:Ljava/lang/String;

    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lorg/bouncycastle/pqc/jcajce/spec/SIKEParameterSpec;
    .locals 1

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SIKEParameterSpec;->parameters:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/pqc/jcajce/spec/SIKEParameterSpec;

    return-object p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/SIKEParameterSpec;->name:Ljava/lang/String;

    return-object v0
.end method

.class Lcom/google/auto/value/processor/BuilderSpec$Copier;
.super Ljava/lang/Object;
.source "BuilderSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/value/processor/BuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Copier"
.end annotation


# static fields
.field static final IDENTITY:Lcom/google/auto/value/processor/BuilderSpec$Copier;


# instance fields
.field private final acceptsNull:Z

.field private final copy:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 404
    new-instance v0, Lcom/google/auto/value/processor/BuilderSpec$Copier$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/auto/value/processor/BuilderSpec$Copier$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lcom/google/auto/value/processor/BuilderSpec$Copier;->acceptingNull(Ljava/util/function/Function;)Lcom/google/auto/value/processor/BuilderSpec$Copier;

    move-result-object v0

    sput-object v0, Lcom/google/auto/value/processor/BuilderSpec$Copier;->IDENTITY:Lcom/google/auto/value/processor/BuilderSpec$Copier;

    return-void
.end method

.method private constructor <init>(Ljava/util/function/Function;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/processor/BuilderSpec$Copier;->copy:Ljava/util/function/Function;

    iput-boolean p2, p0, Lcom/google/auto/value/processor/BuilderSpec$Copier;->acceptsNull:Z

    return-void
.end method

.method static acceptingNull(Ljava/util/function/Function;)Lcom/google/auto/value/processor/BuilderSpec$Copier;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/auto/value/processor/BuilderSpec$Copier;"
        }
    .end annotation

    .line 415
    new-instance v0, Lcom/google/auto/value/processor/BuilderSpec$Copier;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/auto/value/processor/BuilderSpec$Copier;-><init>(Ljava/util/function/Function;Z)V

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/auto/value/processor/BuilderSpec$Copier;)Ljava/util/function/Function;
    .locals 0

    .line 403
    iget-object p0, p0, Lcom/google/auto/value/processor/BuilderSpec$Copier;->copy:Ljava/util/function/Function;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/auto/value/processor/BuilderSpec$Copier;)Z
    .locals 0

    .line 403
    iget-boolean p0, p0, Lcom/google/auto/value/processor/BuilderSpec$Copier;->acceptsNull:Z

    return p0
.end method

.method static synthetic lambda$static$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p0
.end method

.method static notAcceptingNull(Ljava/util/function/Function;)Lcom/google/auto/value/processor/BuilderSpec$Copier;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/auto/value/processor/BuilderSpec$Copier;"
        }
    .end annotation

    .line 419
    new-instance v0, Lcom/google/auto/value/processor/BuilderSpec$Copier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/auto/value/processor/BuilderSpec$Copier;-><init>(Ljava/util/function/Function;Z)V

    return-object v0
.end method

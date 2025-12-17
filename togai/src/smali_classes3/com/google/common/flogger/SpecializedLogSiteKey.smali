.class final Lcom/google/common/flogger/SpecializedLogSiteKey;
.super Ljava/lang/Object;
.source "SpecializedLogSiteKey.java"

# interfaces
.implements Lcom/google/common/flogger/LogSiteKey;


# instance fields
.field private final delegate:Lcom/google/common/flogger/LogSiteKey;

.field private final qualifier:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/google/common/flogger/LogSiteKey;Ljava/lang/Object;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "log site key"

    .line 37
    invoke-static {p1, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/flogger/LogSiteKey;

    iput-object p1, p0, Lcom/google/common/flogger/SpecializedLogSiteKey;->delegate:Lcom/google/common/flogger/LogSiteKey;

    const-string p1, "log site qualifier"

    .line 38
    invoke-static {p2, p1}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/flogger/SpecializedLogSiteKey;->qualifier:Ljava/lang/Object;

    return-void
.end method

.method static of(Lcom/google/common/flogger/LogSiteKey;Ljava/lang/Object;)Lcom/google/common/flogger/LogSiteKey;
    .locals 1

    .line 30
    new-instance v0, Lcom/google/common/flogger/SpecializedLogSiteKey;

    invoke-direct {v0, p0, p1}, Lcom/google/common/flogger/SpecializedLogSiteKey;-><init>(Lcom/google/common/flogger/LogSiteKey;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 45
    instance-of v0, p1, Lcom/google/common/flogger/SpecializedLogSiteKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 48
    :cond_0
    check-cast p1, Lcom/google/common/flogger/SpecializedLogSiteKey;

    iget-object v0, p0, Lcom/google/common/flogger/SpecializedLogSiteKey;->delegate:Lcom/google/common/flogger/LogSiteKey;

    .line 49
    iget-object v2, p1, Lcom/google/common/flogger/SpecializedLogSiteKey;->delegate:Lcom/google/common/flogger/LogSiteKey;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/flogger/SpecializedLogSiteKey;->qualifier:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/common/flogger/SpecializedLogSiteKey;->qualifier:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/common/flogger/SpecializedLogSiteKey;->delegate:Lcom/google/common/flogger/LogSiteKey;

    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/flogger/SpecializedLogSiteKey;->qualifier:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SpecializedLogSiteKey{ delegate=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/common/flogger/SpecializedLogSiteKey;->delegate:Lcom/google/common/flogger/LogSiteKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', qualifier=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/flogger/SpecializedLogSiteKey;->qualifier:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

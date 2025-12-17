.class public abstract Lcom/google/common/flogger/LogSite;
.super Ljava/lang/Object;
.source "LogSite.java"

# interfaces
.implements Lcom/google/common/flogger/LogSiteKey;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/flogger/LogSite$InjectedLogSite;
    }
.end annotation


# static fields
.field public static final INVALID:Lcom/google/common/flogger/LogSite;

.field public static final UNKNOWN_LINE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lcom/google/common/flogger/LogSite$1;

    invoke-direct {v0}, Lcom/google/common/flogger/LogSite$1;-><init>()V

    sput-object v0, Lcom/google/common/flogger/LogSite;->INVALID:Lcom/google/common/flogger/LogSite;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static injectedLogSite(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/common/flogger/LogSite;
    .locals 7
    .param p3    # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 148
    new-instance v6, Lcom/google/common/flogger/LogSite$InjectedLogSite;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/common/flogger/LogSite$InjectedLogSite;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/common/flogger/LogSite$1;)V

    return-object v6
.end method


# virtual methods
.method public abstract getClassName()Ljava/lang/String;
.end method

.method public abstract getFileName()Ljava/lang/String;
.end method

.method public abstract getLineNumber()I
.end method

.method public abstract getMethodName()Ljava/lang/String;
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LogSite{ class="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/google/common/flogger/LogSite;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", method="

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 114
    invoke-virtual {p0}, Lcom/google/common/flogger/LogSite;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", line="

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 116
    invoke-virtual {p0}, Lcom/google/common/flogger/LogSite;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 117
    invoke-virtual {p0}, Lcom/google/common/flogger/LogSite;->getFileName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, ", file="

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 119
    invoke-virtual {p0}, Lcom/google/common/flogger/LogSite;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, " }"

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public abstract Lcom/google/common/flogger/backend/Platform$LogCallerFinder;
.super Ljava/lang/Object;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/backend/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LogCallerFinder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract findLogSite(Ljava/lang/Class;I)Lcom/google/common/flogger/LogSite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)",
            "Lcom/google/common/flogger/LogSite;"
        }
    .end annotation
.end method

.method public abstract findLoggingClass(Ljava/lang/Class;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/common/flogger/AbstractLogger<",
            "*>;>;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

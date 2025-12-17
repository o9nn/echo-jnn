.class Lcom/eko/RNBackgroundDownloaderModule$3;
.super Lcom/google/gson/reflect/TypeToken;
.source "RNBackgroundDownloaderModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eko/RNBackgroundDownloaderModule;->loadDownloadIdToConfigMap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/Map<",
        "Ljava/lang/Long;",
        "Lcom/eko/RNBGDTaskConfig;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eko/RNBackgroundDownloaderModule;


# direct methods
.method constructor <init>(Lcom/eko/RNBackgroundDownloaderModule;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/eko/RNBackgroundDownloaderModule$3;->this$0:Lcom/eko/RNBackgroundDownloaderModule;

    .line 302
    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method

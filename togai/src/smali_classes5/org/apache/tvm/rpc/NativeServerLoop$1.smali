.class Lorg/apache/tvm/rpc/NativeServerLoop$1;
.super Ljava/lang/Object;
.source "NativeServerLoop.java"

# interfaces
.implements Lorg/apache/tvm/Function$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/tvm/rpc/NativeServerLoop;->serverEnv()Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$tempDir:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/tvm/rpc/NativeServerLoop$1;->val$tempDir:Ljava/io/File;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs invoke([Lorg/apache/tvm/TVMValue;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/apache/tvm/rpc/NativeServerLoop$1;->val$tempDir:Ljava/io/File;

    .line 80
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    const/4 v2, 0x0

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lorg/apache/tvm/TVMValue;->asString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

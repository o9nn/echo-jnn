.class public Lai/onnxruntime/NodeInfo;
.super Ljava/lang/Object;
.source "NodeInfo.java"


# instance fields
.field private final info:Lai/onnxruntime/ValueInfo;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lai/onnxruntime/ValueInfo;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lai/onnxruntime/NodeInfo;->name:Ljava/lang/String;

    iput-object p2, p0, Lai/onnxruntime/NodeInfo;->info:Lai/onnxruntime/ValueInfo;

    return-void
.end method


# virtual methods
.method public getInfo()Lai/onnxruntime/ValueInfo;
    .locals 1

    iget-object v0, p0, Lai/onnxruntime/NodeInfo;->info:Lai/onnxruntime/ValueInfo;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lai/onnxruntime/NodeInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NodeInfo(name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lai/onnxruntime/NodeInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lai/onnxruntime/NodeInfo;->info:Lai/onnxruntime/ValueInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

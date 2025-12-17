.class public Lai/onnxruntime/OrtException;
.super Ljava/lang/Exception;
.source "OrtException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/onnxruntime/OrtException$OrtErrorCode;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final errorCode:Lai/onnxruntime/OrtException$OrtErrorCode;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 31
    invoke-static {p1}, Lai/onnxruntime/OrtException$OrtErrorCode;->mapFromInt(I)Lai/onnxruntime/OrtException$OrtErrorCode;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lai/onnxruntime/OrtException;-><init>(Lai/onnxruntime/OrtException$OrtErrorCode;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lai/onnxruntime/OrtException$OrtErrorCode;Ljava/lang/String;)V
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error code - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lai/onnxruntime/OrtException;->errorCode:Lai/onnxruntime/OrtException$OrtErrorCode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 21
    sget-object p1, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_JAVA_UNKNOWN:Lai/onnxruntime/OrtException$OrtErrorCode;

    iput-object p1, p0, Lai/onnxruntime/OrtException;->errorCode:Lai/onnxruntime/OrtException$OrtErrorCode;

    return-void
.end method


# virtual methods
.method public getCode()Lai/onnxruntime/OrtException$OrtErrorCode;
    .locals 1

    iget-object v0, p0, Lai/onnxruntime/OrtException;->errorCode:Lai/onnxruntime/OrtException$OrtErrorCode;

    return-object v0
.end method

.class public Lcom/layla/jni/LlamaCppJni;
.super Ljava/lang/Object;
.source "LlamaCppJni.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layla/jni/LlamaCppJni$LlamaCppCallback;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "llama-jni"

    .line 16
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native isCPUDotProdSupported()I
.end method

.method public static native isCPUi8mmSupported()I
.end method

.method public static native llama_describe_img(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native llama_infer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFFIILcom/layla/jni/LlamaCppJni$LlamaCppCallback;)Ljava/lang/String;
.end method

.method public static native llama_init(Ljava/lang/String;Z)V
.end method

.method public static native llama_repl_send_msg([BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native llama_repl_start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFIFIIIZZLjava/lang/String;FFFFIIFFIFFIIIILcom/layla/jni/LlamaCppJni$LlamaCppCallback;)V
.end method

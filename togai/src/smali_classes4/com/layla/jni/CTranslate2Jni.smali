.class public Lcom/layla/jni/CTranslate2Jni;
.super Ljava/lang/Object;
.source "CTranslate2Jni.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ctranslate2-jni"

    .line 6
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native classify_xlmroberta(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native release_model(Ljava/lang/String;)V
.end method

.method public static native summarise_bart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native summarise_flant5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native translate_m2m100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native translate_opusmt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

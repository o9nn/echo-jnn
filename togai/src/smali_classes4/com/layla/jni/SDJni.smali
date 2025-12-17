.class public Lcom/layla/jni/SDJni;
.super Ljava/lang/Object;
.source "SDJni.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layla/jni/SDJni$SDGenImgCallback;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "sd-jni"

    .line 8
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native sd(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFILjava/lang/String;Lcom/layla/jni/SDJni$SDGenImgCallback;)V
.end method

.method public static native upscale(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

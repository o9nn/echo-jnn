.class public final Lcom/tom_roush/pdfbox/contentstream/operator/state/EmptyGraphicsStackException;
.super Ljava/io/IOException;
.source "EmptyGraphicsStackException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 1

    const-string v0, "Cannot execute restore, the graphics stack is empty"

    .line 34
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

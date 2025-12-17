.class public interface abstract Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch$Callback;
.super Ljava/lang/Object;
.source "BackgroundFetch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onFetch(Ljava/lang/String;)V
.end method

.method public abstract onTimeout(Ljava/lang/String;)V
.end method

.class public interface abstract Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher;
.super Ljava/lang/Object;
.source "ClassInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "Dispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Unavailable;,
        Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Enabled;,
        Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$CreationAction;,
        Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Initializable;
    }
.end annotation


# virtual methods
.method public abstract defineClass(Ljava/lang/ClassLoader;Ljava/lang/String;[BLjava/security/ProtectionDomain;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/security/ProtectionDomain;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.class public interface abstract Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Dispatcher;
.super Ljava/lang/Object;
.source "ClassInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "Dispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Dispatcher$ForJava6CapableVm;,
        Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Dispatcher$ForLegacyVm;,
        Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Dispatcher$CreationAction;
    }
.end annotation


# virtual methods
.method public abstract appendToBootstrapClassLoaderSearch(Ljava/lang/instrument/Instrumentation;Ljava/util/jar/JarFile;)V
.end method

.method public abstract appendToSystemClassLoaderSearch(Ljava/lang/instrument/Instrumentation;Ljava/util/jar/JarFile;)V
.end method

.method public abstract isAlive()Z
.end method

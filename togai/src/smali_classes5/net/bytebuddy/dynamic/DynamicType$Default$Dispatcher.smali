.class public interface abstract Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher;
.super Ljava/lang/Object;
.source "DynamicType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/DynamicType$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "Dispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$ForJava7CapableVm;,
        Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$ForLegacyVm;,
        Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$CreationAction;
    }
.end annotation


# virtual methods
.method public abstract copy(Ljava/io/File;Ljava/io/File;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

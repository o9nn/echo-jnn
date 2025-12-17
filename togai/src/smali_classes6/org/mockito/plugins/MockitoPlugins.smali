.class public interface abstract Lorg/mockito/plugins/MockitoPlugins;
.super Ljava/lang/Object;
.source "MockitoPlugins.java"


# virtual methods
.method public abstract getDefaultPlugin(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract getInlineMockMaker()Lorg/mockito/plugins/MockMaker;
.end method

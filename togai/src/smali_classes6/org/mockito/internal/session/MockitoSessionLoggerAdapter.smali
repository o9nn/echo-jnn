.class public Lorg/mockito/internal/session/MockitoSessionLoggerAdapter;
.super Ljava/lang/Object;
.source "MockitoSessionLoggerAdapter.java"

# interfaces
.implements Lorg/mockito/session/MockitoSessionLogger;


# instance fields
.field private final logger:Lorg/mockito/plugins/MockitoLogger;


# direct methods
.method public constructor <init>(Lorg/mockito/plugins/MockitoLogger;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/session/MockitoSessionLoggerAdapter;->logger:Lorg/mockito/plugins/MockitoLogger;

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/session/MockitoSessionLoggerAdapter;->logger:Lorg/mockito/plugins/MockitoLogger;

    .line 20
    invoke-interface {v0, p1}, Lorg/mockito/plugins/MockitoLogger;->log(Ljava/lang/Object;)V

    return-void
.end method

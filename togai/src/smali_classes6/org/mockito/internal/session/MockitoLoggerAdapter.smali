.class Lorg/mockito/internal/session/MockitoLoggerAdapter;
.super Ljava/lang/Object;
.source "MockitoLoggerAdapter.java"

# interfaces
.implements Lorg/mockito/plugins/MockitoLogger;


# instance fields
.field private final logger:Lorg/mockito/session/MockitoSessionLogger;


# direct methods
.method constructor <init>(Lorg/mockito/session/MockitoSessionLogger;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/session/MockitoLoggerAdapter;->logger:Lorg/mockito/session/MockitoSessionLogger;

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/session/MockitoLoggerAdapter;->logger:Lorg/mockito/session/MockitoSessionLogger;

    .line 20
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/mockito/session/MockitoSessionLogger;->log(Ljava/lang/String;)V

    return-void
.end method

.class Lorg/mockito/internal/framework/DefaultMockitoSession$1;
.super Ljava/lang/Object;
.source "DefaultMockitoSession.java"

# interfaces
.implements Lorg/mockito/internal/junit/TestFinishedEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/internal/framework/DefaultMockitoSession;->finishMocking(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mockito/internal/framework/DefaultMockitoSession;

.field final synthetic val$failure:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lorg/mockito/internal/framework/DefaultMockitoSession;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lorg/mockito/internal/framework/DefaultMockitoSession$1;->this$0:Lorg/mockito/internal/framework/DefaultMockitoSession;

    iput-object p2, p0, Lorg/mockito/internal/framework/DefaultMockitoSession$1;->val$failure:Ljava/lang/Throwable;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFailure()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/framework/DefaultMockitoSession$1;->val$failure:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getTestName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/framework/DefaultMockitoSession$1;->this$0:Lorg/mockito/internal/framework/DefaultMockitoSession;

    .line 69
    invoke-static {v0}, Lorg/mockito/internal/framework/DefaultMockitoSession;->access$000(Lorg/mockito/internal/framework/DefaultMockitoSession;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

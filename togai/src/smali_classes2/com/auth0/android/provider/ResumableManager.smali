.class abstract Lcom/auth0/android/provider/ResumableManager;
.super Ljava/lang/Object;
.source "ResumableManager.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract failure(Lcom/auth0/android/authentication/AuthenticationException;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exception"
        }
    .end annotation
.end method

.method abstract resume(Lcom/auth0/android/provider/AuthorizeResult;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation
.end method

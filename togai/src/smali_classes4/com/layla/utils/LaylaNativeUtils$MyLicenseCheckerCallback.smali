.class Lcom/layla/utils/LaylaNativeUtils$MyLicenseCheckerCallback;
.super Ljava/lang/Object;
.source "LaylaNativeUtils.java"

# interfaces
.implements Lcom/google/android/vending/licensing/LicenseCheckerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layla/utils/LaylaNativeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLicenseCheckerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layla/utils/LaylaNativeUtils;


# direct methods
.method private constructor <init>(Lcom/layla/utils/LaylaNativeUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/layla/utils/LaylaNativeUtils$MyLicenseCheckerCallback;->this$0:Lcom/layla/utils/LaylaNativeUtils;

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/layla/utils/LaylaNativeUtils;Lcom/layla/utils/LaylaNativeUtils$MyLicenseCheckerCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/layla/utils/LaylaNativeUtils$MyLicenseCheckerCallback;-><init>(Lcom/layla/utils/LaylaNativeUtils;)V

    return-void
.end method


# virtual methods
.method public allow(I)V
    .locals 1

    iget-object p1, p0, Lcom/layla/utils/LaylaNativeUtils$MyLicenseCheckerCallback;->this$0:Lcom/layla/utils/LaylaNativeUtils;

    .line 475
    invoke-static {p1}, Lcom/layla/utils/LaylaNativeUtils;->-$$Nest$fgetlicenseCheckerPromise(Lcom/layla/utils/LaylaNativeUtils;)Lcom/facebook/react/bridge/Promise;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/layla/utils/LaylaNativeUtils$MyLicenseCheckerCallback;->this$0:Lcom/layla/utils/LaylaNativeUtils;

    .line 476
    invoke-static {p1}, Lcom/layla/utils/LaylaNativeUtils;->-$$Nest$fgetlicenseCheckerPromise(Lcom/layla/utils/LaylaNativeUtils;)Lcom/facebook/react/bridge/Promise;

    move-result-object p1

    const-string v0, "LICENSED"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/layla/utils/LaylaNativeUtils$MyLicenseCheckerCallback;->this$0:Lcom/layla/utils/LaylaNativeUtils;

    const/4 v0, 0x0

    .line 477
    invoke-static {p1, v0}, Lcom/layla/utils/LaylaNativeUtils;->-$$Nest$fputlicenseCheckerPromise(Lcom/layla/utils/LaylaNativeUtils;Lcom/facebook/react/bridge/Promise;)V

    :cond_0
    return-void
.end method

.method public applicationError(I)V
    .locals 3

    iget-object v0, p0, Lcom/layla/utils/LaylaNativeUtils$MyLicenseCheckerCallback;->this$0:Lcom/layla/utils/LaylaNativeUtils;

    .line 491
    invoke-static {v0}, Lcom/layla/utils/LaylaNativeUtils;->-$$Nest$fgetlicenseCheckerPromise(Lcom/layla/utils/LaylaNativeUtils;)Lcom/facebook/react/bridge/Promise;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layla/utils/LaylaNativeUtils$MyLicenseCheckerCallback;->this$0:Lcom/layla/utils/LaylaNativeUtils;

    .line 492
    invoke-static {v0}, Lcom/layla/utils/LaylaNativeUtils;->-$$Nest$fgetlicenseCheckerPromise(Lcom/layla/utils/LaylaNativeUtils;)Lcom/facebook/react/bridge/Promise;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Application error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ERROR"

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/layla/utils/LaylaNativeUtils$MyLicenseCheckerCallback;->this$0:Lcom/layla/utils/LaylaNativeUtils;

    const/4 v0, 0x0

    .line 493
    invoke-static {p1, v0}, Lcom/layla/utils/LaylaNativeUtils;->-$$Nest$fputlicenseCheckerPromise(Lcom/layla/utils/LaylaNativeUtils;Lcom/facebook/react/bridge/Promise;)V

    :cond_0
    return-void
.end method

.method public dontAllow(I)V
    .locals 1

    iget-object p1, p0, Lcom/layla/utils/LaylaNativeUtils$MyLicenseCheckerCallback;->this$0:Lcom/layla/utils/LaylaNativeUtils;

    .line 483
    invoke-static {p1}, Lcom/layla/utils/LaylaNativeUtils;->-$$Nest$fgetlicenseCheckerPromise(Lcom/layla/utils/LaylaNativeUtils;)Lcom/facebook/react/bridge/Promise;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/layla/utils/LaylaNativeUtils$MyLicenseCheckerCallback;->this$0:Lcom/layla/utils/LaylaNativeUtils;

    .line 484
    invoke-static {p1}, Lcom/layla/utils/LaylaNativeUtils;->-$$Nest$fgetlicenseCheckerPromise(Lcom/layla/utils/LaylaNativeUtils;)Lcom/facebook/react/bridge/Promise;

    move-result-object p1

    const-string v0, "NOT_LICENSED"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/layla/utils/LaylaNativeUtils$MyLicenseCheckerCallback;->this$0:Lcom/layla/utils/LaylaNativeUtils;

    const/4 v0, 0x0

    .line 485
    invoke-static {p1, v0}, Lcom/layla/utils/LaylaNativeUtils;->-$$Nest$fputlicenseCheckerPromise(Lcom/layla/utils/LaylaNativeUtils;Lcom/facebook/react/bridge/Promise;)V

    :cond_0
    return-void
.end method

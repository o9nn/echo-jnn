.class public final Lexpo/modules/localauthentication/LocalAuthenticationModule$authenticationCallback$1;
.super Landroidx/biometric/BiometricPrompt$AuthenticationCallback;
.source "LocalAuthenticationModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/localauthentication/LocalAuthenticationModule;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "expo/modules/localauthentication/LocalAuthenticationModule$authenticationCallback$1",
        "Landroidx/biometric/BiometricPrompt$AuthenticationCallback;",
        "onAuthenticationError",
        "",
        "errMsgId",
        "",
        "errString",
        "",
        "onAuthenticationSucceeded",
        "result",
        "Landroidx/biometric/BiometricPrompt$AuthenticationResult;",
        "expo-local-authentication_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;


# direct methods
.method constructor <init>(Lexpo/modules/localauthentication/LocalAuthenticationModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$authenticationCallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    .line 152
    invoke-direct {p0}, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 3

    const-string v0, "errString"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$authenticationCallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    .line 168
    invoke-static {v0, p1}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$isBiometricUnavailable(Lexpo/modules/localauthentication/LocalAuthenticationModule;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$authenticationCallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    invoke-static {v0}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$isDeviceSecure(Lexpo/modules/localauthentication/LocalAuthenticationModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$authenticationCallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    invoke-static {v0}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$isRetryingWithDeviceCredentials$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$authenticationCallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    .line 169
    invoke-static {v0}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$getAuthOptions$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;)Lexpo/modules/localauthentication/AuthOptions;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Lexpo/modules/localauthentication/AuthOptions;->getDisableDeviceFallback()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$authenticationCallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    .line 176
    invoke-static {v1}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$getPromise$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;)Lexpo/modules/kotlin/Promise;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$authenticationCallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    const/4 p2, 0x1

    .line 177
    invoke-static {p1, p2}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$setRetryingWithDeviceCredentials$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;Z)V

    .line 178
    invoke-static {p1, v0, v1}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$promptDeviceCredentialsFallback(Lexpo/modules/localauthentication/LocalAuthenticationModule;Lexpo/modules/localauthentication/AuthOptions;Lexpo/modules/kotlin/Promise;)V

    return-void

    :cond_0
    iget-object v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$authenticationCallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    const/4 v1, 0x0

    .line 185
    invoke-static {v0, v1}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$setAuthenticating$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;Z)V

    iget-object v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$authenticationCallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    .line 186
    invoke-static {v0, v1}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$setRetryingWithDeviceCredentials$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;Z)V

    iget-object v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$authenticationCallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    const/4 v1, 0x0

    .line 187
    invoke-static {v0, v1}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$setBiometricPrompt$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;Landroidx/biometric/BiometricPrompt;)V

    iget-object v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$authenticationCallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    .line 188
    invoke-static {v0}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$getPromise$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;)Lexpo/modules/kotlin/Promise;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$authenticationCallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    .line 190
    invoke-static {v2, p1}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$convertErrorCode(Lexpo/modules/localauthentication/LocalAuthenticationModule;I)Ljava/lang/String;

    move-result-object p1

    .line 191
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 189
    invoke-static {v2, p1, p2}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$createResponse(Lexpo/modules/localauthentication/LocalAuthenticationModule;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 188
    invoke-interface {v0, p1}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$authenticationCallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    .line 194
    invoke-static {p1, v1}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$setPromise$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;Lexpo/modules/kotlin/Promise;)V

    iget-object p1, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$authenticationCallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    .line 195
    invoke-static {p1, v1}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$setAuthOptions$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;Lexpo/modules/localauthentication/AuthOptions;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V
    .locals 4

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$authenticationCallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    const/4 v0, 0x0

    .line 154
    invoke-static {p1, v0}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$setAuthenticating$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;Z)V

    iget-object p1, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$authenticationCallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    .line 155
    invoke-static {p1, v0}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$setRetryingWithDeviceCredentials$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;Z)V

    iget-object p1, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$authenticationCallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    const/4 v0, 0x0

    .line 156
    invoke-static {p1, v0}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$setBiometricPrompt$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;Landroidx/biometric/BiometricPrompt;)V

    iget-object p1, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$authenticationCallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    .line 157
    invoke-static {p1}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$getPromise$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;)Lexpo/modules/kotlin/Promise;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 158
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "success"

    const/4 v3, 0x1

    .line 159
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 157
    invoke-interface {p1, v1}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$authenticationCallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    .line 162
    invoke-static {p1, v0}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$setPromise$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;Lexpo/modules/kotlin/Promise;)V

    iget-object p1, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$authenticationCallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    .line 163
    invoke-static {p1, v0}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$setAuthOptions$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;Lexpo/modules/localauthentication/AuthOptions;)V

    return-void
.end method

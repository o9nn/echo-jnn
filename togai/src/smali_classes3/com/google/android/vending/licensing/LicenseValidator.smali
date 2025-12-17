.class Lcom/google/android/vending/licensing/LicenseValidator;
.super Ljava/lang/Object;
.source "LicenseValidator.java"


# static fields
.field private static final ERROR_CONTACTING_SERVER:I = 0x101

.field private static final ERROR_INVALID_PACKAGE_NAME:I = 0x102

.field private static final ERROR_NON_MATCHING_UID:I = 0x103

.field private static final ERROR_NOT_MARKET_MANAGED:I = 0x3

.field private static final ERROR_OVER_QUOTA:I = 0x5

.field private static final ERROR_SERVER_FAILURE:I = 0x4

.field private static final LICENSED:I = 0x0

.field private static final LICENSED_OLD_KEY:I = 0x2

.field private static final NOT_LICENSED:I = 0x1

.field private static final SIGNATURE_ALGORITHM:Ljava/lang/String; = "SHA1withRSA"

.field private static final TAG:Ljava/lang/String; = "LicenseValidator"


# instance fields
.field private final mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

.field private final mDeviceLimiter:Lcom/google/android/vending/licensing/DeviceLimiter;

.field private final mNonce:I

.field private final mPackageName:Ljava/lang/String;

.field private final mPolicy:Lcom/google/android/vending/licensing/Policy;

.field private final mVersionCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/vending/licensing/Policy;Lcom/google/android/vending/licensing/DeviceLimiter;Lcom/google/android/vending/licensing/LicenseCheckerCallback;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    iput-object p2, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mDeviceLimiter:Lcom/google/android/vending/licensing/DeviceLimiter;

    iput-object p3, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    iput p4, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mNonce:I

    iput-object p5, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mPackageName:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mVersionCode:Ljava/lang/String;

    return-void
.end method

.method private handleApplicationError(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    .line 225
    invoke-interface {v0, p1}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->applicationError(I)V

    return-void
.end method

.method private handleInvalidResponse()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    const/16 v1, 0x231

    .line 229
    invoke-interface {v0, v1}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->dontAllow(I)V

    return-void
.end method

.method private handleResponse(ILcom/google/android/vending/licensing/ResponseData;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    .line 213
    invoke-interface {v0, p1, p2}, Lcom/google/android/vending/licensing/Policy;->processServerResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    iget-object p2, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    .line 217
    invoke-interface {p2}, Lcom/google/android/vending/licensing/Policy;->allowAccess()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    .line 218
    invoke-interface {p2, p1}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->allow(I)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    .line 220
    invoke-interface {p2, p1}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->dontAllow(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getCallback()Lcom/google/android/vending/licensing/LicenseCheckerCallback;
    .locals 1

    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    return-object v0
.end method

.method public getNonce()I
    .locals 1

    iget v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mNonce:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public verify(Ljava/security/PublicKey;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-string v3, "LicenseValidator"

    if-eqz p2, :cond_1

    if-eq p2, v2, :cond_1

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    move-object p3, p1

    goto/16 :goto_1

    .line 97
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string p1, "Signature verification failed: signedData is empty. (Device not signed-in to any Google accounts?)"

    .line 98
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    return-void

    :cond_2
    const-string v4, "SHA1withRSA"

    .line 104
    invoke-static {v4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v4

    .line 105
    invoke-virtual {v4, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 106
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/security/Signature;->update([B)V

    .line 108
    invoke-static {p4}, Lcom/google/android/vending/licensing/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/security/Signature;->verify([B)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "Signature verification failed."

    .line 109
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/vending/licensing/util/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    .line 129
    :cond_3
    :try_start_1
    invoke-static {p3}, Lcom/google/android/vending/licensing/ResponseData;->parse(Ljava/lang/String;)Lcom/google/android/vending/licensing/ResponseData;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 136
    iget p3, p1, Lcom/google/android/vending/licensing/ResponseData;->responseCode:I

    if-eq p3, p2, :cond_4

    const-string p1, "Response codes don\'t match."

    .line 137
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    return-void

    .line 142
    :cond_4
    iget p3, p1, Lcom/google/android/vending/licensing/ResponseData;->nonce:I

    iget p4, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mNonce:I

    if-eq p3, p4, :cond_5

    const-string p1, "Nonce doesn\'t match."

    .line 143
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    return-void

    .line 148
    :cond_5
    iget-object p3, p1, Lcom/google/android/vending/licensing/ResponseData;->packageName:Ljava/lang/String;

    iget-object p4, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mPackageName:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    const-string p1, "Package name doesn\'t match."

    .line 149
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    return-void

    .line 154
    :cond_6
    iget-object p3, p1, Lcom/google/android/vending/licensing/ResponseData;->versionCode:Ljava/lang/String;

    iget-object p4, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mVersionCode:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    const-string p1, "Version codes don\'t match."

    .line 155
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    return-void

    .line 161
    :cond_7
    iget-object p3, p1, Lcom/google/android/vending/licensing/ResponseData;->userId:Ljava/lang/String;

    .line 162
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_8

    const-string p1, "User identifier is empty."

    .line 163
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    return-void

    :cond_8
    move-object v5, p3

    move-object p3, p1

    move-object p1, v5

    :goto_1
    if-eqz p2, :cond_d

    if-eq p2, v2, :cond_c

    if-eq p2, v1, :cond_d

    const/4 p1, 0x3

    if-eq p2, p1, :cond_b

    const/4 p1, 0x4

    const/16 p4, 0x123

    if-eq p2, p1, :cond_a

    if-eq p2, v0, :cond_9

    packed-switch p2, :pswitch_data_0

    const-string p1, "Unknown response code for license check."

    .line 200
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    goto :goto_2

    .line 194
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/google/android/vending/licensing/LicenseValidator;->handleApplicationError(I)V

    goto :goto_2

    .line 191
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/google/android/vending/licensing/LicenseValidator;->handleApplicationError(I)V

    goto :goto_2

    :pswitch_2
    const-string p1, "Error contacting licensing server."

    .line 179
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-direct {p0, p4, p3}, Lcom/google/android/vending/licensing/LicenseValidator;->handleResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    goto :goto_2

    :cond_9
    const-string p1, "Licensing server is refusing to talk to this device, over quota."

    .line 187
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-direct {p0, p4, p3}, Lcom/google/android/vending/licensing/LicenseValidator;->handleResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    goto :goto_2

    :cond_a
    const-string p1, "An error has occurred on the licensing server."

    .line 183
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-direct {p0, p4, p3}, Lcom/google/android/vending/licensing/LicenseValidator;->handleResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    goto :goto_2

    .line 197
    :cond_b
    invoke-direct {p0, p1}, Lcom/google/android/vending/licensing/LicenseValidator;->handleApplicationError(I)V

    goto :goto_2

    :cond_c
    const/16 p1, 0x231

    .line 176
    invoke-direct {p0, p1, p3}, Lcom/google/android/vending/licensing/LicenseValidator;->handleResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    goto :goto_2

    :cond_d
    iget-object p2, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mDeviceLimiter:Lcom/google/android/vending/licensing/DeviceLimiter;

    .line 172
    invoke-interface {p2, p1}, Lcom/google/android/vending/licensing/DeviceLimiter;->isDeviceAllowed(Ljava/lang/String;)I

    move-result p1

    .line 173
    invoke-direct {p0, p1, p3}, Lcom/google/android/vending/licensing/LicenseValidator;->handleResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    :goto_2
    return-void

    :catch_0
    const-string p1, "Could not parse response."

    .line 131
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    return-void

    :catch_1
    const-string p1, "Could not Base64-decode signature."

    .line 122
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    return-void

    :catch_2
    move-exception p1

    .line 120
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 117
    :catch_3
    invoke-direct {p0, v0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleApplicationError(I)V

    return-void

    :catch_4
    move-exception p1

    .line 115
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

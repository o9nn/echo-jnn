.class public Lcom/layla/utils/LaylaNativeUtils;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "LaylaNativeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layla/utils/LaylaNativeUtils$MyLicenseCheckerCallback;
    }
.end annotation


# static fields
.field private static final BASE64_PUBLIC_KEY:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAo7y+0Jrgo9TwOZXKTEu4P9cAMSKOGEAQmKLNUTv84KkcSarOvwtaRT6LLLPuzPcsa69llykhVxH30erEQdCAhHzAU2uAU4TXcs2R31ARhu3zDtU9+BNNxyjntXUGAXT1af9EwPYjt3WQrjecGPNBk1dMppsG5Rq5ViE5AxgESk7yEAO+/M8+m8JjWu4ortgKpNOZT2dMfAKsF+baZiovYSL9LDYZsvJBZp+7kjPkyAOHdopqGQCz2GnSxs/hxdFmTurnFXsdF3eJA++LWVrQTq9Lvka3I5iGztB6oHchS8gIBBFhk6xvSOWOBBpUsFJL7COYmwF5Y5nWB+0a+3IMzwIDAQAB"

.field private static final PREFS_NAME:Ljava/lang/String; = "LaylaLicensePrefs"

.field private static final PRODUCT_CODE_KEY:Ljava/lang/String; = "LaylaProductCode"

.field private static final SALT:[B


# instance fields
.field private licenseCheckerPromise:Lcom/facebook/react/bridge/Promise;

.field private listenerCount:I

.field private mChecker:Lcom/google/android/vending/licensing/LicenseChecker;

.field private mLicenseCheckerCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;


# direct methods
.method public static synthetic $r8$lambda$MiKDhT9FBXDiSWzwpUKKx8SnwZo(Lcom/layla/utils/LaylaNativeUtils;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/layla/utils/LaylaNativeUtils;->lambda$unlinkLicenseDirect$1(Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aihqmTRc3Pa5eigBKYllDV5FsUs(Lcom/layla/utils/LaylaNativeUtils;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/layla/utils/LaylaNativeUtils;->lambda$checkLicenseDirect$0(Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i265P-3bTbiDcXzUWxpJwQnMxTI(Lcom/layla/utils/LaylaNativeUtils;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/layla/utils/LaylaNativeUtils;->lambda$redeemProductCode$2(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetlicenseCheckerPromise(Lcom/layla/utils/LaylaNativeUtils;)Lcom/facebook/react/bridge/Promise;
    .locals 0

    iget-object p0, p0, Lcom/layla/utils/LaylaNativeUtils;->licenseCheckerPromise:Lcom/facebook/react/bridge/Promise;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputlicenseCheckerPromise(Lcom/layla/utils/LaylaNativeUtils;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    iput-object p1, p0, Lcom/layla/utils/LaylaNativeUtils;->licenseCheckerPromise:Lcom/facebook/react/bridge/Promise;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/layla/utils/LaylaNativeUtils;->SALT:[B

    return-void

    :array_0
    .array-data 1
        -0xat
        -0x4dt
        0xdt
        0x37t
        -0x6et
        -0x72t
        0x7t
        -0x11t
        -0x51t
        -0x3ft
        -0x60t
        -0x62t
        -0x4ft
        0xct
        -0x5bt
        -0x7dt
        0x4at
        0x3dt
        0x1et
        -0x67t
    .end array-data
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/layla/utils/LaylaNativeUtils;->listenerCount:I

    return-void
.end method

.method private synthetic lambda$checkLicenseDirect$0(Lcom/facebook/react/bridge/Promise;)V
    .locals 7

    const-string v0, ""

    const-string v1, "LICENSE_ERROR - Server returned non-200 response: "

    .line 170
    :try_start_0
    invoke-virtual {p0}, Lcom/layla/utils/LaylaNativeUtils;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v2

    const-string v3, "LaylaLicensePrefs"

    const/4 v4, 0x0

    .line 173
    invoke-virtual {v2, v3, v4}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "LaylaProductCode"

    .line 174
    invoke-interface {v3, v5, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-ne v3, v0, :cond_0

    const-string v0, "LICENSE_ERROR - No product code entered. You may be using the Google version."

    .line 177
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 182
    :cond_0
    invoke-virtual {v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    new-instance v2, Ljava/net/URL;

    const-string v5, "https://api.layla-network.ai/promo/validate-code"

    invoke-direct {v2, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    const-string v5, "POST"

    .line 187
    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v5, "Content-Type"

    const-string v6, "application/json"

    .line 188
    invoke-virtual {v2, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    .line 189
    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 191
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "code"

    .line 192
    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "device_id"

    .line 193
    invoke-virtual {v5, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :try_start_1
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 197
    array-length v5, v3

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 198
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 201
    :cond_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_2

    const-string v0, "LICENSED"

    .line 203
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_1

    .line 205
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    .line 195
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LICENSE_ERROR - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$redeemProductCode$2(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 10

    const-string v0, "application/json"

    const-string v1, "REDEEM_ERROR"

    .line 269
    :try_start_0
    invoke-virtual {p0}, Lcom/layla/utils/LaylaNativeUtils;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v2

    .line 272
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 275
    new-instance v4, Ljava/net/URL;

    const-string v5, "https://api.layla-network.ai/promo/redeem-code"

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    const-string v5, "POST"

    .line 277
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v5, "Content-Type"

    .line 278
    invoke-virtual {v4, v5, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Accept"

    .line 279
    invoke-virtual {v4, v5, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 280
    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 282
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "code"

    .line 283
    invoke-virtual {v5, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "device_id"

    .line 284
    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 286
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :try_start_1
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 288
    array-length v6, v5

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    .line 289
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 292
    :cond_0
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v5, 0xc8

    if-lt v3, v5, :cond_1

    const/16 v6, 0x12c

    if-ge v3, v6, :cond_1

    .line 295
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v4, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    goto :goto_0

    .line 297
    :cond_1
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v4, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 300
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    :goto_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 303
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    if-ne v3, v5, :cond_3

    const-string v3, "LaylaLicensePrefs"

    .line 308
    invoke-virtual {v2, v3, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 309
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "LaylaProductCode"

    .line 310
    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 311
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 313
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_3

    .line 315
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Server response: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_0
    move-exception p1

    if-eqz v3, :cond_4

    .line 286
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 318
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private synthetic lambda$unlinkLicenseDirect$1(Lcom/facebook/react/bridge/Promise;)V
    .locals 10

    const-string v0, ""

    const-string v1, "LaylaProductCode"

    const-string v2, "ERROR"

    const-string v3, "Response code: "

    .line 217
    :try_start_0
    invoke-virtual {p0}, Lcom/layla/utils/LaylaNativeUtils;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v4

    const-string v5, "LaylaLicensePrefs"

    const/4 v6, 0x0

    .line 220
    invoke-virtual {v4, v5, v6}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 221
    invoke-interface {v5, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-ne v7, v0, :cond_0

    const-string v0, "No product code entered."

    .line 224
    invoke-interface {p1, v2, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 229
    :cond_0
    invoke-virtual {v4}, Lcom/facebook/react/bridge/ReactApplicationContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "android_id"

    invoke-static {v0, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    new-instance v4, Ljava/net/URL;

    const-string v8, "https://api.layla-network.ai/promo/unlink-code"

    invoke-direct {v4, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    const-string v8, "POST"

    .line 234
    invoke-virtual {v4, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v8, "Content-Type"

    const-string v9, "application/json"

    .line 235
    invoke-virtual {v4, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x1

    .line 236
    invoke-virtual {v4, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 238
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "code"

    .line 239
    invoke-virtual {v8, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "device_id"

    .line 240
    invoke-virtual {v8, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :try_start_1
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    .line 244
    array-length v8, v7

    invoke-virtual {v0, v7, v6, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 245
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 248
    :cond_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v4, 0xc8

    if-ne v0, v4, :cond_2

    .line 251
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 252
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 253
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x0

    .line 255
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_1

    .line 257
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    .line 242
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 260
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public checkLicenseDirect(Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 168
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/layla/utils/LaylaNativeUtils$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/layla/utils/LaylaNativeUtils$$ExternalSyntheticLambda2;-><init>(Lcom/layla/utils/LaylaNativeUtils;Lcom/facebook/react/bridge/Promise;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 210
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public checkLicenseGoogle(Lcom/facebook/react/bridge/Promise;)V
    .locals 8
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    iget-object v0, p0, Lcom/layla/utils/LaylaNativeUtils;->mChecker:Lcom/google/android/vending/licensing/LicenseChecker;

    if-nez v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/layla/utils/LaylaNativeUtils;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    .line 148
    new-instance v1, Lcom/google/android/vending/licensing/LicenseChecker;

    new-instance v2, Lcom/google/android/vending/licensing/ServerManagedPolicy;

    new-instance v3, Lcom/google/android/vending/licensing/AESObfuscator;

    sget-object v4, Lcom/layla/utils/LaylaNativeUtils;->SALT:[B

    .line 150
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "android_id"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/vending/licensing/AESObfuscator;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v0, v3}, Lcom/google/android/vending/licensing/ServerManagedPolicy;-><init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Obfuscator;)V

    const-string v3, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAo7y+0Jrgo9TwOZXKTEu4P9cAMSKOGEAQmKLNUTv84KkcSarOvwtaRT6LLLPuzPcsa69llykhVxH30erEQdCAhHzAU2uAU4TXcs2R31ARhu3zDtU9+BNNxyjntXUGAXT1af9EwPYjt3WQrjecGPNBk1dMppsG5Rq5ViE5AxgESk7yEAO+/M8+m8JjWu4ortgKpNOZT2dMfAKsF+baZiovYSL9LDYZsvJBZp+7kjPkyAOHdopqGQCz2GnSxs/hxdFmTurnFXsdF3eJA++LWVrQTq9Lvka3I5iGztB6oHchS8gIBBFhk6xvSOWOBBpUsFJL7COYmwF5Y5nWB+0a+3IMzwIDAQAB"

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/vending/licensing/LicenseChecker;-><init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Policy;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/layla/utils/LaylaNativeUtils;->mChecker:Lcom/google/android/vending/licensing/LicenseChecker;

    .line 154
    new-instance v0, Lcom/layla/utils/LaylaNativeUtils$MyLicenseCheckerCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/layla/utils/LaylaNativeUtils$MyLicenseCheckerCallback;-><init>(Lcom/layla/utils/LaylaNativeUtils;Lcom/layla/utils/LaylaNativeUtils$MyLicenseCheckerCallback-IA;)V

    iput-object v0, p0, Lcom/layla/utils/LaylaNativeUtils;->mLicenseCheckerCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    :cond_0
    iget-object v0, p0, Lcom/layla/utils/LaylaNativeUtils;->licenseCheckerPromise:Lcom/facebook/react/bridge/Promise;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/layla/utils/LaylaNativeUtils;->licenseCheckerPromise:Lcom/facebook/react/bridge/Promise;

    iget-object p1, p0, Lcom/layla/utils/LaylaNativeUtils;->mChecker:Lcom/google/android/vending/licensing/LicenseChecker;

    iget-object v0, p0, Lcom/layla/utils/LaylaNativeUtils;->mLicenseCheckerCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    .line 160
    invoke-virtual {p1, v0}, Lcom/google/android/vending/licensing/LicenseChecker;->checkAccess(Lcom/google/android/vending/licensing/LicenseCheckerCallback;)V

    goto :goto_0

    :cond_1
    const-string v0, "ERROR"

    const-string v1, "License check already in progress"

    .line 162
    invoke-interface {p1, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public copyFile(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 433
    :try_start_0
    invoke-virtual {p0}, Lcom/layla/utils/LaylaNativeUtils;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 434
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 435
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 439
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 442
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    .line 449
    invoke-virtual {v0, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    const/16 p2, 0x2000

    :try_start_1
    new-array p2, p2, [B

    .line 458
    :goto_1
    invoke-virtual {v1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x0

    .line 459
    invoke-virtual {p1, p2, v2, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 462
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 463
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    const/4 p1, 0x0

    .line 466
    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception p2

    .line 462
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 463
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 464
    throw p2

    .line 451
    :cond_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 452
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Failed to open output stream"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 446
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Failed to open input stream"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 468
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to copy file: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ERROR"

    invoke-interface {p3, p2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public getContentUriMetadata(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 12
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "_size"

    const-string v1, "_display_name"

    .line 346
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 347
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v9

    .line 350
    invoke-virtual {p0}, Lcom/layla/utils/LaylaNativeUtils;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "mimeType"

    .line 352
    invoke-interface {v9, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_0
    invoke-virtual {p0}, Lcom/layla/utils/LaylaNativeUtils;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_9

    .line 357
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 359
    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    .line 361
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_6

    aget-object v6, v3, v5

    .line 362
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const/4 v10, -0x1

    if-ne v7, v10, :cond_1

    goto :goto_1

    .line 368
    :cond_1
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getType(I)I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_4

    const/4 v11, 0x2

    if-eq v10, v11, :cond_3

    const/4 v11, 0x3

    if-eq v10, v11, :cond_2

    goto :goto_1

    .line 370
    :cond_2
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 372
    invoke-interface {v9, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 384
    :cond_3
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-nez v10, :cond_5

    .line 385
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getFloat(I)F

    move-result v7

    float-to-double v10, v7

    invoke-interface {v9, v6, v10, v11}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    goto :goto_1

    .line 377
    :cond_4
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-nez v10, :cond_5

    .line 379
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    long-to-double v10, v10

    invoke-interface {v9, v6, v10, v11}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    :cond_5
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 393
    :cond_6
    invoke-interface {v9, v1}, Lcom/facebook/react/bridge/WritableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 394
    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 396
    invoke-interface {v9, v1, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :cond_7
    invoke-interface {v9, v0}, Lcom/facebook/react/bridge/WritableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_9

    .line 403
    :try_start_2
    invoke-virtual {p0}, Lcom/layla/utils/LaylaNativeUtils;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "r"

    .line 404
    invoke-virtual {v1, v8, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 406
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-interface {v9, v0, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 407
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "FileMetadata"

    const-string v3, "Couldn\'t get file size"

    .line 411
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    if-eqz v2, :cond_8

    .line 356
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_2
    throw p1

    :cond_9
    :goto_3
    if-eqz v2, :cond_a

    .line 415
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_a
    const-string v0, "uri"

    .line 418
    invoke-interface {v9, v0, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-interface {p2, v9}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    const-string v0, "UNKNOWN_ERROR"

    const-string v1, "Error reading metadata"

    .line 426
    invoke-interface {p2, v0, v1, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_2
    move-exception p1

    const-string v0, "INVALID_URI"

    const-string v1, "Invalid content URI provided"

    .line 424
    invoke-interface {p2, v0, v1, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_3
    move-exception p1

    const-string v0, "SECURITY_ERROR"

    const-string v1, "Security exception reading metadata"

    .line 422
    invoke-interface {p2, v0, v1, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method

.method public getIntent(Lcom/facebook/react/bridge/Promise;)V
    .locals 7
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 99
    invoke-virtual {p0}, Lcom/layla/utils/LaylaNativeUtils;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Unable to get current activity"

    .line 101
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;)V

    return-void

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/layla/utils/LaylaNativeUtils;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 108
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 111
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, "action"

    .line 112
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_1
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 118
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 119
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 120
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 121
    check-cast v5, Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_2
    instance-of v6, v5, Ljava/lang/Boolean;

    if-eqz v6, :cond_3

    .line 123
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 124
    :cond_3
    instance-of v6, v5, Ljava/lang/Double;

    if-eqz v6, :cond_4

    .line 125
    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-interface {v2, v4, v5, v6}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 126
    :cond_4
    instance-of v6, v5, Ljava/lang/Integer;

    if-eqz v6, :cond_5

    .line 127
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 128
    :cond_5
    instance-of v6, v5, Ljava/lang/Long;

    if-eqz v6, :cond_6

    .line 129
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    long-to-double v5, v5

    invoke-interface {v2, v4, v5, v6}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 131
    :cond_6
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_7
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 140
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    :cond_8
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "LaylaNativeUtils"

    return-object v0
.end method

.method public redeemProductCode(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 267
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/layla/utils/LaylaNativeUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/layla/utils/LaylaNativeUtils$$ExternalSyntheticLambda0;-><init>(Lcom/layla/utils/LaylaNativeUtils;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 320
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public releasePersistableUriPermission(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 87
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 89
    invoke-virtual {p0}, Lcom/layla/utils/LaylaNativeUtils;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->releasePersistableUriPermission(Landroid/net/Uri;I)V

    const/4 p1, 0x0

    .line 91
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ERROR"

    .line 93
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public startLogCat(Lcom/facebook/react/bridge/Promise;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 326
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/layla/utils/LaylaNativeUtils;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/logcat.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 329
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 331
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 334
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "logcat"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "-f"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const-string v0, "*:V"

    const/4 v3, 0x3

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    const/4 v0, 0x0

    .line 336
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to redirect logcat output to file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ERROR"

    invoke-interface {p1, v1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public takePersistableUriPermission(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 74
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 76
    invoke-virtual {p0}, Lcom/layla/utils/LaylaNativeUtils;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    const/4 p1, 0x0

    .line 78
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ERROR"

    .line 80
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public unlinkLicenseDirect(Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 215
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/layla/utils/LaylaNativeUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/layla/utils/LaylaNativeUtils$$ExternalSyntheticLambda1;-><init>(Lcom/layla/utils/LaylaNativeUtils;Lcom/facebook/react/bridge/Promise;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 262
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

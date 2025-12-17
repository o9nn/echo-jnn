.class public Lcom/layla/tokenizers/Tokenizers;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "Tokenizers.java"


# instance fields
.field private listenerCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "tokenizers-jni"

    .line 18
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/layla/tokenizers/Tokenizers;->listenerCount:I

    return-void
.end method

.method private native tkn_tokenize_bgem3(Ljava/lang/String;Ljava/lang/String;)[I
.end method

.method private native tkn_tokenize_bgesmallen(Ljava/lang/String;Ljava/lang/String;)[I
.end method

.method private native tkn_tokenize_roberta(Ljava/lang/String;Ljava/lang/String;)[I
.end method

.method private native tkn_tokenize_sentencepiece(Ljava/lang/String;Ljava/lang/String;)[I
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Tokenizers"

    return-object v0
.end method

.method public tokenizeBgeM3(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 40
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/layla/tokenizers/Tokenizers;->tkn_tokenize_bgem3(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p1

    .line 43
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object p2

    .line 44
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 45
    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    :cond_0
    invoke-interface {p3, p2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "ERROR"

    .line 50
    invoke-interface {p3, p2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public tokenizeBgeSmallEn(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 57
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/layla/tokenizers/Tokenizers;->tkn_tokenize_bgesmallen(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p1

    .line 60
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object p2

    .line 61
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 62
    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    :cond_0
    invoke-interface {p3, p2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "ERROR"

    .line 67
    invoke-interface {p3, p2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public tokenizeRoberta(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 91
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/layla/tokenizers/Tokenizers;->tkn_tokenize_roberta(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p1

    .line 94
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object p2

    .line 95
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 96
    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :cond_0
    invoke-interface {p3, p2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "ERROR"

    .line 101
    invoke-interface {p3, p2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public tokenizeSentencePiece(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 74
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/layla/tokenizers/Tokenizers;->tkn_tokenize_sentencepiece(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p1

    .line 77
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object p2

    .line 78
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 79
    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    :cond_0
    invoke-interface {p3, p2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "ERROR"

    .line 84
    invoke-interface {p3, p2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

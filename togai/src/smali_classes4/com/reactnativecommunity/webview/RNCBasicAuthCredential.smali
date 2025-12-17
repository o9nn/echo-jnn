.class Lcom/reactnativecommunity/webview/RNCBasicAuthCredential;
.super Ljava/lang/Object;
.source "RNCBasicAuthCredential.java"


# instance fields
.field password:Ljava/lang/String;

.field username:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/reactnativecommunity/webview/RNCBasicAuthCredential;->username:Ljava/lang/String;

    iput-object p2, p0, Lcom/reactnativecommunity/webview/RNCBasicAuthCredential;->password:Ljava/lang/String;

    return-void
.end method

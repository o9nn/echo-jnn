.class final Lnet/sf/sevenzipjbinding/SevenZip$1;
.super Ljava/lang/Object;
.source "SevenZip.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/sevenzipjbinding/SevenZip;->nativeInitialization()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$errorMessage:[Ljava/lang/String;

.field final synthetic val$throwable:[Ljava/lang/Throwable;


# direct methods
.method constructor <init>([Ljava/lang/String;[Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/sevenzipjbinding/SevenZip$1;->val$errorMessage:[Ljava/lang/String;

    iput-object p2, p0, Lnet/sf/sevenzipjbinding/SevenZip$1;->val$throwable:[Ljava/lang/Throwable;

    .line 721
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 721
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/SevenZip$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lnet/sf/sevenzipjbinding/SevenZip$1;->val$errorMessage:[Ljava/lang/String;

    .line 724
    invoke-static {}, Lnet/sf/sevenzipjbinding/SevenZip;->access$000()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lnet/sf/sevenzipjbinding/SevenZip$1;->val$throwable:[Ljava/lang/Throwable;

    .line 726
    aput-object v1, v2, v0

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

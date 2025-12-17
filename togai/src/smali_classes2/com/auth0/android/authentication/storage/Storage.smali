.class public interface abstract Lcom/auth0/android/authentication/storage/Storage;
.super Ljava/lang/Object;
.source "Storage.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0008\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0017\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0004\u001a\u00020\u0005H&\u00a2\u0006\u0002\u0010\u0008J\u0017\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0004\u001a\u00020\u0005H&\u00a2\u0006\u0002\u0010\u000bJ\u0017\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0004\u001a\u00020\u0005H&\u00a2\u0006\u0002\u0010\u000eJ\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0004\u001a\u00020\u0005H&J\u001f\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0007H&\u00a2\u0006\u0002\u0010\u0012J\u001f\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0011\u001a\u0004\u0018\u00010\nH&\u00a2\u0006\u0002\u0010\u0013J\u001f\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0011\u001a\u0004\u0018\u00010\rH&\u00a2\u0006\u0002\u0010\u0014J\u001a\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0005H&\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/auth0/android/authentication/storage/Storage;",
        "",
        "remove",
        "",
        "name",
        "",
        "retrieveBoolean",
        "",
        "(Ljava/lang/String;)Ljava/lang/Boolean;",
        "retrieveInteger",
        "",
        "(Ljava/lang/String;)Ljava/lang/Integer;",
        "retrieveLong",
        "",
        "(Ljava/lang/String;)Ljava/lang/Long;",
        "retrieveString",
        "store",
        "value",
        "(Ljava/lang/String;Ljava/lang/Boolean;)V",
        "(Ljava/lang/String;Ljava/lang/Integer;)V",
        "(Ljava/lang/String;Ljava/lang/Long;)V",
        "auth0_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract remove(Ljava/lang/String;)V
.end method

.method public abstract retrieveBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method public abstract retrieveInteger(Ljava/lang/String;)Ljava/lang/Integer;
.end method

.method public abstract retrieveLong(Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract retrieveString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract store(Ljava/lang/String;Ljava/lang/Boolean;)V
.end method

.method public abstract store(Ljava/lang/String;Ljava/lang/Integer;)V
.end method

.method public abstract store(Ljava/lang/String;Ljava/lang/Long;)V
.end method

.method public abstract store(Ljava/lang/String;Ljava/lang/String;)V
.end method

.class public final Lexpo/modules/haptics/arguments/HapticsInvalidArgumentException;
.super Lexpo/modules/core/errors/CodedException;
.source "HapticsInvalidArgumentException.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0011\u0008\u0000\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0003H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Lexpo/modules/haptics/arguments/HapticsInvalidArgumentException;",
        "Lexpo/modules/core/errors/CodedException;",
        "message",
        "",
        "(Ljava/lang/String;)V",
        "getCode",
        "expo-haptics_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lexpo/modules/core/errors/CodedException;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    const-string v0, "E_HAPTICS_INVALID_ARGUMENT"

    return-object v0
.end method

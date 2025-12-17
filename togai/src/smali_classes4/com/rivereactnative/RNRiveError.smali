.class public final enum Lcom/rivereactnative/RNRiveError;
.super Ljava/lang/Enum;
.source "RNRiveError.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rivereactnative/RNRiveError$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rivereactnative/RNRiveError;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0012\u0008\u0086\u0081\u0002\u0018\u0000 \u00142\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0014B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\n\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/rivereactnative/RNRiveError;",
        "",
        "mValue",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "message",
        "getMessage",
        "()Ljava/lang/String;",
        "setMessage",
        "(Ljava/lang/String;)V",
        "toString",
        "FileNotFound",
        "UnsupportedRuntimeVersion",
        "IncorrectRiveFileUrl",
        "IncorrectAnimationName",
        "MalformedFile",
        "IncorrectArtboardName",
        "IncorrectStateMachineName",
        "IncorrectStateMachineInput",
        "TextRunNotFoundError",
        "Companion",
        "rive-react-native_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/rivereactnative/RNRiveError;

.field public static final Companion:Lcom/rivereactnative/RNRiveError$Companion;

.field public static final enum FileNotFound:Lcom/rivereactnative/RNRiveError;

.field public static final enum IncorrectAnimationName:Lcom/rivereactnative/RNRiveError;

.field public static final enum IncorrectArtboardName:Lcom/rivereactnative/RNRiveError;

.field public static final enum IncorrectRiveFileUrl:Lcom/rivereactnative/RNRiveError;

.field public static final enum IncorrectStateMachineInput:Lcom/rivereactnative/RNRiveError;

.field public static final enum IncorrectStateMachineName:Lcom/rivereactnative/RNRiveError;

.field public static final enum MalformedFile:Lcom/rivereactnative/RNRiveError;

.field public static final enum TextRunNotFoundError:Lcom/rivereactnative/RNRiveError;

.field public static final enum UnsupportedRuntimeVersion:Lcom/rivereactnative/RNRiveError;


# instance fields
.field private final mValue:Ljava/lang/String;

.field private message:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/rivereactnative/RNRiveError;
    .locals 9

    sget-object v0, Lcom/rivereactnative/RNRiveError;->FileNotFound:Lcom/rivereactnative/RNRiveError;

    sget-object v1, Lcom/rivereactnative/RNRiveError;->UnsupportedRuntimeVersion:Lcom/rivereactnative/RNRiveError;

    sget-object v2, Lcom/rivereactnative/RNRiveError;->IncorrectRiveFileUrl:Lcom/rivereactnative/RNRiveError;

    sget-object v3, Lcom/rivereactnative/RNRiveError;->IncorrectAnimationName:Lcom/rivereactnative/RNRiveError;

    sget-object v4, Lcom/rivereactnative/RNRiveError;->MalformedFile:Lcom/rivereactnative/RNRiveError;

    sget-object v5, Lcom/rivereactnative/RNRiveError;->IncorrectArtboardName:Lcom/rivereactnative/RNRiveError;

    sget-object v6, Lcom/rivereactnative/RNRiveError;->IncorrectStateMachineName:Lcom/rivereactnative/RNRiveError;

    sget-object v7, Lcom/rivereactnative/RNRiveError;->IncorrectStateMachineInput:Lcom/rivereactnative/RNRiveError;

    sget-object v8, Lcom/rivereactnative/RNRiveError;->TextRunNotFoundError:Lcom/rivereactnative/RNRiveError;

    filled-new-array/range {v0 .. v8}, [Lcom/rivereactnative/RNRiveError;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 6
    new-instance v0, Lcom/rivereactnative/RNRiveError;

    const-string v1, "FileNotFound"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/rivereactnative/RNRiveError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/rivereactnative/RNRiveError;->FileNotFound:Lcom/rivereactnative/RNRiveError;

    .line 7
    new-instance v0, Lcom/rivereactnative/RNRiveError;

    const-string v1, "UnsupportedRuntimeVersion"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/rivereactnative/RNRiveError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/rivereactnative/RNRiveError;->UnsupportedRuntimeVersion:Lcom/rivereactnative/RNRiveError;

    .line 8
    new-instance v0, Lcom/rivereactnative/RNRiveError;

    const-string v1, "IncorrectRiveFileUrl"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/rivereactnative/RNRiveError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/rivereactnative/RNRiveError;->IncorrectRiveFileUrl:Lcom/rivereactnative/RNRiveError;

    .line 9
    new-instance v0, Lcom/rivereactnative/RNRiveError;

    const-string v1, "IncorrectAnimationName"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1}, Lcom/rivereactnative/RNRiveError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/rivereactnative/RNRiveError;->IncorrectAnimationName:Lcom/rivereactnative/RNRiveError;

    .line 10
    new-instance v0, Lcom/rivereactnative/RNRiveError;

    const-string v1, "MalformedFile"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v1}, Lcom/rivereactnative/RNRiveError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/rivereactnative/RNRiveError;->MalformedFile:Lcom/rivereactnative/RNRiveError;

    .line 11
    new-instance v0, Lcom/rivereactnative/RNRiveError;

    const-string v1, "IncorrectArtboardName"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v1}, Lcom/rivereactnative/RNRiveError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/rivereactnative/RNRiveError;->IncorrectArtboardName:Lcom/rivereactnative/RNRiveError;

    .line 12
    new-instance v0, Lcom/rivereactnative/RNRiveError;

    const-string v1, "IncorrectStateMachineName"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v1}, Lcom/rivereactnative/RNRiveError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/rivereactnative/RNRiveError;->IncorrectStateMachineName:Lcom/rivereactnative/RNRiveError;

    .line 13
    new-instance v0, Lcom/rivereactnative/RNRiveError;

    const-string v1, "IncorrectStateMachineInput"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v1}, Lcom/rivereactnative/RNRiveError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/rivereactnative/RNRiveError;->IncorrectStateMachineInput:Lcom/rivereactnative/RNRiveError;

    .line 14
    new-instance v0, Lcom/rivereactnative/RNRiveError;

    const-string v1, "TextRunNotFoundError"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v1}, Lcom/rivereactnative/RNRiveError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/rivereactnative/RNRiveError;->TextRunNotFoundError:Lcom/rivereactnative/RNRiveError;

    invoke-static {}, Lcom/rivereactnative/RNRiveError;->$values()[Lcom/rivereactnative/RNRiveError;

    move-result-object v0

    sput-object v0, Lcom/rivereactnative/RNRiveError;->$VALUES:[Lcom/rivereactnative/RNRiveError;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/rivereactnative/RNRiveError;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/rivereactnative/RNRiveError$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/rivereactnative/RNRiveError$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/rivereactnative/RNRiveError;->Companion:Lcom/rivereactnative/RNRiveError$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/rivereactnative/RNRiveError;->mValue:Ljava/lang/String;

    const-string p1, "Default message"

    iput-object p1, p0, Lcom/rivereactnative/RNRiveError;->message:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/rivereactnative/RNRiveError;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/rivereactnative/RNRiveError;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rivereactnative/RNRiveError;
    .locals 1

    const-class v0, Lcom/rivereactnative/RNRiveError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rivereactnative/RNRiveError;

    return-object p0
.end method

.method public static values()[Lcom/rivereactnative/RNRiveError;
    .locals 1

    sget-object v0, Lcom/rivereactnative/RNRiveError;->$VALUES:[Lcom/rivereactnative/RNRiveError;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rivereactnative/RNRiveError;

    return-object v0
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rivereactnative/RNRiveError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final setMessage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/rivereactnative/RNRiveError;->message:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rivereactnative/RNRiveError;->mValue:Ljava/lang/String;

    return-object v0
.end method

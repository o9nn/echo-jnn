.class public final enum Lnet/dinglisch/android/tasker/TaskerPlugin$Encoding;
.super Ljava/lang/Enum;
.source "TaskerPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/dinglisch/android/tasker/TaskerPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Encoding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/dinglisch/android/tasker/TaskerPlugin$Encoding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/dinglisch/android/tasker/TaskerPlugin$Encoding;

.field public static final enum JSON:Lnet/dinglisch/android/tasker/TaskerPlugin$Encoding;


# direct methods
.method private static synthetic $values()[Lnet/dinglisch/android/tasker/TaskerPlugin$Encoding;
    .locals 1

    sget-object v0, Lnet/dinglisch/android/tasker/TaskerPlugin$Encoding;->JSON:Lnet/dinglisch/android/tasker/TaskerPlugin$Encoding;

    filled-new-array {v0}, [Lnet/dinglisch/android/tasker/TaskerPlugin$Encoding;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 411
    new-instance v0, Lnet/dinglisch/android/tasker/TaskerPlugin$Encoding;

    const-string v1, "JSON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/dinglisch/android/tasker/TaskerPlugin$Encoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/dinglisch/android/tasker/TaskerPlugin$Encoding;->JSON:Lnet/dinglisch/android/tasker/TaskerPlugin$Encoding;

    .line 410
    invoke-static {}, Lnet/dinglisch/android/tasker/TaskerPlugin$Encoding;->$values()[Lnet/dinglisch/android/tasker/TaskerPlugin$Encoding;

    move-result-object v0

    sput-object v0, Lnet/dinglisch/android/tasker/TaskerPlugin$Encoding;->$VALUES:[Lnet/dinglisch/android/tasker/TaskerPlugin$Encoding;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 410
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/dinglisch/android/tasker/TaskerPlugin$Encoding;
    .locals 1

    const-class v0, Lnet/dinglisch/android/tasker/TaskerPlugin$Encoding;

    .line 410
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/dinglisch/android/tasker/TaskerPlugin$Encoding;

    return-object p0
.end method

.method public static values()[Lnet/dinglisch/android/tasker/TaskerPlugin$Encoding;
    .locals 1

    sget-object v0, Lnet/dinglisch/android/tasker/TaskerPlugin$Encoding;->$VALUES:[Lnet/dinglisch/android/tasker/TaskerPlugin$Encoding;

    .line 410
    invoke-virtual {v0}, [Lnet/dinglisch/android/tasker/TaskerPlugin$Encoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/dinglisch/android/tasker/TaskerPlugin$Encoding;

    return-object v0
.end method

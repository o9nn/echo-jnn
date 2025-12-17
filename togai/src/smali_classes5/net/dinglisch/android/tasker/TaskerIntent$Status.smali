.class public final enum Lnet/dinglisch/android/tasker/TaskerIntent$Status;
.super Ljava/lang/Enum;
.source "TaskerIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/dinglisch/android/tasker/TaskerIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/dinglisch/android/tasker/TaskerIntent$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/dinglisch/android/tasker/TaskerIntent$Status;

.field public static final enum AccessBlocked:Lnet/dinglisch/android/tasker/TaskerIntent$Status;

.field public static final enum NoPermission:Lnet/dinglisch/android/tasker/TaskerIntent$Status;

.field public static final enum NoReceiver:Lnet/dinglisch/android/tasker/TaskerIntent$Status;

.field public static final enum NotEnabled:Lnet/dinglisch/android/tasker/TaskerIntent$Status;

.field public static final enum NotInstalled:Lnet/dinglisch/android/tasker/TaskerIntent$Status;

.field public static final enum OK:Lnet/dinglisch/android/tasker/TaskerIntent$Status;


# direct methods
.method private static synthetic $values()[Lnet/dinglisch/android/tasker/TaskerIntent$Status;
    .locals 6

    sget-object v0, Lnet/dinglisch/android/tasker/TaskerIntent$Status;->NotInstalled:Lnet/dinglisch/android/tasker/TaskerIntent$Status;

    sget-object v1, Lnet/dinglisch/android/tasker/TaskerIntent$Status;->NoPermission:Lnet/dinglisch/android/tasker/TaskerIntent$Status;

    sget-object v2, Lnet/dinglisch/android/tasker/TaskerIntent$Status;->NotEnabled:Lnet/dinglisch/android/tasker/TaskerIntent$Status;

    sget-object v3, Lnet/dinglisch/android/tasker/TaskerIntent$Status;->AccessBlocked:Lnet/dinglisch/android/tasker/TaskerIntent$Status;

    sget-object v4, Lnet/dinglisch/android/tasker/TaskerIntent$Status;->NoReceiver:Lnet/dinglisch/android/tasker/TaskerIntent$Status;

    sget-object v5, Lnet/dinglisch/android/tasker/TaskerIntent$Status;->OK:Lnet/dinglisch/android/tasker/TaskerIntent$Status;

    filled-new-array/range {v0 .. v5}, [Lnet/dinglisch/android/tasker/TaskerIntent$Status;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 110
    new-instance v0, Lnet/dinglisch/android/tasker/TaskerIntent$Status;

    const-string v1, "NotInstalled"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/dinglisch/android/tasker/TaskerIntent$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/dinglisch/android/tasker/TaskerIntent$Status;->NotInstalled:Lnet/dinglisch/android/tasker/TaskerIntent$Status;

    new-instance v0, Lnet/dinglisch/android/tasker/TaskerIntent$Status;

    const-string v1, "NoPermission"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/dinglisch/android/tasker/TaskerIntent$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/dinglisch/android/tasker/TaskerIntent$Status;->NoPermission:Lnet/dinglisch/android/tasker/TaskerIntent$Status;

    new-instance v0, Lnet/dinglisch/android/tasker/TaskerIntent$Status;

    const-string v1, "NotEnabled"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lnet/dinglisch/android/tasker/TaskerIntent$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/dinglisch/android/tasker/TaskerIntent$Status;->NotEnabled:Lnet/dinglisch/android/tasker/TaskerIntent$Status;

    new-instance v0, Lnet/dinglisch/android/tasker/TaskerIntent$Status;

    const-string v1, "AccessBlocked"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lnet/dinglisch/android/tasker/TaskerIntent$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/dinglisch/android/tasker/TaskerIntent$Status;->AccessBlocked:Lnet/dinglisch/android/tasker/TaskerIntent$Status;

    new-instance v0, Lnet/dinglisch/android/tasker/TaskerIntent$Status;

    const-string v1, "NoReceiver"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lnet/dinglisch/android/tasker/TaskerIntent$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/dinglisch/android/tasker/TaskerIntent$Status;->NoReceiver:Lnet/dinglisch/android/tasker/TaskerIntent$Status;

    new-instance v0, Lnet/dinglisch/android/tasker/TaskerIntent$Status;

    const-string v1, "OK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lnet/dinglisch/android/tasker/TaskerIntent$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/dinglisch/android/tasker/TaskerIntent$Status;->OK:Lnet/dinglisch/android/tasker/TaskerIntent$Status;

    invoke-static {}, Lnet/dinglisch/android/tasker/TaskerIntent$Status;->$values()[Lnet/dinglisch/android/tasker/TaskerIntent$Status;

    move-result-object v0

    sput-object v0, Lnet/dinglisch/android/tasker/TaskerIntent$Status;->$VALUES:[Lnet/dinglisch/android/tasker/TaskerIntent$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/dinglisch/android/tasker/TaskerIntent$Status;
    .locals 1

    const-class v0, Lnet/dinglisch/android/tasker/TaskerIntent$Status;

    .line 110
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/dinglisch/android/tasker/TaskerIntent$Status;

    return-object p0
.end method

.method public static values()[Lnet/dinglisch/android/tasker/TaskerIntent$Status;
    .locals 1

    sget-object v0, Lnet/dinglisch/android/tasker/TaskerIntent$Status;->$VALUES:[Lnet/dinglisch/android/tasker/TaskerIntent$Status;

    .line 110
    invoke-virtual {v0}, [Lnet/dinglisch/android/tasker/TaskerIntent$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/dinglisch/android/tasker/TaskerIntent$Status;

    return-object v0
.end method

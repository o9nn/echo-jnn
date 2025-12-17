.class public abstract enum Lnet/bytebuddy/asm/Advice$ExceptionHandler$Default;
.super Ljava/lang/Enum;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$ExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$ExceptionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/asm/Advice$ExceptionHandler$Default;",
        ">;",
        "Lnet/bytebuddy/asm/Advice$ExceptionHandler;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/asm/Advice$ExceptionHandler$Default;

.field public static final enum PRINTING:Lnet/bytebuddy/asm/Advice$ExceptionHandler$Default;

.field public static final enum SUPPRESSING:Lnet/bytebuddy/asm/Advice$ExceptionHandler$Default;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 5974
    new-instance v0, Lnet/bytebuddy/asm/Advice$ExceptionHandler$Default$1;

    const-string v1, "SUPPRESSING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/asm/Advice$ExceptionHandler$Default$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/asm/Advice$ExceptionHandler$Default;->SUPPRESSING:Lnet/bytebuddy/asm/Advice$ExceptionHandler$Default;

    .line 5984
    new-instance v1, Lnet/bytebuddy/asm/Advice$ExceptionHandler$Default$2;

    const-string v3, "PRINTING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/bytebuddy/asm/Advice$ExceptionHandler$Default$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/bytebuddy/asm/Advice$ExceptionHandler$Default;->PRINTING:Lnet/bytebuddy/asm/Advice$ExceptionHandler$Default;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/bytebuddy/asm/Advice$ExceptionHandler$Default;

    .line 5969
    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lnet/bytebuddy/asm/Advice$ExceptionHandler$Default;->$VALUES:[Lnet/bytebuddy/asm/Advice$ExceptionHandler$Default;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5969
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/bytebuddy/asm/Advice$1;)V
    .locals 0

    .line 5969
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/asm/Advice$ExceptionHandler$Default;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/asm/Advice$ExceptionHandler$Default;
    .locals 1

    const-class v0, Lnet/bytebuddy/asm/Advice$ExceptionHandler$Default;

    .line 5969
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/asm/Advice$ExceptionHandler$Default;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/asm/Advice$ExceptionHandler$Default;
    .locals 1

    sget-object v0, Lnet/bytebuddy/asm/Advice$ExceptionHandler$Default;->$VALUES:[Lnet/bytebuddy/asm/Advice$ExceptionHandler$Default;

    .line 5969
    invoke-virtual {v0}, [Lnet/bytebuddy/asm/Advice$ExceptionHandler$Default;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/asm/Advice$ExceptionHandler$Default;

    return-object v0
.end method

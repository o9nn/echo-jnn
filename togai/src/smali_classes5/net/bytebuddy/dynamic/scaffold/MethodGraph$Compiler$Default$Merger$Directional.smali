.class public final enum Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Merger$Directional;
.super Ljava/lang/Enum;
.source "MethodGraph.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Merger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Merger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Directional"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Merger$Directional;",
        ">;",
        "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Merger;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Merger$Directional;

.field public static final enum LEFT:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Merger$Directional;

.field public static final enum RIGHT:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Merger$Directional;


# instance fields
.field private final left:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 802
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Merger$Directional;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Merger$Directional;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Merger$Directional;->LEFT:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Merger$Directional;

    .line 807
    new-instance v1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Merger$Directional;

    const-string v4, "RIGHT"

    invoke-direct {v1, v4, v3, v2}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Merger$Directional;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Merger$Directional;->RIGHT:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Merger$Directional;

    filled-new-array {v0, v1}, [Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Merger$Directional;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Merger$Directional;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Merger$Directional;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 819
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Merger$Directional;->left:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Merger$Directional;
    .locals 1

    const-class v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Merger$Directional;

    .line 797
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Merger$Directional;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Merger$Directional;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Merger$Directional;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Merger$Directional;

    .line 797
    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Merger$Directional;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Merger$Directional;

    return-object v0
.end method


# virtual methods
.method public merge(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/description/method/MethodDescription;
    .locals 1

    iget-boolean v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Merger$Directional;->left:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method

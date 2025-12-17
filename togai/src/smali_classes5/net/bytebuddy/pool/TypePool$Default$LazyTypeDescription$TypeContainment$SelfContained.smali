.class public final enum Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$SelfContained;
.super Ljava/lang/Enum;
.source "TypePool.java"

# interfaces
.implements Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SelfContained"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$SelfContained;",
        ">;",
        "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$SelfContained;

.field public static final enum INSTANCE:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$SelfContained;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 3221
    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$SelfContained;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$SelfContained;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$SelfContained;->INSTANCE:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$SelfContained;

    filled-new-array {v0}, [Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$SelfContained;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$SelfContained;->$VALUES:[Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$SelfContained;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3216
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$SelfContained;
    .locals 1

    const-class v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$SelfContained;

    .line 3216
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$SelfContained;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$SelfContained;
    .locals 1

    sget-object v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$SelfContained;->$VALUES:[Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$SelfContained;

    .line 3216
    invoke-virtual {v0}, [Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$SelfContained;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$SelfContained;

    return-object v0
.end method


# virtual methods
.method public getEnclosingMethod(Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 0

    .line 3227
    sget-object p1, Lnet/bytebuddy/description/method/MethodDescription;->UNDEFINED:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object p1
.end method

.method public getEnclosingType(Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/description/type/TypeDescription;
    .locals 0

    .line 3234
    sget-object p1, Lnet/bytebuddy/description/type/TypeDescription;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription;

    return-object p1
.end method

.method public isLocalType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSelfContained()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

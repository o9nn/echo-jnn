.class public abstract enum Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;
.super Ljava/lang/Enum;
.source "InstrumentedType.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;",
        ">;",
        "Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;

.field public static final enum FROZEN:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;

.field public static final enum MODIFIABLE:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 355
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default$1;

    const-string v1, "MODIFIABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;->MODIFIABLE:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;

    .line 386
    new-instance v1, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default$2;

    const-string v3, "FROZEN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;->FROZEN:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;

    .line 350
    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 350
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/bytebuddy/dynamic/scaffold/InstrumentedType$1;)V
    .locals 0

    .line 350
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;
    .locals 1

    const-class v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;

    .line 350
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;

    .line 350
    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;

    return-object v0
.end method


# virtual methods
.method public subclass(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    .locals 20

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 397
    new-instance v19, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;

    move-object/from16 v0, v19

    .line 400
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 401
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 402
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 403
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 404
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    sget-object v9, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;

    sget-object v10, Lnet/bytebuddy/implementation/LoadedTypeInitializer$NoOp;->INSTANCE:Lnet/bytebuddy/implementation/LoadedTypeInitializer$NoOp;

    sget-object v11, Lnet/bytebuddy/description/type/TypeDescription;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription;

    sget-object v12, Lnet/bytebuddy/description/method/MethodDescription;->UNDEFINED:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sget-object v13, Lnet/bytebuddy/description/type/TypeDescription;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription;

    .line 410
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    sget-object v17, Lnet/bytebuddy/dynamic/TargetType;->DESCRIPTION:Lnet/bytebuddy/description/type/TypeDescription;

    .line 414
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v18

    invoke-direct/range {v0 .. v18}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;ZZLnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v19
.end method

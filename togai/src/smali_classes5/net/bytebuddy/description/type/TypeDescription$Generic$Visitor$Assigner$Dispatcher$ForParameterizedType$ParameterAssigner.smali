.class public final enum Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForParameterizedType$ParameterAssigner;
.super Ljava/lang/Enum;
.source "TypeDescription.java"

# interfaces
.implements Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForParameterizedType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "ParameterAssigner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForParameterizedType$ParameterAssigner$ContravariantBinding;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForParameterizedType$ParameterAssigner$CovariantBinding;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForParameterizedType$ParameterAssigner$InvariantBinding;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForParameterizedType$ParameterAssigner;",
        ">;",
        "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
        "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForParameterizedType$ParameterAssigner;

.field public static final enum INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForParameterizedType$ParameterAssigner;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1116
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForParameterizedType$ParameterAssigner;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForParameterizedType$ParameterAssigner;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForParameterizedType$ParameterAssigner;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForParameterizedType$ParameterAssigner;

    filled-new-array {v0}, [Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForParameterizedType$ParameterAssigner;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForParameterizedType$ParameterAssigner;->$VALUES:[Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForParameterizedType$ParameterAssigner;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1111
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForParameterizedType$ParameterAssigner;
    .locals 1

    const-class v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForParameterizedType$ParameterAssigner;

    .line 1111
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForParameterizedType$ParameterAssigner;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForParameterizedType$ParameterAssigner;
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForParameterizedType$ParameterAssigner;->$VALUES:[Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForParameterizedType$ParameterAssigner;

    .line 1111
    invoke-virtual {v0}, [Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForParameterizedType$ParameterAssigner;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForParameterizedType$ParameterAssigner;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic onGenericArray(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    .line 1111
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForParameterizedType$ParameterAssigner;->onGenericArray(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher;

    move-result-object p1

    return-object p1
.end method

.method public onGenericArray(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher;
    .locals 1

    .line 1122
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForParameterizedType$ParameterAssigner$InvariantBinding;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForParameterizedType$ParameterAssigner$InvariantBinding;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    return-object v0
.end method

.method public bridge synthetic onNonGenericType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    .line 1111
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForParameterizedType$ParameterAssigner;->onNonGenericType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher;

    move-result-object p1

    return-object p1
.end method

.method public onNonGenericType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher;
    .locals 1

    .line 1153
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForParameterizedType$ParameterAssigner$InvariantBinding;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForParameterizedType$ParameterAssigner$InvariantBinding;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    return-object v0
.end method

.method public bridge synthetic onParameterizedType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    .line 1111
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForParameterizedType$ParameterAssigner;->onParameterizedType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher;

    move-result-object p1

    return-object p1
.end method

.method public onParameterizedType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher;
    .locals 1

    .line 1139
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForParameterizedType$ParameterAssigner$InvariantBinding;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForParameterizedType$ParameterAssigner$InvariantBinding;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    return-object v0
.end method

.method public bridge synthetic onTypeVariable(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    .line 1111
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForParameterizedType$ParameterAssigner;->onTypeVariable(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher;

    move-result-object p1

    return-object p1
.end method

.method public onTypeVariable(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher;
    .locals 1

    .line 1146
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForParameterizedType$ParameterAssigner$InvariantBinding;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForParameterizedType$ParameterAssigner$InvariantBinding;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    return-object v0
.end method

.method public bridge synthetic onWildcard(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    .line 1111
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForParameterizedType$ParameterAssigner;->onWildcard(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher;

    move-result-object p1

    return-object p1
.end method

.method public onWildcard(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher;
    .locals 2

    .line 1129
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getLowerBounds()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    .line 1130
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList$Generic;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForParameterizedType$ParameterAssigner$CovariantBinding;

    .line 1131
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getUpperBounds()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeList$Generic;->getOnly()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForParameterizedType$ParameterAssigner$CovariantBinding;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForParameterizedType$ParameterAssigner$ContravariantBinding;

    .line 1132
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList$Generic;->getOnly()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-direct {p1, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner$Dispatcher$ForParameterizedType$ParameterAssigner$ContravariantBinding;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    move-object v0, p1

    :goto_0
    return-object v0
.end method

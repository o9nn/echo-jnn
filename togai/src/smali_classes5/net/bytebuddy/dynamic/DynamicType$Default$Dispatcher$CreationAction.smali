.class public final enum Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$CreationAction;
.super Ljava/lang/Enum;
.source "DynamicType.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CreationAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$CreationAction;",
        ">;",
        "Ljava/security/PrivilegedAction<",
        "Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$CreationAction;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$CreationAction;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 5505
    new-instance v0, Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$CreationAction;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$CreationAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$CreationAction;->INSTANCE:Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$CreationAction;

    filled-new-array {v0}, [Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$CreationAction;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$CreationAction;->$VALUES:[Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$CreationAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5500
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$CreationAction;
    .locals 1

    const-class v0, Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$CreationAction;

    .line 5500
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$CreationAction;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$CreationAction;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$CreationAction;->$VALUES:[Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$CreationAction;

    .line 5500
    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$CreationAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$CreationAction;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 5500
    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$CreationAction;->run()Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher;

    move-result-object v0

    return-object v0
.end method

.method public run()Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher;
    .locals 9

    :try_start_0
    const-string v0, "java.nio.file.Path"

    .line 5513
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "java.nio.file.CopyOption"

    .line 5514
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    const-string v3, "java.nio.file.StandardCopyOption"

    .line 5515
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "REPLACE_EXISTING"

    invoke-static {v3, v4}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 5516
    new-instance v3, Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$ForJava7CapableVm;

    const-class v5, Ljava/io/File;

    const-string v6, "toPath"

    new-array v7, v4, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-string v6, "java.nio.file.Files"

    .line 5517
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "move"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Class;

    aput-object v0, v8, v4

    aput-object v0, v8, v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v8, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-direct {v3, v5, v0, v1}, Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$ForJava7CapableVm;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    .line 5520
    :catchall_0
    sget-object v0, Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$ForLegacyVm;->INSTANCE:Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$ForLegacyVm;

    return-object v0
.end method

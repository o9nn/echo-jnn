.class public final Lexpo/modules/sharing/SharingModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "SharingModule.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/sharing/SharingModule$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSharingModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharingModule.kt\nexpo/modules/sharing/SharingModule\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 6 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 7 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/ModuleDefinitionBuilder\n*L\n1#1,104:1\n70#2:105\n14#3:106\n25#3:107\n27#4,3:108\n31#4:141\n270#5:111\n273#5,3:135\n69#6,6:112\n56#6:118\n47#6,7:119\n75#6:126\n56#6:127\n47#6,7:128\n124#7,3:138\n*S KotlinDebug\n*F\n+ 1 SharingModule.kt\nexpo/modules/sharing/SharingModule\n*L\n24#1:105\n24#1:106\n24#1:107\n24#1:108,3\n24#1:141\n27#1:111\n27#1:135,3\n27#1:112,6\n27#1:118\n27#1:119,7\n27#1:126\n27#1:127\n27#1:128,7\n62#1:138,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0002J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0012\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0012H\u0002J\u0012\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0012H\u0002R\u0014\u0010\u0003\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lexpo/modules/sharing/SharingModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "()V",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "currentActivity",
        "Landroid/app/Activity;",
        "getCurrentActivity",
        "()Landroid/app/Activity;",
        "pendingPromise",
        "Lexpo/modules/kotlin/Promise;",
        "createSharingIntent",
        "Landroid/content/Intent;",
        "uri",
        "Landroid/net/Uri;",
        "mimeType",
        "",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "getLocalFileFoUrl",
        "Ljava/io/File;",
        "url",
        "isAllowedToRead",
        "",
        "Companion",
        "expo-sharing_release"
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
.field public static final Companion:Lexpo/modules/sharing/SharingModule$Companion;

.field private static final REQUEST_CODE:I = 0x214c


# instance fields
.field private pendingPromise:Lexpo/modules/kotlin/Promise;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/sharing/SharingModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/sharing/SharingModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/sharing/SharingModule;->Companion:Lexpo/modules/sharing/SharingModule$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    return-void
.end method

.method public static final synthetic access$createSharingIntent(Lexpo/modules/sharing/SharingModule;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lexpo/modules/sharing/SharingModule;->createSharingIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getContext(Lexpo/modules/sharing/SharingModule;)Landroid/content/Context;
    .locals 0

    .line 17
    invoke-direct {p0}, Lexpo/modules/sharing/SharingModule;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCurrentActivity(Lexpo/modules/sharing/SharingModule;)Landroid/app/Activity;
    .locals 0

    .line 17
    invoke-direct {p0}, Lexpo/modules/sharing/SharingModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLocalFileFoUrl(Lexpo/modules/sharing/SharingModule;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lexpo/modules/sharing/SharingModule;->getLocalFileFoUrl(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPendingPromise$p(Lexpo/modules/sharing/SharingModule;)Lexpo/modules/kotlin/Promise;
    .locals 0

    .line 17
    iget-object p0, p0, Lexpo/modules/sharing/SharingModule;->pendingPromise:Lexpo/modules/kotlin/Promise;

    return-object p0
.end method

.method public static final synthetic access$setPendingPromise$p(Lexpo/modules/sharing/SharingModule;Lexpo/modules/kotlin/Promise;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lexpo/modules/sharing/SharingModule;->pendingPromise:Lexpo/modules/kotlin/Promise;

    return-void
.end method

.method private final createSharingIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 94
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.STREAM"

    .line 95
    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 96
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setTypeAndNormalize(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 97
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private final getContext()Landroid/content/Context;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lexpo/modules/sharing/SharingModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lexpo/modules/kotlin/exception/Exceptions$ReactContextLost;

    invoke-direct {v0}, Lexpo/modules/kotlin/exception/Exceptions$ReactContextLost;-><init>()V

    throw v0
.end method

.method private final getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lexpo/modules/sharing/SharingModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lexpo/modules/sharing/MissingCurrentActivityException;

    invoke-direct {v0}, Lexpo/modules/sharing/MissingCurrentActivityException;-><init>()V

    throw v0
.end method

.method private final getLocalFileFoUrl(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lexpo/modules/core/errors/InvalidArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 75
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "file"

    .line 76
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 81
    invoke-direct {p0, p1}, Lexpo/modules/sharing/SharingModule;->isAllowedToRead(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 82
    :cond_0
    new-instance p1, Lexpo/modules/core/errors/InvalidArgumentException;

    const-string v0, "Not allowed to read file under given URL."

    invoke-direct {p1, v0}, Lexpo/modules/core/errors/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_1
    new-instance p1, Lexpo/modules/core/errors/InvalidArgumentException;

    const-string v0, "Path component of the URL to share cannot be null."

    invoke-direct {p1, v0}, Lexpo/modules/core/errors/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_2
    new-instance v0, Lexpo/modules/core/errors/InvalidArgumentException;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Only local file URLs are supported (expected scheme to be \'file\', got \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\'."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lexpo/modules/core/errors/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_3
    new-instance p1, Lexpo/modules/core/errors/InvalidArgumentException;

    const-string v0, "URL to share cannot be null."

    invoke-direct {p1, v0}, Lexpo/modules/core/errors/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final isAllowedToRead(Ljava/lang/String;)Z
    .locals 2

    .line 88
    invoke-virtual {p0}, Lexpo/modules/sharing/SharingModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getFilePermission()Lexpo/modules/interfaces/filesystem/FilePermissionModuleInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0}, Lexpo/modules/sharing/SharingModule;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lexpo/modules/interfaces/filesystem/FilePermissionModuleInterface;->getPathPermissions(Landroid/content/Context;Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lexpo/modules/interfaces/filesystem/Permission;->READ:Lexpo/modules/interfaces/filesystem/Permission;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 11

    .line 24
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/modules/Module;

    .line 105
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ModuleDefinition"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ExpoModulesCore] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-static {v1}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 105
    :try_start_0
    new-instance v1, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    const-string v0, "ExpoSharing"

    .line 25
    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 27
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "shareAsync"

    .line 111
    new-instance v3, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    .line 113
    const-class v4, Ljava/lang/String;

    .line 114
    const-class v4, Lexpo/modules/sharing/SharingOptions;

    const/4 v4, 0x2

    new-array v4, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 118
    sget-object v5, Lexpo/modules/sharing/SharingModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$1;->INSTANCE:Lexpo/modules/sharing/SharingModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$1;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 119
    new-instance v6, Lexpo/modules/kotlin/types/AnyType;

    .line 120
    new-instance v7, Lexpo/modules/kotlin/types/LazyKType;

    const-class v8, Ljava/lang/String;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9, v5}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v7, Lkotlin/reflect/KType;

    .line 119
    invoke-direct {v6, v7}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    const/4 v5, 0x0

    aput-object v6, v4, v5

    .line 127
    sget-object v6, Lexpo/modules/sharing/SharingModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$2;->INSTANCE:Lexpo/modules/sharing/SharingModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$2;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 128
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 129
    new-instance v8, Lexpo/modules/kotlin/types/LazyKType;

    const-class v10, Lexpo/modules/sharing/SharingOptions;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-direct {v8, v10, v5, v6}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v8, Lkotlin/reflect/KType;

    .line 128
    invoke-direct {v7, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    aput-object v7, v4, v9

    .line 135
    new-instance v5, Lexpo/modules/sharing/SharingModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$3;

    invoke-direct {v5, p0}, Lexpo/modules/sharing/SharingModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$3;-><init>(Lexpo/modules/sharing/SharingModule;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 111
    invoke-direct {v3, v2, v4, v5}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    .line 136
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunction;

    .line 138
    invoke-virtual {v1}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->getEventListeners()Ljava/util/Map;

    move-result-object v0

    sget-object v2, Lexpo/modules/kotlin/events/EventName;->ON_ACTIVITY_RESULT:Lexpo/modules/kotlin/events/EventName;

    .line 139
    new-instance v3, Lexpo/modules/kotlin/events/EventListenerWithSenderAndPayload;

    sget-object v4, Lexpo/modules/kotlin/events/EventName;->ON_ACTIVITY_RESULT:Lexpo/modules/kotlin/events/EventName;

    .line 138
    new-instance v5, Lexpo/modules/sharing/SharingModule$definition$lambda$3$$inlined$OnActivityResult$1;

    invoke-direct {v5, p0}, Lexpo/modules/sharing/SharingModule$definition$lambda$3$$inlined$OnActivityResult$1;-><init>(Lexpo/modules/sharing/SharingModule;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 139
    invoke-direct {v3, v4, v5}, Lexpo/modules/kotlin/events/EventListenerWithSenderAndPayload;-><init>(Lexpo/modules/kotlin/events/EventName;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-virtual {v1}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method

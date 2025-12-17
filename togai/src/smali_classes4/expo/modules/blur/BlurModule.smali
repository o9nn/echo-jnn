.class public final Lexpo/modules/blur/BlurModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "BlurModule.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBlurModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BlurModule.kt\nexpo/modules/blur/BlurModule\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/ModuleDefinitionBuilder\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 7 ViewDefinitionBuilder.kt\nexpo/modules/kotlin/views/ViewDefinitionBuilder\n+ 8 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n*L\n1#1,35:1\n70#2:36\n14#3:37\n25#3:38\n27#4,3:39\n31#4:108\n65#5:42\n66#5,2:44\n68#5,2:106\n1#6:43\n114#7,3:46\n117#7,3:57\n114#7,3:60\n117#7,3:71\n114#7,3:74\n117#7,3:85\n114#7,3:88\n117#7,3:99\n94#7,4:102\n56#8:49\n47#8,7:50\n56#8:63\n47#8,7:64\n56#8:77\n47#8,7:78\n56#8:91\n47#8,7:92\n*S KotlinDebug\n*F\n+ 1 BlurModule.kt\nexpo/modules/blur/BlurModule\n*L\n9#1:36\n9#1:37\n9#1:38\n9#1:39,3\n9#1:108\n12#1:42\n12#1:44,2\n12#1:106,2\n12#1:43\n13#1:46,3\n13#1:57,3\n17#1:60,3\n17#1:71,3\n21#1:74,3\n21#1:85,3\n25#1:88,3\n25#1:99,3\n29#1:102,4\n13#1:49\n13#1:50,7\n17#1:63\n17#1:64,7\n21#1:77\n21#1:78,7\n25#1:91\n25#1:92,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "Lexpo/modules/blur/BlurModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "()V",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "expo-blur_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    return-void
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 11

    .line 9
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/modules/Module;

    .line 36
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

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ExpoModulesCore] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-static {v1}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 36
    :try_start_0
    new-instance v1, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    const-string v0, "ExpoBlurView"

    .line 10
    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 12
    const-class v0, Lexpo/modules/blur/ExpoBlurView;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 42
    invoke-virtual {v1}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->getViewManagerDefinition()Lexpo/modules/kotlin/views/ViewManagerDefinition;

    move-result-object v2

    if-nez v2, :cond_0

    .line 44
    new-instance v2, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;

    new-instance v9, Lexpo/modules/kotlin/types/LazyKType;

    const-class v3, Lexpo/modules/blur/ExpoBlurView;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v3, Lexpo/modules/blur/BlurModule$definition$lambda$2$$inlined$View$1;->INSTANCE:Lexpo/modules/blur/BlurModule$definition$lambda$2$$inlined$View$1;

    move-object v6, v3

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v9, Lkotlin/reflect/KType;

    invoke-direct {v2, v0, v9}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;-><init>(Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)V

    const-string v0, "intensity"

    .line 13
    sget-object v3, Lexpo/modules/blur/BlurModule$definition$1$1$1;->INSTANCE:Lexpo/modules/blur/BlurModule$definition$1$1$1;

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 46
    invoke-virtual {v2}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getProps()Ljava/util/Map;

    move-result-object v4

    new-instance v5, Lexpo/modules/kotlin/views/ConcreteViewProp;

    .line 49
    sget-object v6, Lexpo/modules/blur/BlurModule$definition$lambda$2$lambda$1$$inlined$Prop$1;->INSTANCE:Lexpo/modules/blur/BlurModule$definition$lambda$2$lambda$1$$inlined$Prop$1;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 50
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 51
    new-instance v8, Lexpo/modules/kotlin/types/LazyKType;

    const-class v9, Ljava/lang/Float;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10, v6}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v8, Lkotlin/reflect/KType;

    .line 50
    invoke-direct {v7, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    .line 46
    invoke-direct {v5, v0, v7, v3}, Lexpo/modules/kotlin/views/ConcreteViewProp;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tint"

    .line 17
    sget-object v3, Lexpo/modules/blur/BlurModule$definition$1$1$2;->INSTANCE:Lexpo/modules/blur/BlurModule$definition$1$1$2;

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 60
    invoke-virtual {v2}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getProps()Ljava/util/Map;

    move-result-object v4

    new-instance v5, Lexpo/modules/kotlin/views/ConcreteViewProp;

    .line 63
    sget-object v6, Lexpo/modules/blur/BlurModule$definition$lambda$2$lambda$1$$inlined$Prop$2;->INSTANCE:Lexpo/modules/blur/BlurModule$definition$lambda$2$lambda$1$$inlined$Prop$2;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 64
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 65
    new-instance v8, Lexpo/modules/kotlin/types/LazyKType;

    const-class v9, Lexpo/modules/blur/enums/TintStyle;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-direct {v8, v9, v10, v6}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v8, Lkotlin/reflect/KType;

    .line 64
    invoke-direct {v7, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    .line 60
    invoke-direct {v5, v0, v7, v3}, Lexpo/modules/kotlin/views/ConcreteViewProp;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "blurReductionFactor"

    .line 21
    sget-object v3, Lexpo/modules/blur/BlurModule$definition$1$1$3;->INSTANCE:Lexpo/modules/blur/BlurModule$definition$1$1$3;

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 74
    invoke-virtual {v2}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getProps()Ljava/util/Map;

    move-result-object v4

    new-instance v5, Lexpo/modules/kotlin/views/ConcreteViewProp;

    .line 77
    sget-object v6, Lexpo/modules/blur/BlurModule$definition$lambda$2$lambda$1$$inlined$Prop$3;->INSTANCE:Lexpo/modules/blur/BlurModule$definition$lambda$2$lambda$1$$inlined$Prop$3;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 78
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 79
    new-instance v8, Lexpo/modules/kotlin/types/LazyKType;

    const-class v9, Ljava/lang/Float;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-direct {v8, v9, v10, v6}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v8, Lkotlin/reflect/KType;

    .line 78
    invoke-direct {v7, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    .line 74
    invoke-direct {v5, v0, v7, v3}, Lexpo/modules/kotlin/views/ConcreteViewProp;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "experimentalBlurMethod"

    .line 25
    sget-object v3, Lexpo/modules/blur/BlurModule$definition$1$1$4;->INSTANCE:Lexpo/modules/blur/BlurModule$definition$1$1$4;

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 88
    invoke-virtual {v2}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getProps()Ljava/util/Map;

    move-result-object v4

    new-instance v5, Lexpo/modules/kotlin/views/ConcreteViewProp;

    .line 91
    sget-object v6, Lexpo/modules/blur/BlurModule$definition$lambda$2$lambda$1$$inlined$Prop$4;->INSTANCE:Lexpo/modules/blur/BlurModule$definition$lambda$2$lambda$1$$inlined$Prop$4;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 92
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 93
    new-instance v8, Lexpo/modules/kotlin/types/LazyKType;

    const-class v9, Lexpo/modules/blur/enums/BlurMethod;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-direct {v8, v9, v10, v6}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v8, Lkotlin/reflect/KType;

    .line 92
    invoke-direct {v7, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    .line 88
    invoke-direct {v5, v0, v7, v3}, Lexpo/modules/kotlin/views/ConcreteViewProp;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v0, Lexpo/modules/blur/BlurModule$definition$lambda$2$lambda$1$$inlined$OnViewDidUpdateProps$1;

    invoke-direct {v0}, Lexpo/modules/blur/BlurModule$definition$lambda$2$lambda$1$$inlined$OnViewDidUpdateProps$1;-><init>()V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v2, v0}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->setOnViewDidUpdateProps(Lkotlin/jvm/functions/Function1;)V

    .line 106
    invoke-virtual {v2}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->build()Lexpo/modules/kotlin/views/ViewManagerDefinition;

    move-result-object v0

    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->setViewManagerDefinition(Lexpo/modules/kotlin/views/ViewManagerDefinition;)V

    .line 36
    invoke-virtual {v1}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, "The module definition may have exported only one view manager."

    .line 42
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 108
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method

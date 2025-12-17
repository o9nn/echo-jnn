.class public final Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$Builder;
.super Ljava/lang/Object;
.source "$JavaFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/squareup/javapoet$/$JavaFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final fileComment:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

.field private indent:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private skipJavaLangImports:Z

.field public final staticImports:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final typeSpec:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec;)V
    .locals 1

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    invoke-static {}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->builder()Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    move-result-object v0

    iput-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$Builder;->fileComment:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    const-string v0, "  "

    iput-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$Builder;->indent:Ljava/lang/String;

    .line 283
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$Builder;->staticImports:Ljava/util/Set;

    iput-object p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$Builder;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$Builder;->typeSpec:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec;Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$1;)V
    .locals 0

    .line 276
    invoke-direct {p0, p1, p2}, Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$Builder;-><init>(Ljava/lang/String;Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec;)V

    return-void
.end method

.method static synthetic access$000(Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$Builder;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;
    .locals 0

    .line 276
    iget-object p0, p0, Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$Builder;->fileComment:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    return-object p0
.end method

.method static synthetic access$100(Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$Builder;)Ljava/lang/String;
    .locals 0

    .line 276
    iget-object p0, p0, Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$Builder;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$Builder;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec;
    .locals 0

    .line 276
    iget-object p0, p0, Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$Builder;->typeSpec:Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec;

    return-object p0
.end method

.method static synthetic access$300(Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$Builder;)Z
    .locals 0

    .line 276
    iget-boolean p0, p0, Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$Builder;->skipJavaLangImports:Z

    return p0
.end method

.method static synthetic access$302(Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$Builder;Z)Z
    .locals 0

    .line 276
    iput-boolean p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$Builder;->skipJavaLangImports:Z

    return p1
.end method

.method static synthetic access$400(Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$Builder;)Ljava/lang/String;
    .locals 0

    .line 276
    iget-object p0, p0, Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$Builder;->indent:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$Builder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 276
    iput-object p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$Builder;->indent:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public varargs addFileComment(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$Builder;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$Builder;->fileComment:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    .line 291
    invoke-virtual {v0, p1, p2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    return-object p0
.end method

.method public varargs addStaticImport(Lautovalue/shaded/com/squareup/javapoet$/$ClassName;[Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$Builder;
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "className == null"

    new-array v4, v1, [Ljava/lang/Object;

    .line 304
    invoke-static {v2, v3, v4}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const-string v3, "names == null"

    new-array v4, v1, [Ljava/lang/Object;

    .line 305
    invoke-static {v2, v3, v4}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 306
    array-length v2, p2

    if-lez v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    const-string v3, "names array is empty"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 307
    array-length v2, p2

    move v3, v1

    :goto_3
    if-ge v3, v2, :cond_4

    aget-object v4, p2, v3

    if-eqz v4, :cond_3

    move v5, v0

    goto :goto_4

    :cond_3
    move v5, v1

    .line 308
    :goto_4
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "null entry in names array: %s"

    invoke-static {v5, v7, v6}, Lautovalue/shaded/com/squareup/javapoet$/$Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$Builder;->staticImports:Ljava/util/Set;

    .line 309
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->canonicalName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    return-object p0
.end method

.method public varargs addStaticImport(Ljava/lang/Class;[Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")",
            "Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$Builder;"
        }
    .end annotation

    .line 300
    invoke-static {p1}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->get(Ljava/lang/Class;)Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$Builder;->addStaticImport(Lautovalue/shaded/com/squareup/javapoet$/$ClassName;[Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addStaticImport(Ljava/lang/Enum;)Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$Builder;"
        }
    .end annotation

    .line 296
    invoke-virtual {p1}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->get(Ljava/lang/Class;)Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$Builder;->addStaticImport(Lautovalue/shaded/com/squareup/javapoet$/$ClassName;[Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lautovalue/shaded/com/squareup/javapoet$/$JavaFile;
    .locals 2

    .line 333
    new-instance v0, Lautovalue/shaded/com/squareup/javapoet$/$JavaFile;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$JavaFile;-><init>(Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$Builder;Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$1;)V

    return-object v0
.end method

.method public indent(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$Builder;
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$Builder;->indent:Ljava/lang/String;

    return-object p0
.end method

.method public skipJavaLangImports(Z)Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$Builder;
    .locals 0

    iput-boolean p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$Builder;->skipJavaLangImports:Z

    return-object p0
.end method

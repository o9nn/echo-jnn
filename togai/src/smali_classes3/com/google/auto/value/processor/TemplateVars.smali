.class abstract Lcom/google/auto/value/processor/TemplateVars;
.super Ljava/lang/Object;
.source "TemplateVars.java"


# instance fields
.field private final fields:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Tfu2CZZi1DcI23fLmbKMJjpIBAo(Ljava/lang/String;)Ljava/io/Reader;
    .locals 0

    invoke-static {p0}, Lcom/google/auto/value/processor/TemplateVars;->readerFromResource(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$buXFVCZbGgSiefsz3jujVqtQKhc(Ljava/lang/String;)Ljava/io/Reader;
    .locals 0

    invoke-static {p0}, Lcom/google/auto/value/processor/TemplateVars;->readerFromUrl(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/auto/value/processor/TemplateVars;->getFields(Ljava/lang/Class;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auto/value/processor/TemplateVars;->fields:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    return-void
.end method

.method private static addFields(Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;[Ljava/lang/reflect/Field;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder<",
            "Ljava/lang/reflect/Field;",
            ">;[",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .line 76
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    aget-object v2, p1, v1

    .line 77
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v2}, Lcom/google/auto/value/processor/TemplateVars;->isStaticFinal(Ljava/lang/reflect/Field;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 80
    :cond_0
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 83
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 86
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_1

    .line 89
    invoke-virtual {p0, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    goto :goto_1

    .line 87
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Field cannot be primitive: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 84
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Field cannot be static unless also final: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 81
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Field cannot be private: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private static fieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 220
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 222
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static getFields(Ljava/lang/Class;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 66
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    move-result-object v0

    :goto_0
    const-class v1, Lcom/google/auto/value/processor/TemplateVars;

    if-eq p0, v1, :cond_0

    .line 68
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/auto/value/processor/TemplateVars;->addFields(Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;[Ljava/lang/reflect/Field;)V

    .line 69
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private static inputStreamFromFile(Ljava/net/URL;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 214
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 215
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object p0
.end method

.method private static inputStreamFromJar(Ljava/net/URL;)Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x21

    .line 188
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 189
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    .line 190
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 193
    :cond_0
    new-instance v2, Ljava/net/URI;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 194
    new-instance p0, Ljava/util/jar/JarFile;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V

    .line 195
    invoke-virtual {p0, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v0

    .line 196
    invoke-virtual {p0, v0}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 199
    new-instance v1, Lcom/google/auto/value/processor/TemplateVars$1;

    invoke-direct {v1, v0, p0}, Lcom/google/auto/value/processor/TemplateVars$1;-><init>(Ljava/io/InputStream;Ljava/util/jar/JarFile;)V

    return-object v1
.end method

.method private static isStaticFinal(Ljava/lang/reflect/Field;)Z
    .locals 1

    .line 227
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p0

    .line 228
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static parsedTemplateForResource(Ljava/lang/String;)Lautovalue/shaded/com/google$/escapevelocity/$Template;
    .locals 1

    .line 124
    :try_start_0
    new-instance v0, Lcom/google/auto/value/processor/TemplateVars$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/auto/value/processor/TemplateVars$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Template;->parseFrom(Ljava/lang/String;Lautovalue/shaded/com/google$/escapevelocity/$Template$ResourceOpener;)Lautovalue/shaded/com/google$/escapevelocity/$Template;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 130
    :goto_0
    invoke-static {p0, v0}, Lcom/google/auto/value/processor/TemplateVars;->retryParseAfterException(Ljava/lang/String;Ljava/lang/Exception;)Lautovalue/shaded/com/google$/escapevelocity/$Template;

    move-result-object p0

    return-object p0

    :catch_3
    move-exception p0

    .line 126
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private static readerFromResource(Ljava/lang/String;)Ljava/io/Reader;
    .locals 3

    const-class v0, Lcom/google/auto/value/processor/TemplateVars;

    .line 145
    invoke-virtual {v0, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    new-instance p0, Ljava/io/InputStreamReader;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    return-object p0

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not find resource: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static readerFromUrl(Ljava/lang/String;)Ljava/io/Reader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Template fallback logic fails for: "

    const-class v1, Lcom/google/auto/value/processor/TemplateVars;

    .line 162
    invoke-virtual {v1, p0}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 169
    :try_start_0
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p0

    const-string v2, "file"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 170
    invoke-static {v1}, Lcom/google/auto/value/processor/TemplateVars;->inputStreamFromFile(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object p0

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p0

    const-string v2, "jar"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 172
    invoke-static {v1}, Lcom/google/auto/value/processor/TemplateVars;->inputStreamFromJar(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    return-object v0

    .line 174
    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    .line 177
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 165
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not find resource: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static retryParseAfterException(Ljava/lang/String;Ljava/lang/Exception;)Lautovalue/shaded/com/google$/escapevelocity/$Template;
    .locals 1

    .line 136
    :try_start_0
    new-instance v0, Lcom/google/auto/value/processor/TemplateVars$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/google/auto/value/processor/TemplateVars$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Template;->parseFrom(Ljava/lang/String;Lautovalue/shaded/com/google$/escapevelocity/$Template$ResourceOpener;)Lautovalue/shaded/com/google$/escapevelocity/$Template;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 139
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Throwables;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 140
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method private toVars()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 103
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iget-object v1, p0, Lcom/google/auto/value/processor/TemplateVars;->fields:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 104
    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 105
    invoke-static {v2, p0}, Lcom/google/auto/value/processor/TemplateVars;->fieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 109
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Two fields called "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Field cannot be null (was it set?): "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_2
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->copyOf(Ljava/util/Map;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method abstract parsedTemplate()Lautovalue/shaded/com/google$/escapevelocity/$Template;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/auto/value/processor/TemplateVars;->toVars()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toText()Ljava/lang/String;
    .locals 2

    .line 98
    invoke-direct {p0}, Lcom/google/auto/value/processor/TemplateVars;->toVars()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v0

    .line 99
    invoke-virtual {p0}, Lcom/google/auto/value/processor/TemplateVars;->parsedTemplate()Lautovalue/shaded/com/google$/escapevelocity/$Template;

    move-result-object v1

    invoke-virtual {v1, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Template;->evaluate(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

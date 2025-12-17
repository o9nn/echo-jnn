.class public final enum Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;
.super Ljava/lang/Enum;
.source "ByteBuddyAgent.java"

# interfaces
.implements Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForByteBuddyAgent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;",
        ">;",
        "Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;

.field private static final AGENT_FILE_NAME:Ljava/lang/String; = "byteBuddyAgent"

.field public static final enum INSTANCE:Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1171
    new-instance v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;->INSTANCE:Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;

    filled-new-array {v0}, [Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;->$VALUES:[Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1166
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static createJarFile()Ljava/io/File;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1239
    const-class v0, Lnet/bytebuddy/agent/Installer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lnet/bytebuddy/agent/Installer;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string v1, "byteBuddyAgent"

    const-string v5, ".jar"

    .line 1244
    invoke-static {v1, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1245
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    .line 1246
    new-instance v5, Ljava/util/jar/Manifest;

    invoke-direct {v5}, Ljava/util/jar/Manifest;-><init>()V

    .line 1247
    invoke-virtual {v5}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v6

    sget-object v7, Ljava/util/jar/Attributes$Name;->MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

    const-string v8, "1.0"

    invoke-virtual {v6, v7, v8}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    invoke-virtual {v5}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v6

    new-instance v7, Ljava/util/jar/Attributes$Name;

    const-string v8, "Agent-Class"

    invoke-direct {v7, v8}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    const-class v8, Lnet/bytebuddy/agent/Installer;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    invoke-virtual {v5}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v6

    new-instance v7, Ljava/util/jar/Attributes$Name;

    const-string v8, "Can-Redefine-Classes"

    invoke-direct {v7, v8}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1250
    invoke-virtual {v5}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v6

    new-instance v7, Ljava/util/jar/Attributes$Name;

    const-string v8, "Can-Retransform-Classes"

    invoke-direct {v7, v8}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    invoke-virtual {v5}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v6

    new-instance v7, Ljava/util/jar/Attributes$Name;

    const-string v8, "Can-Set-Native-Method-Prefix"

    invoke-direct {v7, v8}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1252
    new-instance v6, Ljava/util/jar/JarOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7, v5}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/jar/Manifest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1254
    :try_start_1
    new-instance v5, Ljava/util/jar/JarEntry;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-class v8, Lnet/bytebuddy/agent/Installer;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 1257
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    .line 1258
    invoke-virtual {v6, v2, v4, v3}, Ljava/util/jar/JarOutputStream;->write([BII)V

    goto :goto_0

    .line 1260
    :cond_0
    invoke-virtual {v6}, Ljava/util/jar/JarOutputStream;->closeEntry()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1262
    :try_start_2
    invoke-virtual {v6}, Ljava/util/jar/JarOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1266
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    .line 1262
    :try_start_3
    invoke-virtual {v6}, Ljava/util/jar/JarOutputStream;->close()V

    .line 1263
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    .line 1266
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1267
    throw v1

    .line 1241
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot locate class file for Byte Buddy installer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static trySelfResolve()Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1187
    const-class v0, Lnet/bytebuddy/agent/Installer;

    invoke-virtual {v0}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1189
    invoke-static {}, Lnet/bytebuddy/agent/ByteBuddyAgent;->access$200()Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 1191
    :cond_0
    invoke-virtual {v0}, Ljava/security/ProtectionDomain;->getCodeSource()Ljava/security/CodeSource;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1193
    invoke-static {}, Lnet/bytebuddy/agent/ByteBuddyAgent;->access$200()Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 1195
    :cond_1
    invoke-virtual {v0}, Ljava/security/CodeSource;->getLocation()Ljava/net/URL;

    move-result-object v0

    .line 1196
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1197
    invoke-static {}, Lnet/bytebuddy/agent/ByteBuddyAgent;->access$200()Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 1201
    :cond_2
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1203
    :catch_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1205
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 1209
    :cond_3
    new-instance v0, Ljava/util/jar/JarInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/util/jar/JarInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1211
    :try_start_1
    invoke-virtual {v0}, Ljava/util/jar/JarInputStream;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v2

    if-nez v2, :cond_4

    .line 1213
    invoke-static {}, Lnet/bytebuddy/agent/ByteBuddyAgent;->access$200()Ljava/io/File;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1228
    invoke-virtual {v0}, Ljava/util/jar/JarInputStream;->close()V

    return-object v1

    .line 1215
    :cond_4
    :try_start_2
    invoke-virtual {v2}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v2

    if-nez v2, :cond_5

    .line 1217
    invoke-static {}, Lnet/bytebuddy/agent/ByteBuddyAgent;->access$200()Ljava/io/File;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1228
    invoke-virtual {v0}, Ljava/util/jar/JarInputStream;->close()V

    return-object v1

    .line 1219
    :cond_5
    :try_start_3
    const-class v3, Lnet/bytebuddy/agent/Installer;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Agent-Class"

    invoke-virtual {v2, v4}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "Can-Redefine-Classes"

    .line 1220
    invoke-virtual {v2, v3}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "Can-Retransform-Classes"

    .line 1221
    invoke-virtual {v2, v3}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "Can-Set-Native-Method-Prefix"

    .line 1222
    invoke-virtual {v2, v3}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_6

    .line 1228
    invoke-virtual {v0}, Ljava/util/jar/JarInputStream;->close()V

    return-object v1

    .line 1225
    :cond_6
    :try_start_4
    invoke-static {}, Lnet/bytebuddy/agent/ByteBuddyAgent;->access$200()Ljava/io/File;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1228
    invoke-virtual {v0}, Ljava/util/jar/JarInputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/jar/JarInputStream;->close()V

    .line 1229
    throw v1

    .line 1206
    :cond_7
    :goto_1
    invoke-static {}, Lnet/bytebuddy/agent/ByteBuddyAgent;->access$200()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;
    .locals 1

    const-class v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;

    .line 1166
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;
    .locals 1

    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;->$VALUES:[Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;

    .line 1166
    invoke-virtual {v0}, [Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;

    return-object v0
.end method


# virtual methods
.method public resolve()Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1275
    :try_start_0
    invoke-static {}, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;->trySelfResolve()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1277
    invoke-static {}, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;->createJarFile()Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    .line 1280
    :catch_0
    invoke-static {}, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;->createJarFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

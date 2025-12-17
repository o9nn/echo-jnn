.class Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;
.super Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedObject;
.source "$Synchronized.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronizedMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedObject;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1031
    invoke-direct {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedObject;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 1042
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1043
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1044
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 1154
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1155
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1156
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Function<",
            "-TK;+TV;>;)TV;"
        }
    .end annotation

    .line 1139
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1140
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1141
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 1147
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1148
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1149
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    .line 1049
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1050
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1051
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2

    .line 1056
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1057
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1058
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 1025
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method delegate()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1037
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedObject;->delegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1063
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->entrySet:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 1065
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lautovalue/shaded/com/google$/common/collect/$Synchronized;->set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->entrySet:Ljava/util/Set;

    :cond_0
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->entrySet:Ljava/util/Set;

    .line 1067
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1068
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1217
    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1218
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1219
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 1073
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1074
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1075
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1080
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1081
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1082
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .line 1087
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1088
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1089
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public hashCode()I
    .locals 2

    .line 1224
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1225
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 1226
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEmpty()Z
    .locals 2

    .line 1094
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1095
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 1096
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public keySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1101
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->keySet:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 1103
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lautovalue/shaded/com/google$/common/collect/$Synchronized;->set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->keySet:Ljava/util/Set;

    :cond_0
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->keySet:Ljava/util/Set;

    .line 1105
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1106
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/function/BiFunction<",
            "-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 1162
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1163
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Ljava/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1164
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1111
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1112
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1113
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 1169
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1170
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1171
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1118
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1119
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1120
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1183
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1184
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1185
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 1190
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1191
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1192
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1132
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1133
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1134
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 1125
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1126
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1127
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public replaceAll(Ljava/util/function/BiFunction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)V"
        }
    .end annotation

    .line 1176
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1177
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->replaceAll(Ljava/util/function/BiFunction;)V

    .line 1178
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public size()I
    .locals 2

    .line 1197
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1198
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 1199
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public values()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1204
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->values:Ljava/util/Collection;

    if-nez v1, :cond_0

    .line 1206
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lautovalue/shaded/com/google$/common/collect/$Synchronized;->access$500(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    iput-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->values:Ljava/util/Collection;

    :cond_0
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->values:Ljava/util/Collection;

    .line 1208
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1209
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

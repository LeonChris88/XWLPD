.class public Landroid/ddm/DdmHandleHello;
.super Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
.source "DdmHandleHello.java"


# static fields
.field public static final CHUNK_FEAT:I

.field public static final CHUNK_HELO:I

.field public static final CHUNK_WAIT:I

.field private static mInstance:Landroid/ddm/DdmHandleHello;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "HELO"

    invoke-static {v0}, Landroid/ddm/DdmHandleHello;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleHello;->CHUNK_HELO:I

    const-string v0, "WAIT"

    invoke-static {v0}, Landroid/ddm/DdmHandleHello;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleHello;->CHUNK_WAIT:I

    const-string v0, "FEAT"

    invoke-static {v0}, Landroid/ddm/DdmHandleHello;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleHello;->CHUNK_FEAT:I

    new-instance v0, Landroid/ddm/DdmHandleHello;

    invoke-direct {v0}, Landroid/ddm/DdmHandleHello;-><init>()V

    sput-object v0, Landroid/ddm/DdmHandleHello;->mInstance:Landroid/ddm/DdmHandleHello;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;-><init>()V

    return-void
.end method

.method private handleFEAT(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 6

    invoke-static {}, Landroid/os/Debug;->getVmFeatureList()[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v3, v4, 0x4

    array-length v4, v0

    add-int/lit8 v1, v4, -0x1

    :goto_0
    if-ltz v1, :cond_0

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v4, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->CHUNK_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    array-length v4, v0

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    array-length v4, v0

    add-int/lit8 v1, v4, -0x1

    :goto_1
    if-ltz v1, :cond_1

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    aget-object v4, v0, v1

    invoke-static {v2, v4}, Landroid/ddm/DdmHandleHello;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    new-instance v4, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v5, Landroid/ddm/DdmHandleHello;->CHUNK_FEAT:I

    invoke-direct {v4, v5, v2}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(ILjava/nio/ByteBuffer;)V

    return-object v4
.end method

.method private handleHELO(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 10

    invoke-static {p1}, Landroid/ddm/DdmHandleHello;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    const-string/jumbo v8, "java.vm.name"

    const-string v9, "?"

    invoke-static {v8, v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "java.vm.version"

    const-string v9, "?"

    invoke-static {v8, v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " v"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/ddm/DdmHandleAppName;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, 0x10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v8, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->CHUNK_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-static {v2, v5}, Landroid/ddm/DdmHandleHello;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    invoke-static {v2, v0}, Landroid/ddm/DdmHandleHello;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    new-instance v3, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v8, Landroid/ddm/DdmHandleHello;->CHUNK_HELO:I

    invoke-direct {v3, v8, v2}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(ILjava/nio/ByteBuffer;)V

    invoke-static {}, Landroid/os/Debug;->waitingForDebugger()Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    invoke-static {v8}, Landroid/ddm/DdmHandleHello;->sendWAIT(I)V

    :cond_0
    return-object v3
.end method

.method public static register()V
    .locals 2

    sget v0, Landroid/ddm/DdmHandleHello;->CHUNK_HELO:I

    sget-object v1, Landroid/ddm/DdmHandleHello;->mInstance:Landroid/ddm/DdmHandleHello;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    sget v0, Landroid/ddm/DdmHandleHello;->CHUNK_FEAT:I

    sget-object v1, Landroid/ddm/DdmHandleHello;->mInstance:Landroid/ddm/DdmHandleHello;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    return-void
.end method

.method public static sendWAIT(I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v4, [B

    int-to-byte v2, p0

    aput-byte v2, v0, v3

    new-instance v1, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v2, Landroid/ddm/DdmHandleHello;->CHUNK_WAIT:I

    invoke-direct {v1, v2, v0, v3, v4}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    invoke-static {v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->sendChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)V

    return-void
.end method


# virtual methods
.method public connected()V
    .locals 0

    return-void
.end method

.method public disconnected()V
    .locals 0

    return-void
.end method

.method public handleChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 4

    iget v0, p1, Lorg/apache/harmony/dalvik/ddmc/Chunk;->type:I

    sget v1, Landroid/ddm/DdmHandleHello;->CHUNK_HELO:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleHello;->handleHELO(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    sget v1, Landroid/ddm/DdmHandleHello;->CHUNK_FEAT:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleHello;->handleFEAT(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown packet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

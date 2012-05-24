.class Lcom/sec/android/app/twlauncher/ItemInfo;
.super Ljava/lang/Object;
.source "ItemInfo.java"


# instance fields
.field cellX:I

.field cellY:I

.field container:J

.field dropParent:Ljava/lang/Object;

.field id:J

.field isGesture:Z

.field itemType:I

.field longMs:J

.field packageName:Ljava/lang/String;

.field screen:I

.field shortCut:I

.field spanX:I

.field spanY:I


# direct methods
.method constructor <init>()V
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-wide v4, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    iput-wide v4, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    iput v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    iput v1, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->shortCut:I

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->isGesture:Z

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->dropParent:Ljava/lang/Object;

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->longMs:J

    return-void
.end method

.method static writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V
    .locals 6

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/lit8 v2, v3, 0x4

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    const-string v3, "icon"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v3, "Launcher.ItemInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writeBitmap() : Could not write icon"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public copyFrom(Lcom/sec/android/app/twlauncher/ItemInfo;)V
    .locals 2

    iget-wide v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    iget v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iget v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    iget v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    iget v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    iget v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    iget v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    iget-wide v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    iget-object v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    iget-wide v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->longMs:J

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->longMs:J

    return-void
.end method

.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 3

    const-string v0, "itemType"

    iget v1, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->isGesture:Z

    if-nez v0, :cond_0

    const-string v0, "container"

    iget-wide v1, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "screen"

    iget v1, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "cellX"

    iget v1, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "cellY"

    iget v1, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "spanX"

    iget v1, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "spanY"

    iget v1, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "multipleSize"

    iget-wide v1, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->longMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

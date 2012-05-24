.class Lcom/sec/android/app/calculator/Persist;
.super Ljava/lang/Object;
.source "Persist.java"


# instance fields
.field history:Lcom/sec/android/app/calculator/History;

.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/calculator/History;

    invoke-direct {v0}, Lcom/sec/android/app/calculator/History;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/calculator/Persist;->history:Lcom/sec/android/app/calculator/History;

    iput-object p1, p0, Lcom/sec/android/app/calculator/Persist;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/app/calculator/Persist;->load()V

    return-void
.end method

.method private load()V
    .locals 9

    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v4, Ljava/io/BufferedInputStream;

    iget-object v6, p0, Lcom/sec/android/app/calculator/Persist;->mContext:Landroid/content/Context;

    const-string v7, "calculator.data"

    invoke-virtual {v6, v7}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v6

    const/16 v7, 0x2000

    invoke-direct {v4, v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8

    :try_start_1
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d

    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    if-le v5, v8, :cond_2

    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data version "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; expected "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_e

    :catch_0
    move-exception v0

    move-object v1, v2

    move-object v3, v4

    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_1
    :goto_2
    return-void

    :cond_2
    :try_start_6
    new-instance v6, Lcom/sec/android/app/calculator/History;

    invoke-direct {v6, v5, v2}, Lcom/sec/android/app/calculator/History;-><init>(ILjava/io/DataInput;)V

    iput-object v6, p0, Lcom/sec/android/app/calculator/Persist;->history:Lcom/sec/android/app/calculator/History;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_10
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_e

    if-eqz v2, :cond_3

    :try_start_7
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_3
    :goto_3
    if-eqz v4, :cond_8

    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    move-object v1, v2

    move-object v3, v4

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    move-object v3, v4

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_5
    move-exception v0

    :goto_4
    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v1, :cond_4

    :try_start_a
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    :cond_4
    :goto_5
    if-eqz v3, :cond_1

    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_2

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_8
    move-exception v0

    :goto_6
    :try_start_c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v1, :cond_5

    :try_start_d
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    :cond_5
    :goto_7
    if-eqz v3, :cond_1

    :try_start_e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    goto :goto_2

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catchall_0
    move-exception v6

    :goto_8
    if-eqz v1, :cond_6

    :try_start_f
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    :cond_6
    :goto_9
    if-eqz v3, :cond_7

    :try_start_10
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    :cond_7
    :goto_a
    throw v6

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :catchall_1
    move-exception v6

    move-object v3, v4

    goto :goto_8

    :catchall_2
    move-exception v6

    move-object v1, v2

    move-object v3, v4

    goto :goto_8

    :catch_d
    move-exception v0

    move-object v3, v4

    goto :goto_6

    :catch_e
    move-exception v0

    move-object v1, v2

    move-object v3, v4

    goto :goto_6

    :catch_f
    move-exception v0

    move-object v3, v4

    goto :goto_4

    :catch_10
    move-exception v0

    move-object v1, v2

    move-object v3, v4

    goto :goto_4

    :catch_11
    move-exception v0

    goto/16 :goto_0

    :catch_12
    move-exception v0

    move-object v3, v4

    goto/16 :goto_0

    :cond_8
    move-object v1, v2

    move-object v3, v4

    goto/16 :goto_2
.end method


# virtual methods
.method save()V
    .locals 8

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    iget-object v5, p0, Lcom/sec/android/app/calculator/Persist;->mContext:Landroid/content/Context;

    const-string v6, "calculator.data"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    const/16 v6, 0x2000

    invoke-direct {v2, v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v5, 0x1

    :try_start_2
    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v5, p0, Lcom/sec/android/app/calculator/Persist;->history:Lcom/sec/android/app/calculator/History;

    invoke-virtual {v5, v4}, Lcom/sec/android/app/calculator/History;->write(Ljava/io/DataOutput;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-object v3, v4

    move-object v1, v2

    :goto_0
    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    :goto_2
    return-void

    :catch_0
    move-exception v0

    :goto_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v3, v4

    move-object v1, v2

    goto :goto_3
.end method
